using System.Text.RegularExpressions;

using SLua;

[CustomLuaClass]
public sealed class MsgFilter {

	private static Regex reg;

	public static void Init(string parten) {
		reg = new Regex (@"" + parten);
	}

	public static string Parse(string str) {
		return reg.Replace (str, "*");
	}

}
