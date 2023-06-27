//	Copyright (c) 2012 Calvin Rien
//        http://the.darktable.com
//
//	This software is provided 'as-is', without any express or implied warranty. In
//	no event will the authors be held liable for any damages arising from the use
//	of this software.
//
//	Permission is granted to anyone to use this software for any purpose,
//	including commercial applications, and to alter it and redistribute it freely,
//	subject to the following restrictions:
//
//	1. The origin of this software must not be misrepresented; you must not claim
//	that you wrote the original software. If you use this software in a product,
//	an acknowledgment in the product documentation would be appreciated but is not
//	required.
//
//	2. Altered source versions must be plainly marked as such, and must not be
//	misrepresented as being the original software.
//
//	3. This notice may not be removed or altered from any source distribution.
//
//  =============================================================================
//
//  derived from Gregorio Zanon's script
//  http://forum.unity3d.com/threads/119295-Writing-AudioListener.GetOutputData-to-wav-problem?p=806734&viewfull=1#post806734

using System;
using System.IO;
using UnityEngine;
using System.Collections.Generic;

public static class SaveWav {

	const int HEADER_SIZE = 44;

	public static byte[] ToWavBytes(AudioClip clip) {
		var stream = CreateEmpty();
        ConvertAndWrite(stream, clip);
        WriteHeader(stream, clip);
        var data =  stream.ToArray();
        stream.Close();
        return data;
	}

	public static AudioClip TrimSilence(AudioClip clip, float min) {
		var samples = new float[clip.samples];

		clip.GetData(samples, 0);

		return TrimSilence(new List<float>(samples), min, clip.channels, clip.frequency);
	}

	public static AudioClip TrimSilence(List<float> samples, float min, int channels, int hz) {
		return TrimSilence(samples, min, channels, hz, false, false);
	}

    public static AudioClip TrimSilence(List<float> samples, float min, int channels, int hz, bool _3D, bool stream) {
		int i;

		for (i = 0; i < samples.Count; i++) {
			if(Mathf.Abs(samples[i]) > min) {
				break;
			}
		}

        // 去除头部静音，保留一小段空白
        if(i > 4000){
            samples.RemoveRange(0, i - 4000);
        }

        if(samples.Count <= 0){
            return null;
        }

        for(i = samples.Count - 1; i > 0; i--) {
            if (Mathf.Abs(samples[i]) > min) {
                break;
            }
        }

        // 去除尾部静音，保留一小段空白
        i += 4000;
        if(i < samples.Count){
            samples.RemoveRange(i, samples.Count - i);
        }

        if(samples.Count <= 0){
            return null;
        }

		var clip = AudioClip.Create("TempClip", samples.Count, channels, hz, _3D, stream);
        
        // 放大音量
        for(i = samples.Count - 1; i > 0; i--){
            samples[i] = samples[i] * 2;
        }

		clip.SetData(samples.ToArray(), 0);

		return clip;
	}


	static MemoryStream CreateEmpty() {
		var stream = new MemoryStream();
	    byte emptyByte = new byte();

        // preparing the header
	    for(int i = 0; i < HEADER_SIZE; i++) {
	        stream.WriteByte(emptyByte);
	    }

		return stream;
	}

	static void ConvertAndWrite(MemoryStream stream, AudioClip clip) {

		var samples = new float[clip.samples];

		clip.GetData(samples, 0);

		Int16[] intData = new Int16[samples.Length];
		//converting in 2 float[] steps to Int16[], //then Int16[] to Byte[]

		Byte[] bytesData = new Byte[samples.Length * 2];
		//bytesData array is twice the size of
		//dataSource array because a float converted in Int16 is 2 bytes.

		int rescaleFactor = 32767; //to convert float to Int16

		for (int i = 0; i<samples.Length; i++) {
			intData[i] = (short) (samples[i] * rescaleFactor);
			var byteArr = BitConverter.GetBytes(intData[i]);
			byteArr.CopyTo(bytesData, i * 2);
		}

		stream.Write(bytesData, 0, bytesData.Length);
	}

	static void WriteHeader(MemoryStream stream, AudioClip clip) {
		var hz = clip.frequency;
		var channels = clip.channels;
		var samples = clip.samples;

		stream.Seek(0, SeekOrigin.Begin);

		Byte[] riff = System.Text.Encoding.UTF8.GetBytes("RIFF");
		stream.Write(riff, 0, 4);

		Byte[] chunkSize = BitConverter.GetBytes(stream.Length - 8);
		stream.Write(chunkSize, 0, 4);

		Byte[] wave = System.Text.Encoding.UTF8.GetBytes("WAVE");
		stream.Write(wave, 0, 4);

		Byte[] fmt = System.Text.Encoding.UTF8.GetBytes("fmt ");
		stream.Write(fmt, 0, 4);

		Byte[] subChunk1 = BitConverter.GetBytes(16);
		stream.Write(subChunk1, 0, 4);

		// UInt16 two = 2;
		UInt16 one = 1;

		Byte[] audioFormat = BitConverter.GetBytes(one);
		stream.Write(audioFormat, 0, 2);

		Byte[] numChannels = BitConverter.GetBytes(channels);
		stream.Write(numChannels, 0, 2);

		Byte[] sampleRate = BitConverter.GetBytes(hz);
		stream.Write(sampleRate, 0, 4);

		Byte[] byteRate = BitConverter.GetBytes(hz * channels * 2); // sampleRate * bytesPerSample*number of channels, here 44100*2*2
		stream.Write(byteRate, 0, 4);

		UInt16 blockAlign = (ushort) (channels * 2);
		stream.Write(BitConverter.GetBytes(blockAlign), 0, 2);

		UInt16 bps = 16;
		Byte[] bitsPerSample = BitConverter.GetBytes(bps);
		stream.Write(bitsPerSample, 0, 2);

		Byte[] datastring = System.Text.Encoding.UTF8.GetBytes("data");
		stream.Write(datastring, 0, 4);

		Byte[] subChunk2 = BitConverter.GetBytes(samples * channels * 2);
		stream.Write(subChunk2, 0, 4);
	}
}
