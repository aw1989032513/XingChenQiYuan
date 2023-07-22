DataSing = DataSing or {}

--基础数据
DataSing.data_rank_reward_length = 20
DataSing.data_rank_reward = {
	{min_rank = 1, max_rank = 1, title = "预选赛冠军", rank_type = 0, start_time = {{2019, 6, 30, 0, 0, 0}}, end_time = {{2019, 7, 7, 0, 1, 0}}, reward = {{23631,1},{23633,1},{22586,1},{20617,1},{29314,2},{22758,1}}},
	{min_rank = 2, max_rank = 2, title = "预选赛亚军", rank_type = 0, start_time = {{2019, 6, 30, 0, 0, 0}}, end_time = {{2019, 7, 7, 0, 1, 0}}, reward = {{23631,1},{23633,1},{22586,1},{29314,1},{22759,1}}},
	{min_rank = 3, max_rank = 3, title = "预选赛季军", rank_type = 0, start_time = {{2019, 6, 30, 0, 0, 0}}, end_time = {{2019, 7, 7, 0, 1, 0}}, reward = {{23631,1},{23633,1},{29314,1},{22760,1}}},
	{min_rank = 4, max_rank = 10, title = "预选赛4-10名", rank_type = 0, start_time = {{2019, 6, 30, 0, 0, 0}}, end_time = {{2019, 7, 7, 0, 1, 0}}, reward = {{23633,1},{22216,2},{20000,2},{22761,1}}},
	{min_rank = 11, max_rank = 20, title = "预选赛11-20名", rank_type = 0, start_time = {{2019, 6, 30, 0, 0, 0}}, end_time = {{2019, 7, 7, 0, 1, 0}}, reward = {{22216,1},{20000,1}}},
	{min_rank = 21, max_rank = 9999999, title = "预选赛参与奖", rank_type = 0, start_time = {{2019, 6, 30, 0, 0, 0}}, end_time = {{2019, 7, 7, 0, 1, 0}}, reward = {{20000,1}}},
	{min_rank = 1, max_rank = 1, title = "入围赛偶像榜冠军", rank_type = 1, start_time = {{2019, 7, 8, 0, 1, 5}}, end_time = {{2019, 7, 19, 23, 59, 0}}, reward = {{22774,1},{23634,1},{29594,1},{23151,1},{29314,3}}},
	{min_rank = 2, max_rank = 2, title = "入围赛偶像榜亚军", rank_type = 1, start_time = {{2019, 7, 8, 0, 1, 5}}, end_time = {{2019, 7, 19, 23, 59, 0}}, reward = {{22775,1},{23634,1},{29594,1},{23151,1},{29314,3}}},
	{min_rank = 3, max_rank = 3, title = "入围赛偶像榜季军", rank_type = 1, start_time = {{2019, 7, 8, 0, 1, 5}}, end_time = {{2019, 7, 19, 23, 59, 0}}, reward = {{22776,1},{23634,1},{29594,1},{29314,3},{22586,2}}},
	{min_rank = 4, max_rank = 10, title = "入围赛偶像榜4-10名", rank_type = 1, start_time = {{2019, 7, 8, 0, 1, 5}}, end_time = {{2019, 7, 19, 23, 59, 0}}, reward = {{22777,1},{23634,1},{29153,1},{22586,1}}},
	{min_rank = 11, max_rank = 20, title = "入围赛偶像榜11-20名", rank_type = 1, start_time = {{2019, 7, 8, 0, 1, 5}}, end_time = {{2019, 7, 19, 23, 59, 0}}, reward = {{23643,1},{29153,1},{22586,1}}},
	{min_rank = 21, max_rank = 50, title = "入围赛偶像榜21-50名", rank_type = 1, start_time = {{2019, 7, 8, 0, 1, 5}}, end_time = {{2019, 7, 19, 23, 59, 0}}, reward = {{23644,1},{29153,1},{29314,1}}},
	{min_rank = 51, max_rank = 9999999, title = "入围赛偶像榜参与奖", rank_type = 1, start_time = {{2019, 7, 8, 0, 1, 5}}, end_time = {{2019, 7, 19, 23, 59, 0}}, reward = {{29153,1}}},
	{min_rank = 1, max_rank = 1, title = "入围赛实力榜冠军", rank_type = 2, start_time = {{2019, 7, 8, 0, 1, 5}}, end_time = {{2019, 7, 19, 23, 59, 0}}, reward = {{22778,1},{23634,1},{29594,1},{23632,1},{29314,1}}},
	{min_rank = 2, max_rank = 2, title = "入围赛实力榜亚军", rank_type = 2, start_time = {{2019, 7, 8, 0, 1, 5}}, end_time = {{2019, 7, 19, 23, 59, 0}}, reward = {{22779,1},{23634,1},{29595,1},{23632,1},{29314,1}}},
	{min_rank = 3, max_rank = 3, title = "入围赛实力榜季军", rank_type = 2, start_time = {{2019, 7, 8, 0, 1, 5}}, end_time = {{2019, 7, 19, 23, 59, 0}}, reward = {{22780,1},{23634,1},{29596,1},{29314,1},{23632,2}}},
	{min_rank = 4, max_rank = 10, title = "入围赛实力榜4-10名", rank_type = 2, start_time = {{2019, 7, 8, 0, 1, 5}}, end_time = {{2019, 7, 19, 23, 59, 0}}, reward = {{22781,1},{23643,1},{29153,1},{29314,1}}},
	{min_rank = 11, max_rank = 20, title = "入围赛实力榜11-20名", rank_type = 2, start_time = {{2019, 7, 8, 0, 1, 5}}, end_time = {{2019, 7, 19, 23, 59, 0}}, reward = {{23643,1},{29153,1},{29314,1}}},
	{min_rank = 21, max_rank = 50, title = "入围赛实力榜21-50名", rank_type = 2, start_time = {{2019, 7, 8, 0, 1, 5}}, end_time = {{2019, 7, 19, 23, 59, 0}}, reward = {{23644,1},{29153,1},{29314,1}}},
	{min_rank = 51, max_rank = 9999999, title = "入围赛实力榜参与奖", rank_type = 2, start_time = {{2019, 7, 8, 0, 1, 5}}, end_time = {{2019, 7, 19, 23, 59, 0}}, reward = {{29153,1}}}
}
