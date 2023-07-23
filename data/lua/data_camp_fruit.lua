DataCampFruit = DataCampFruit or {}

--基础数据
DataCampFruit.data_fruit_base_length = 48
DataCampFruit.data_fruit_base = {
	[1] = {id = 1, item_id = 70181, product_id = 70172, num = 1, cd = 7200, help_exp_mode = 3210, help_exp_radio = 4000, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76670},
	[2] = {id = 2, item_id = 70182, product_id = 70173, num = 3, cd = 600, help_exp_mode = 3210, help_exp_radio = 800, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76671},
	[3] = {id = 3, item_id = 70183, product_id = 70174, num = 2, cd = 1800, help_exp_mode = 3210, help_exp_radio = 1600, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76672},
	[4] = {id = 4, item_id = 70184, product_id = 70175, num = 2, cd = 1800, help_exp_mode = 3210, help_exp_radio = 1600, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76673},
	[5] = {id = 5, item_id = 70185, product_id = 70176, num = 3, cd = 600, help_exp_mode = 3210, help_exp_radio = 800, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76674},
	[6] = {id = 6, item_id = 70186, product_id = 70177, num = 3, cd = 600, help_exp_mode = 3210, help_exp_radio = 800, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76675},
	[7] = {id = 7, item_id = 70187, product_id = 70178, num = 2, cd = 1800, help_exp_mode = 3210, help_exp_radio = 1600, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76676},
	[8] = {id = 8, item_id = 70188, product_id = 70179, num = 3, cd = 600, help_exp_mode = 3210, help_exp_radio = 800, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76677},
	[11] = {id = 11, item_id = 70181, product_id = 70172, num = 1, cd = 7200, help_exp_mode = 3210, help_exp_radio = 4000, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76670},
	[12] = {id = 12, item_id = 70182, product_id = 70173, num = 3, cd = 600, help_exp_mode = 3210, help_exp_radio = 800, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76671},
	[13] = {id = 13, item_id = 70183, product_id = 70174, num = 2, cd = 1800, help_exp_mode = 3210, help_exp_radio = 1600, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76672},
	[14] = {id = 14, item_id = 70184, product_id = 70175, num = 2, cd = 1800, help_exp_mode = 3210, help_exp_radio = 1600, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76673},
	[15] = {id = 15, item_id = 70185, product_id = 70176, num = 3, cd = 600, help_exp_mode = 3210, help_exp_radio = 800, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76674},
	[16] = {id = 16, item_id = 70186, product_id = 70177, num = 3, cd = 600, help_exp_mode = 3210, help_exp_radio = 800, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76675},
	[17] = {id = 17, item_id = 70187, product_id = 70178, num = 2, cd = 1800, help_exp_mode = 3210, help_exp_radio = 1600, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76676},
	[18] = {id = 18, item_id = 70188, product_id = 70179, num = 3, cd = 600, help_exp_mode = 3210, help_exp_radio = 800, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76677},
	[21] = {id = 21, item_id = 70181, product_id = 70172, num = 1, cd = 7200, help_exp_mode = 3210, help_exp_radio = 4000, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76670},
	[22] = {id = 22, item_id = 70182, product_id = 70173, num = 3, cd = 600, help_exp_mode = 3210, help_exp_radio = 800, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76671},
	[23] = {id = 23, item_id = 70183, product_id = 70174, num = 2, cd = 1800, help_exp_mode = 3210, help_exp_radio = 1600, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76672},
	[24] = {id = 24, item_id = 70184, product_id = 70175, num = 2, cd = 1800, help_exp_mode = 3210, help_exp_radio = 1600, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76673},
	[25] = {id = 25, item_id = 70185, product_id = 70176, num = 3, cd = 600, help_exp_mode = 3210, help_exp_radio = 800, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76674},
	[26] = {id = 26, item_id = 70186, product_id = 70177, num = 3, cd = 600, help_exp_mode = 3210, help_exp_radio = 800, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76675},
	[27] = {id = 27, item_id = 70187, product_id = 70178, num = 2, cd = 1800, help_exp_mode = 3210, help_exp_radio = 1600, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76676},
	[28] = {id = 28, item_id = 70188, product_id = 70179, num = 3, cd = 600, help_exp_mode = 3210, help_exp_radio = 800, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76677},
	[31] = {id = 31, item_id = 70181, product_id = 70172, num = 1, cd = 7200, help_exp_mode = 3210, help_exp_radio = 4000, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76670},
	[32] = {id = 32, item_id = 70182, product_id = 70173, num = 3, cd = 600, help_exp_mode = 3210, help_exp_radio = 800, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76671},
	[33] = {id = 33, item_id = 70183, product_id = 70174, num = 2, cd = 1800, help_exp_mode = 3210, help_exp_radio = 1600, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76672},
	[34] = {id = 34, item_id = 70184, product_id = 70175, num = 2, cd = 1800, help_exp_mode = 3210, help_exp_radio = 1600, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76673},
	[35] = {id = 35, item_id = 70185, product_id = 70176, num = 3, cd = 600, help_exp_mode = 3210, help_exp_radio = 800, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76674},
	[36] = {id = 36, item_id = 70186, product_id = 70177, num = 3, cd = 600, help_exp_mode = 3210, help_exp_radio = 800, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76675},
	[37] = {id = 37, item_id = 70187, product_id = 70178, num = 2, cd = 1800, help_exp_mode = 3210, help_exp_radio = 1600, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76676},
	[38] = {id = 38, item_id = 70188, product_id = 70179, num = 3, cd = 600, help_exp_mode = 3210, help_exp_radio = 800, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76677},
	[41] = {id = 41, item_id = 70181, product_id = 70172, num = 1, cd = 7200, help_exp_mode = 3210, help_exp_radio = 4000, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76670},
	[42] = {id = 42, item_id = 70182, product_id = 70173, num = 3, cd = 600, help_exp_mode = 3210, help_exp_radio = 800, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76671},
	[43] = {id = 43, item_id = 70183, product_id = 70174, num = 2, cd = 1800, help_exp_mode = 3210, help_exp_radio = 1600, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76672},
	[44] = {id = 44, item_id = 70184, product_id = 70175, num = 2, cd = 1800, help_exp_mode = 3210, help_exp_radio = 1600, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76673},
	[45] = {id = 45, item_id = 70185, product_id = 70176, num = 3, cd = 600, help_exp_mode = 3210, help_exp_radio = 750, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76674},
	[46] = {id = 46, item_id = 70186, product_id = 70177, num = 3, cd = 600, help_exp_mode = 3210, help_exp_radio = 800, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76675},
	[47] = {id = 47, item_id = 70187, product_id = 70178, num = 2, cd = 1800, help_exp_mode = 3210, help_exp_radio = 1600, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76676},
	[48] = {id = 48, item_id = 70188, product_id = 70179, num = 3, cd = 600, help_exp_mode = 3210, help_exp_radio = 800, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76677},
	[51] = {id = 51, item_id = 70181, product_id = 70172, num = 1, cd = 7200, help_exp_mode = 3210, help_exp_radio = 4000, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76670},
	[52] = {id = 52, item_id = 70182, product_id = 70173, num = 3, cd = 600, help_exp_mode = 3210, help_exp_radio = 800, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76671},
	[53] = {id = 53, item_id = 70183, product_id = 70174, num = 2, cd = 1800, help_exp_mode = 3210, help_exp_radio = 1600, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76672},
	[54] = {id = 54, item_id = 70184, product_id = 70175, num = 2, cd = 1800, help_exp_mode = 3210, help_exp_radio = 1600, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76673},
	[55] = {id = 55, item_id = 70185, product_id = 70176, num = 3, cd = 600, help_exp_mode = 3210, help_exp_radio = 800, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76674},
	[56] = {id = 56, item_id = 70186, product_id = 70177, num = 3, cd = 600, help_exp_mode = 3210, help_exp_radio = 800, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76675},
	[57] = {id = 57, item_id = 70187, product_id = 70178, num = 2, cd = 1800, help_exp_mode = 3210, help_exp_radio = 1600, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76676},
	[58] = {id = 58, item_id = 70188, product_id = 70179, num = 3, cd = 600, help_exp_mode = 3210, help_exp_radio = 800, plant_exp_mode = 3210, plant_model_id = 76669, finish_model_id = 76677}
}
