local _, ns = ...
local _, C = unpack(ns)

-- 法术白名单
C.WhiteList = {
	-- Buffs
	[642]    = true,	-- 圣盾术
	[1022]   = true,	-- 保护之手
	[23920]  = true,	-- 法术反射
	[45438]  = true,	-- 寒冰屏障
	[186265] = true,	-- 灵龟守护
	-- Debuffs
	[2094]   = true,	-- 致盲
	[10326]  = true,	-- 超度邪恶
	[20549]  = true,	-- 战争践踏
	[107079] = true,	-- 震山掌
	[117405] = true,	-- 束缚射击
	[127797] = true,	-- 乌索尔旋风
	[272295] = true,	-- 悬赏
	-- Mythic+
	[228318] = true,	-- 激怒
	[226510] = true,	-- 血池
	[343553] = true,	-- 万噬之怨
	[343502] = true,	-- 鼓舞光环
	-- Dungeons
	[113315] = true,	-- 青龙寺，强烈
	[113309] = true,	-- 青龙寺，至高能量
	[384148] = true,	-- 诱捕陷阱，蕨皮
	[200672] = true,	-- 水晶迸裂，巢穴
	[377724] = true,	-- 小怪易伤，提尔
	[413027] = true,	-- 泰坦之壁，永恒黎明
	[258653] = true,	-- 魂能壁垒，阿塔达萨
	[255960] = true,	-- 强效巫毒，阿塔达萨
	[255967] = true,	-- 强效巫毒，阿塔达萨
	[255968] = true,	-- 强效巫毒，阿塔达萨
	[255970] = true,	-- 强效巫毒，阿塔达萨
	[255972] = true,	-- 强效巫毒，阿塔达萨
	[260805] = true,	-- 聚焦之虹，庄园
	[264027] = true,	-- 结界蜡烛，庄园
	[372824] = true,	-- 燃烧锁链，奈萨鲁斯
	-- TWW S1
	[343558] = true,	-- 通灵战潮，病态凝视
	[343470] = true,	-- 通灵战潮，碎骨之盾
	[328351] = true,	-- 通灵战潮，染血长枪
	[323149] = true,	-- 仙林，黑暗之拥
	[322569] = true,	-- 仙林，兹洛斯之手
}

-- 法术黑名单
C.BlackList = {
	[15407]  = true,	-- 精神鞭笞
	[51714]  = true,	-- 锋锐之霜
	[199721] = true,	-- 腐烂光环
	[214968] = true,	-- 死灵光环
	[214975] = true,	-- 抑心光环
	[273977] = true,	-- 亡者之握
	[276919] = true,	-- 承受压力
	[206930] = true,	-- 心脏打击
}

-- 特殊单位的染色列表
C.CustomUnits = {
	-- Nzoth vision
	[153401] = true, 	-- 克熙尔支配者
	[157610] = true, 	-- 克熙尔支配者
	[156795] = true, 	-- 军情七处线人
	-- Dungeons
	[120651] = true, 	-- 大米，爆炸物
	[204560] = true, 	-- 大米，虚体生物
	[104251] = true, 	-- 群星庭院，哨兵
	[196548] = true,	-- 古树树枝，学院
	[52019] = true,		-- 坠天新星，旋云之巅
	[137103] = true,	-- 血面兽，地渊
	[92538] = true,		-- 喷油蛆虫，巢穴
	[190426] = true,	-- 腐朽图腾，蕨皮
	[190381] = true,	-- 腐爆图腾，蕨皮
	[186696] = true,	-- 撼地图腾，提尔
	[84400] = true,		-- 繁盛古树，永茂林地
	[199368] = true,	-- 硬化的水晶，碧蓝魔馆
	-- Condemned Demon
	[169430] = true,
	[169428] = true,
	[168932] = true,
	[169425] = true,
	[169429] = true,
	[169421] = true,
	[169426] = true,
	-- TWW S1
	[165251] = true,	-- 幻影仙狐，仙林
}

-- 显示能量值的单位
C.PowerUnits = {
	[56792] = true,		-- 青龙寺，怀疑臆象
	[171557] = true,	-- 猎手阿尔迪莫，巴加斯特之影
	[165556] = true,	-- 赤红深渊，瞬息具象
	[163746] = true,	-- 垃圾场，步行震击者X1型
	[114247] = true,	-- 卡上，馆长
}

-- 显示姓名板单位的目标
C.ShowTargetNPCs = {
	[165251] = true,	-- 仙林狐狸
	[174773] = true,	-- 怨毒怪
}

-- 无效目标
C.TrashUnits = {
	[174773] = true, 	-- 大米，怨毒影魔
	[190174] = true,	-- 催眠蝙蝠，S4
	[166589] = true,	-- 活化武器，赤红
	[169753] = true,	-- 饥饿的虱子，赤红
	[175677] = true,	-- 走私来的生物，集市
	[190407] = true,	-- 水波暴怒者，注能大厅
}

-- 重要读条高亮
C.MajorSpells = {
	[156718] = true,	-- 骨疽爆裂，影月墓地
	[156776] = true,	-- 虚空撕裂，影月墓地
	[398150] = true,	-- 统御，影月墓地
	[398206] = true,	-- 死亡冲击，影月墓地
	[152964] = true,	-- 虚空脉冲，影月墓地
	[198595] = true,	-- 雷霆飞弹，英灵殿
	[396812] = true,	-- 秘法冲击，学院
	[397889] = true,	-- 海潮爆发，青龙寺
	[395859] = true,	-- 游荡尖啸，青龙寺
	[397878] = true,	-- 魔化涟漪，青龙寺
	[392451] = true,	-- 闪火，红玉
	[392452] = true,	-- 闪火，红玉
	[385536] = true,	-- 烈焰之舞，红玉
	[372087] = true,	-- 炽焰冲刺，红玉
	[372735] = true,	-- 大地裂击，红玉
	[388283] = true,	-- 喷发，阻击战
	[387440] = true,	-- 亵渎咆哮，阻击战
	[386012] = true,	-- 风暴之箭，阻击战
	[374720] = true,	-- 吞噬践踏，碧蓝
	[372222] = true,	-- 奥术顺劈，碧蓝
	[386546] = true,	-- 清醒的克星，碧蓝
	[387564] = true,	-- 秘法蒸汽，碧蓝
	-- S2
	[88186] = true,		-- 雾气形态，旋云之巅
	[87779] = true,		-- 强效治疗术，旋云之巅
	[87761] = true,		-- 鼓舞，旋云之巅
	[87762] = true,		-- 闪电鞭笞，旋云之巅
	[87618] = true,		-- 静电缠握，旋云之巅
	[413385] = true,	-- 过载接地场，旋云之巅
	[411001] = true,	-- 致命电流，旋云之巅
	[410870] = true,	-- 旋风，旋云之巅
	[411012] = true,	-- 寒冷吐息，旋云之巅
	[388424] = true,	-- 风暴狂怒，注能大厅
	[391634] = true,	-- 极寒冰冻，注能大厅
	[377341] = true,	-- 浪潮分裂，注能大厅
	[374699] = true,	-- 灸灼，注能大厅
	[376171] = true,	-- 舒心海潮，注能大厅
	[374563] = true,	-- 眩晕，注能大厅
	[388886] = true,	-- 紊流，注能大厅
	[374339] = true,	-- 挫志怒吼，注能大厅
	[374045] = true,	-- 驱逐，注能大厅
	[376171] = true,	-- 舒心海潮，注能大厅
	[265091] = true,	-- 戈霍恩之赐，地渊
	[369811] = true,	-- 残暴猛击，奥达曼
	[369675] = true,	-- 闪电链，奥达曼
	[369573] = true,	-- 沉重之箭，奥达曼
	[369411] = true,	-- 音速爆裂，奥达曼
	[369409] = true,	-- 顺劈斩，奥达曼
	[369465] = true,	-- 石雹，奥达曼
	[369466] = true,	-- 石雹，奥达曼
	[369563] = true,	-- 狂野顺劈，奥达曼
	[226296] = true,	-- 穿刺碎片，巢穴
	[202075] = true,	-- 灼烧，巢穴
	[193585] = true,	-- 束缚，巢穴
	[257397] = true,	-- 治疗药膏，自由镇
	[257426] = true,	-- 反手猛击，自由镇
	[257732] = true,	-- 震耳咆哮，自由镇
	[258777] = true,	-- 海流喷射，自由镇
	[257784] = true,	-- 冰霜冲击，自由镇
	[257736] = true,	-- 风啸雷鸣，自由镇
	[257737] = true,	-- 风啸雷鸣，自由镇
	[257899] = true,	-- 痛苦的激励，自由镇
	[265019] = true,	-- 顺劈斩，地渊
	[278961] = true,	-- 衰落意志，地渊
	[260894] = true,	-- 蔓延腐化，地渊
	[265540] = true,	-- 腐化胆汁，地渊
	[265542] = true,	-- 腐化胆汁，地渊
	[265089] = true,	-- 黑暗复苏，地渊
	[278755] = true,	-- 哀嚎绝望，地渊
	[266106] = true,	-- 音速尖啸，地渊
	[272609] = true,	-- 疯狂凝视，地渊
	[265433] = true,	-- 枯萎诅咒，地渊
	[382410] = true,	-- 枯萎之箭，蕨皮
	[367500] = true,	-- 狰狞蔑笑，蕨皮
	[382555] = true,	-- 狂怒风暴，蕨皮
	[382556] = true,	-- 狂怒风暴，蕨皮
	[377950] = true,	-- 强效治疗湍流，蕨皮
	[381470] = true,	-- 妖诡图腾，蕨皮
	[381694] = true,	-- 腐朽感官，蕨皮
	[388060] = true,	-- 恶臭吐息，蕨皮
	[383385] = true,	-- 腐烂激涌，蕨皮
	[383385] = true,	-- 腐爆图腾，蕨皮
	[382172] = true,	-- 死疽吐息，蕨皮
	[384899] = true,	-- 骨箭雨，蕨皮
	[378282] = true,	-- 熔火之心，奈萨鲁斯
	[383651] = true,	-- 熔火军团，奈萨鲁斯
	[375439] = true,	-- 炽然冲锋，奈萨鲁斯
	[395427] = true,	-- 燃烧咆哮，奈萨鲁斯
	[376186] = true,	-- 迸发挤压，奈萨鲁斯
	[372223] = true,	-- 愈合泥土，奈萨鲁斯
	[373424] = true,	-- 束地之矛，奈萨鲁斯
	[376780] = true,	-- 岩浆护盾，奈萨鲁斯
	-- S3
	[411994] = true,	-- 时光融蚀，永恒黎明
	[418200] = true,	-- 永恒燃烧，永恒黎明
	[411300] = true,	-- 咸鱼箭雨，永恒黎明
	[413607] = true,	-- 侵蚀齐射，永恒黎明
	[417011] = true,	-- 圣光术，永恒黎明
	[169179] = true,	-- 巨灵猛击，永茂林地
	-- TWW S1
	[76711] = true,		-- 灼烧心智，格瑞姆巴托
	[451871] = true,	-- 剧烈震颤，格瑞姆巴托
	[256957] = true,	-- 防水甲壳，围攻伯拉勒斯
	[275826] = true,	-- 强化怒吼，围攻伯拉勒斯
	[322938] = true,	-- 收割精魂，塞茲仙林的迷雾
	[324776] = true,	-- 木棘外壳，塞茲仙林的迷雾
	[326046] = true,	-- 模拟抗性，塞茲仙林的迷雾
	[340544] = true,	-- 再生鼓舞，塞茲仙林的迷雾
	[321828] = true,	-- 肉饼蛋糕，塞茲仙林的迷雾
	[340160] = true,	-- 辐光之息，塞茲仙林的迷雾
	[324293] = true,	-- 刺耳尖啸，通灵战潮
	[338357] = true,	-- 暴捶，通灵战潮
	[320596] = true,	-- 深重呕吐，通灵战潮
	[327130] = true,	-- 修复血肉，通灵战潮
	[328667] = true,	-- 寒冰箭雨，通灵战潮
	[334749] = true,	-- 排干体液，通灵战潮
	[335143] = true,	-- 接骨，通灵战潮
	[338353] = true,	-- 瘀液喷撒，通灵战潮
	[433841] = true,	-- 毒液箭雨，回响之城
	[434793] = true,	-- 共振弹幕，回响之城
	[434802] = true,	-- 惊惧尖鸣，回响之城
	[448248] = true,	-- 恶臭齐射，回响之城
	[443430] = true,	-- 流丝缠缚，千丝之城
	[446086] = true,	-- 虚空之波，千丝之城
	[452162] = true,	-- 愈合之网，千丝之城
	[432520] = true,	-- 暗影屏障，破晨号
	[450756] = true,	-- 深渊嗥叫，破晨号
	[451097] = true,	-- 流丝护壳，破晨号
	[429109] = true,	-- 愈合金属，矶石宝库
	[429545] = true,	-- 噤声齿轮，矶石宝库
	[445207] = true,	-- 穿透哀嚎，矶石宝库
	[449455] = true,	-- 咆哮恐惧，矶石宝库
}