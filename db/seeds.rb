# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# 2.1.1 :001 > Tag.all.map(&:attributes).map(&:symbolize_keys).map{|t| t.slice(:name)}
# D, [2014-04-17T17:59:12.759199 #56712] DEBUG -- :   Tag Load (7.1ms)  SELECT "tags".* FROM "tags"
#  => [{:name=>"burger"}, {:name=>"bacon"}, {:name=>"collectible"}, {:name=>"computer"}]
#
# 2.1.1 :001 > TaggedItem.all.map(&:attributes).map(&:symbolize_keys).map{|t| t.slice(:item_id, :tag_id)}
# D, [2014-04-17T18:03:26.481058 #56815] DEBUG -- :   TaggedItem Load (1.7ms)  SELECT "tagged_items".* FROM "tagged_items"
#  => [{:item_id=>1, :tag_id=>615779610}, {:item_id=>1, :tag_id=>803428880}, {:item_id=>1, :tag_id=>488609646}, {:item_id=>2, :tag_id=>580429736}, {:item_id=>2, :tag_id=>488609646}]

Tag.create!([
  {:id=>1,:name=>"burger"},
  {:id=>2,:name=>"bacon"},
  {:id=>3,:name=>"collectible"},
  {:id=>4,:name=>"spicy"},
  {:id=>5,:name=>"hot"},
  {:id=>6,:name=>"bland"},
  {:id=>7,:name=>"sizzling"},
  {:id=>8,:name=>"indian"},
  {:id=>9,:name=>"nouvelle_cuisine"},
  {:id=>10,:name=>"southern"},
  {:id=>11,:name=>"cajun"},
  {:id=>12,:name=>"french"},
  {:id=>13,:name=>"german"},
  {:id=>14,:name=>"tomato"},
  {:id=>15,:name=>"potato"},
  {:id=>16,:name=>"onion"},
  {:id=>17,:name=>"peas"},
  {:id=>18,:name=>"butter"},
  {:id=>19,:name=>"light"},
  {:id=>20,:name=>"rich"},
  {:id=>21,:name=>"expensive"},
  {:id=>22,:name=>"cheap"},
  {:id=>23,:name=>"horrible"},
  {:id=>24,:name=>"aweful"},
  {:id=>25,:name=>"stunning"},
  {:id=>26,:name=>"tasty"},
  {:id=>27,:name=>"sticky"},
  {:id=>28,:name=>"sweet"},
  {:id=>29,:name=>"sour"},
  {:id=>30,:name=>"bitter"},
  {:id=>31,:name=>"curry"},
  {:id=>32,:name=>"apple"},
  {:id=>33,:name=>"meat"},
  {:id=>34,:name=>"vegetarian"},
  {:id=>35,:name=>"gluten_free"}
])

TaggedItem.create!([
  {:item_id=>57, :tag_id=>1},
  {:item_id=>1102, :tag_id=>2},
  {:item_id=>936, :tag_id=>3},
  {:item_id=>355, :tag_id=>4},
  {:item_id=>1128, :tag_id=>5},
  {:item_id=>1300, :tag_id=>6},
  {:item_id=>710, :tag_id=>7},
  {:item_id=>836, :tag_id=>8},
  {:item_id=>862, :tag_id=>9},
  {:item_id=>1397, :tag_id=>10},
  {:item_id=>631, :tag_id=>11},
  {:item_id=>519, :tag_id=>12},
  {:item_id=>431, :tag_id=>13},
  {:item_id=>423, :tag_id=>14},
  {:item_id=>86, :tag_id=>15},
  {:item_id=>1068, :tag_id=>16},
  {:item_id=>31, :tag_id=>17},
  {:item_id=>237, :tag_id=>18},
  {:item_id=>1164, :tag_id=>19},
  {:item_id=>2, :tag_id=>20},
  {:item_id=>577, :tag_id=>21},
  {:item_id=>1357, :tag_id=>22},
  {:item_id=>737, :tag_id=>23},
  {:item_id=>391, :tag_id=>24},
  {:item_id=>1461, :tag_id=>25},
  {:item_id=>283, :tag_id=>26},
  {:item_id=>587, :tag_id=>27},
  {:item_id=>621, :tag_id=>28},
  {:item_id=>1076, :tag_id=>29},
  {:item_id=>1151, :tag_id=>30},
  {:item_id=>409, :tag_id=>31},
  {:item_id=>1505, :tag_id=>32},
  {:item_id=>291, :tag_id=>33},
  {:item_id=>1506, :tag_id=>34},
  {:item_id=>1399, :tag_id=>35},
  {:item_id=>1282, :tag_id=>1},
  {:item_id=>1063, :tag_id=>2},
  {:item_id=>1309, :tag_id=>3},
  {:item_id=>165, :tag_id=>4},
  {:item_id=>483, :tag_id=>5},
  {:item_id=>1085, :tag_id=>6},
  {:item_id=>464, :tag_id=>7},
  {:item_id=>987, :tag_id=>8},
  {:item_id=>1132, :tag_id=>9},
  {:item_id=>1430, :tag_id=>10},
  {:item_id=>767, :tag_id=>11},
  {:item_id=>749, :tag_id=>12},
  {:item_id=>954, :tag_id=>13},
  {:item_id=>221, :tag_id=>14},
  {:item_id=>560, :tag_id=>15},
  {:item_id=>1149, :tag_id=>16},
  {:item_id=>1267, :tag_id=>17},
  {:item_id=>468, :tag_id=>18},
  {:item_id=>1501, :tag_id=>19},
  {:item_id=>1285, :tag_id=>20},
  {:item_id=>1491, :tag_id=>21},
  {:item_id=>1030, :tag_id=>22},
  {:item_id=>1268, :tag_id=>23},
  {:item_id=>697, :tag_id=>24},
  {:item_id=>674, :tag_id=>25},
  {:item_id=>1452, :tag_id=>26},
  {:item_id=>182, :tag_id=>27},
  {:item_id=>925, :tag_id=>28},
  {:item_id=>854, :tag_id=>29},
  {:item_id=>1341, :tag_id=>30},
  {:item_id=>309, :tag_id=>31},
  {:item_id=>523, :tag_id=>32},
  {:item_id=>1175, :tag_id=>33},
  {:item_id=>355, :tag_id=>34},
  {:item_id=>780, :tag_id=>35},
  {:item_id=>956, :tag_id=>1},
  {:item_id=>392, :tag_id=>2},
  {:item_id=>347, :tag_id=>3},
  {:item_id=>335, :tag_id=>4},
  {:item_id=>1332, :tag_id=>5},
  {:item_id=>1062, :tag_id=>6},
  {:item_id=>560, :tag_id=>7},
  {:item_id=>851, :tag_id=>8},
  {:item_id=>1443, :tag_id=>9},
  {:item_id=>233, :tag_id=>10},
  {:item_id=>1212, :tag_id=>11},
  {:item_id=>1214, :tag_id=>12},
  {:item_id=>1467, :tag_id=>13},
  {:item_id=>417, :tag_id=>14},
  {:item_id=>536, :tag_id=>15},
  {:item_id=>283, :tag_id=>16},
  {:item_id=>1016, :tag_id=>17},
  {:item_id=>1311, :tag_id=>18},
  {:item_id=>285, :tag_id=>19},
  {:item_id=>889, :tag_id=>20},
  {:item_id=>252, :tag_id=>21},
  {:item_id=>807, :tag_id=>22},
  {:item_id=>1192, :tag_id=>23},
  {:item_id=>1472, :tag_id=>24},
  {:item_id=>1282, :tag_id=>25},
  {:item_id=>1060, :tag_id=>26},
  {:item_id=>883, :tag_id=>27},
  {:item_id=>1063, :tag_id=>28},
  {:item_id=>111, :tag_id=>29},
  {:item_id=>1283, :tag_id=>30},
  {:item_id=>477, :tag_id=>31},
  {:item_id=>873, :tag_id=>32},
  {:item_id=>742, :tag_id=>33},
  {:item_id=>836, :tag_id=>34},
  {:item_id=>382, :tag_id=>35},
  {:item_id=>256, :tag_id=>1},
  {:item_id=>1031, :tag_id=>2},
  {:item_id=>407, :tag_id=>3},
  {:item_id=>421, :tag_id=>4},
  {:item_id=>350, :tag_id=>5},
  {:item_id=>526, :tag_id=>6},
  {:item_id=>1108, :tag_id=>7},
  {:item_id=>573, :tag_id=>8},
  {:item_id=>1345, :tag_id=>9},
  {:item_id=>972, :tag_id=>10},
  {:item_id=>780, :tag_id=>11},
  {:item_id=>904, :tag_id=>12},
  {:item_id=>1036, :tag_id=>13},
  {:item_id=>447, :tag_id=>14},
  {:item_id=>513, :tag_id=>15},
  {:item_id=>7, :tag_id=>16},
  {:item_id=>656, :tag_id=>17},
  {:item_id=>1051, :tag_id=>18},
  {:item_id=>277, :tag_id=>19},
  {:item_id=>1413, :tag_id=>20},
  {:item_id=>544, :tag_id=>21},
  {:item_id=>1, :tag_id=>22},
  {:item_id=>923, :tag_id=>23},
  {:item_id=>383, :tag_id=>24},
  {:item_id=>1198, :tag_id=>25},
  {:item_id=>439, :tag_id=>26},
  {:item_id=>1398, :tag_id=>27},
  {:item_id=>1084, :tag_id=>28},
  {:item_id=>928, :tag_id=>29},
  {:item_id=>1118, :tag_id=>30},
  {:item_id=>98, :tag_id=>31},
  {:item_id=>1316, :tag_id=>32},
  {:item_id=>1240, :tag_id=>33},
  {:item_id=>23, :tag_id=>34},
  {:item_id=>447, :tag_id=>35},
  {:item_id=>1501, :tag_id=>1},
  {:item_id=>408, :tag_id=>2},
  {:item_id=>410, :tag_id=>3},
  {:item_id=>962, :tag_id=>5},
  {:item_id=>1076, :tag_id=>6},
  {:item_id=>512, :tag_id=>7},
  {:item_id=>1428, :tag_id=>8},
  {:item_id=>199, :tag_id=>9},
  {:item_id=>1167, :tag_id=>10},
  {:item_id=>1384, :tag_id=>11},
  {:item_id=>85, :tag_id=>12},
  {:item_id=>1011, :tag_id=>13},
  {:item_id=>913, :tag_id=>14},
  {:item_id=>748, :tag_id=>15},
  {:item_id=>1321, :tag_id=>16},
  {:item_id=>1062, :tag_id=>17},
  {:item_id=>754, :tag_id=>18},
  {:item_id=>414, :tag_id=>19},
  {:item_id=>439, :tag_id=>20},
  {:item_id=>1070, :tag_id=>21},
  {:item_id=>802, :tag_id=>22},
  {:item_id=>539, :tag_id=>23},
  {:item_id=>1303, :tag_id=>24},
  {:item_id=>38, :tag_id=>25},
  {:item_id=>58, :tag_id=>26},
  {:item_id=>292, :tag_id=>27},
  {:item_id=>1236, :tag_id=>28},
  {:item_id=>1436, :tag_id=>29},
  {:item_id=>1421, :tag_id=>30},
  {:item_id=>1216, :tag_id=>31},
  {:item_id=>1405, :tag_id=>32},
  {:item_id=>1370, :tag_id=>33},
  {:item_id=>33, :tag_id=>34},
  {:item_id=>1054, :tag_id=>35},
  {:item_id=>754, :tag_id=>1},
  {:item_id=>540, :tag_id=>2},
  {:item_id=>298, :tag_id=>3},
  {:item_id=>205, :tag_id=>4},
  {:item_id=>64, :tag_id=>5},
  {:item_id=>1126, :tag_id=>6},
  {:item_id=>1274, :tag_id=>7},
  {:item_id=>1292, :tag_id=>8},
  {:item_id=>632, :tag_id=>9},
  {:item_id=>1468, :tag_id=>10},
  {:item_id=>976, :tag_id=>11},
  {:item_id=>954, :tag_id=>12},
  {:item_id=>550, :tag_id=>13},
  {:item_id=>899, :tag_id=>14},
  {:item_id=>541, :tag_id=>15},
  {:item_id=>143, :tag_id=>16},
  {:item_id=>258, :tag_id=>17},
  {:item_id=>1091, :tag_id=>18},
  {:item_id=>920, :tag_id=>19},
  {:item_id=>813, :tag_id=>20},
  {:item_id=>512, :tag_id=>21},
  {:item_id=>688, :tag_id=>22},
  {:item_id=>960, :tag_id=>23},
  {:item_id=>342, :tag_id=>24},
  {:item_id=>17, :tag_id=>25},
  {:item_id=>1250, :tag_id=>26},
  {:item_id=>1039, :tag_id=>27},
  {:item_id=>1018, :tag_id=>28},
  {:item_id=>1201, :tag_id=>29},
  {:item_id=>1137, :tag_id=>30},
  {:item_id=>1114, :tag_id=>31},
  {:item_id=>1202, :tag_id=>32},
  {:item_id=>859, :tag_id=>33},
  {:item_id=>1298, :tag_id=>34},
  {:item_id=>1233, :tag_id=>35},
  {:item_id=>308, :tag_id=>1},
  {:item_id=>430, :tag_id=>2},
  {:item_id=>668, :tag_id=>3},
  {:item_id=>860, :tag_id=>4},
  {:item_id=>1165, :tag_id=>5},
  {:item_id=>1488, :tag_id=>6},
  {:item_id=>1063, :tag_id=>7},
  {:item_id=>298, :tag_id=>8},
  {:item_id=>1367, :tag_id=>9},
  {:item_id=>470, :tag_id=>10},
  {:item_id=>1035, :tag_id=>11},
  {:item_id=>1402, :tag_id=>12},
  {:item_id=>1502, :tag_id=>13},
  {:item_id=>566, :tag_id=>14},
  {:item_id=>115, :tag_id=>15},
  {:item_id=>1489, :tag_id=>16},
  {:item_id=>331, :tag_id=>17},
  {:item_id=>950, :tag_id=>18},
  {:item_id=>1477, :tag_id=>19},
  {:item_id=>958, :tag_id=>20},
  {:item_id=>184, :tag_id=>21},
  {:item_id=>94, :tag_id=>22},
  {:item_id=>250, :tag_id=>23},
  {:item_id=>251, :tag_id=>24},
  {:item_id=>1156, :tag_id=>26},
  {:item_id=>58, :tag_id=>27},
  {:item_id=>622, :tag_id=>28},
  {:item_id=>1297, :tag_id=>29},
  {:item_id=>967, :tag_id=>30},
  {:item_id=>1129, :tag_id=>31},
  {:item_id=>292, :tag_id=>32},
  {:item_id=>219, :tag_id=>33},
  {:item_id=>1416, :tag_id=>34},
  {:item_id=>494, :tag_id=>35},
  {:item_id=>1146, :tag_id=>1},
  {:item_id=>1361, :tag_id=>2},
  {:item_id=>336, :tag_id=>3},
  {:item_id=>439, :tag_id=>4},
  {:item_id=>1404, :tag_id=>5},
  {:item_id=>969, :tag_id=>6},
  {:item_id=>352, :tag_id=>7},
  {:item_id=>1386, :tag_id=>8},
  {:item_id=>651, :tag_id=>9},
  {:item_id=>490, :tag_id=>10},
  {:item_id=>620, :tag_id=>11},
  {:item_id=>947, :tag_id=>12},
  {:item_id=>294, :tag_id=>13},
  {:item_id=>826, :tag_id=>14},
  {:item_id=>1154, :tag_id=>15},
  {:item_id=>391, :tag_id=>16},
  {:item_id=>1035, :tag_id=>17},
  {:item_id=>498, :tag_id=>18},
  {:item_id=>1303, :tag_id=>19},
  {:item_id=>235, :tag_id=>20},
  {:item_id=>103, :tag_id=>21},
  {:item_id=>242, :tag_id=>22},
  {:item_id=>1004, :tag_id=>23},
  {:item_id=>329, :tag_id=>24},
  {:item_id=>125, :tag_id=>25},
  {:item_id=>907, :tag_id=>26},
  {:item_id=>583, :tag_id=>27},
  {:item_id=>1113, :tag_id=>28},
  {:item_id=>1266, :tag_id=>29},
  {:item_id=>1196, :tag_id=>30},
  {:item_id=>919, :tag_id=>31},
  {:item_id=>1179, :tag_id=>32},
  {:item_id=>1074, :tag_id=>33},
  {:item_id=>870, :tag_id=>34},
  {:item_id=>945, :tag_id=>35},
  {:item_id=>1141, :tag_id=>1},
  {:item_id=>110, :tag_id=>2},
  {:item_id=>1356, :tag_id=>3},
  {:item_id=>214, :tag_id=>4},
  {:item_id=>1236, :tag_id=>5},
  {:item_id=>679, :tag_id=>6},
  {:item_id=>550, :tag_id=>7},
  {:item_id=>1051, :tag_id=>8},
  {:item_id=>422, :tag_id=>9},
  {:item_id=>1150, :tag_id=>10},
  {:item_id=>299, :tag_id=>11},
  {:item_id=>905, :tag_id=>12},
  {:item_id=>856, :tag_id=>13},
  {:item_id=>485, :tag_id=>14},
  {:item_id=>428, :tag_id=>15},
  {:item_id=>720, :tag_id=>16},
  {:item_id=>649, :tag_id=>17},
  {:item_id=>1009, :tag_id=>18},
  {:item_id=>749, :tag_id=>19},
  {:item_id=>1018, :tag_id=>20},
  {:item_id=>259, :tag_id=>21},
  {:item_id=>441, :tag_id=>22},
  {:item_id=>1261, :tag_id=>23},
  {:item_id=>292, :tag_id=>24},
  {:item_id=>718, :tag_id=>25},
  {:item_id=>1064, :tag_id=>26},
  {:item_id=>96, :tag_id=>27},
  {:item_id=>313, :tag_id=>28},
  {:item_id=>89, :tag_id=>29},
  {:item_id=>1202, :tag_id=>30},
  {:item_id=>1261, :tag_id=>31},
  {:item_id=>477, :tag_id=>32},
  {:item_id=>651, :tag_id=>33},
  {:item_id=>412, :tag_id=>34},
  {:item_id=>1403, :tag_id=>35},
  {:item_id=>831, :tag_id=>1},
  {:item_id=>466, :tag_id=>2},
  {:item_id=>1278, :tag_id=>3},
  {:item_id=>1014, :tag_id=>4},
  {:item_id=>696, :tag_id=>5},
  {:item_id=>803, :tag_id=>6},
  {:item_id=>59, :tag_id=>7},
  {:item_id=>1385, :tag_id=>8},
  {:item_id=>317, :tag_id=>9},
  {:item_id=>942, :tag_id=>10},
  {:item_id=>82, :tag_id=>11},
  {:item_id=>669, :tag_id=>12},
  {:item_id=>873, :tag_id=>13},
  {:item_id=>1197, :tag_id=>14},
  {:item_id=>1200, :tag_id=>15},
  {:item_id=>920, :tag_id=>16},
  {:item_id=>1003, :tag_id=>17},
  {:item_id=>56, :tag_id=>18},
  {:item_id=>889, :tag_id=>19},
  {:item_id=>1464, :tag_id=>20},
  {:item_id=>767, :tag_id=>21},
  {:item_id=>1205, :tag_id=>22},
  {:item_id=>1174, :tag_id=>23},
  {:item_id=>560, :tag_id=>24},
  {:item_id=>929, :tag_id=>25},
  {:item_id=>1373, :tag_id=>26},
  {:item_id=>565, :tag_id=>27},
  {:item_id=>392, :tag_id=>28},
  {:item_id=>1259, :tag_id=>29},
  {:item_id=>670, :tag_id=>30},
  {:item_id=>1345, :tag_id=>31},
  {:item_id=>821, :tag_id=>32},
  {:item_id=>926, :tag_id=>33},
  {:item_id=>316, :tag_id=>34},
  {:item_id=>923, :tag_id=>35},
  {:item_id=>1149, :tag_id=>1},
  {:item_id=>1190, :tag_id=>2},
  {:item_id=>179, :tag_id=>3},
  {:item_id=>179, :tag_id=>4},
  {:item_id=>654, :tag_id=>5},
  {:item_id=>1163, :tag_id=>6},
  {:item_id=>124, :tag_id=>7},
  {:item_id=>763, :tag_id=>8},
  {:item_id=>1238, :tag_id=>9},
  {:item_id=>132, :tag_id=>10},
  {:item_id=>1158, :tag_id=>11},
  {:item_id=>717, :tag_id=>12},
  {:item_id=>1030, :tag_id=>13},
  {:item_id=>923, :tag_id=>14},
  {:item_id=>1424, :tag_id=>15},
  {:item_id=>1374, :tag_id=>16},
  {:item_id=>1315, :tag_id=>17},
  {:item_id=>207, :tag_id=>18},
  {:item_id=>1505, :tag_id=>19},
  {:item_id=>635, :tag_id=>20},
  {:item_id=>1402, :tag_id=>21},
  {:item_id=>621, :tag_id=>22},
  {:item_id=>764, :tag_id=>23},
  {:item_id=>132, :tag_id=>24},
  {:item_id=>986, :tag_id=>25},
  {:item_id=>1308, :tag_id=>26},
  {:item_id=>390, :tag_id=>27},
  {:item_id=>744, :tag_id=>28},
  {:item_id=>769, :tag_id=>29},
  {:item_id=>752, :tag_id=>30},
  {:item_id=>686, :tag_id=>31},
  {:item_id=>1478, :tag_id=>32},
  {:item_id=>150, :tag_id=>33},
  {:item_id=>401, :tag_id=>34},
  {:item_id=>983, :tag_id=>35},
  {:item_id=>164, :tag_id=>1},
  {:item_id=>371, :tag_id=>2},
  {:item_id=>701, :tag_id=>3},
  {:item_id=>1081, :tag_id=>4},
  {:item_id=>1301, :tag_id=>5},
  {:item_id=>907, :tag_id=>6},
  {:item_id=>1116, :tag_id=>7},
  {:item_id=>1195, :tag_id=>8},
  {:item_id=>313, :tag_id=>9},
  {:item_id=>822, :tag_id=>10},
  {:item_id=>842, :tag_id=>11},
  {:item_id=>938, :tag_id=>12},
  {:item_id=>442, :tag_id=>13},
  {:item_id=>758, :tag_id=>14},
  {:item_id=>1050, :tag_id=>15},
  {:item_id=>268, :tag_id=>16},
  {:item_id=>167, :tag_id=>17},
  {:item_id=>465, :tag_id=>18},
  {:item_id=>1168, :tag_id=>19},
  {:item_id=>616, :tag_id=>20},
  {:item_id=>888, :tag_id=>21},
  {:item_id=>1471, :tag_id=>22},
  {:item_id=>658, :tag_id=>23},
  {:item_id=>88, :tag_id=>24},
  {:item_id=>891, :tag_id=>25},
  {:item_id=>1472, :tag_id=>26},
  {:item_id=>759, :tag_id=>27},
  {:item_id=>558, :tag_id=>28},
  {:item_id=>1464, :tag_id=>29},
  {:item_id=>913, :tag_id=>30},
  {:item_id=>833, :tag_id=>31},
  {:item_id=>115, :tag_id=>32},
  {:item_id=>541, :tag_id=>33},
  {:item_id=>136, :tag_id=>34},
  {:item_id=>605, :tag_id=>35},
  {:item_id=>1098, :tag_id=>1},
  {:item_id=>636, :tag_id=>3},
  {:item_id=>33, :tag_id=>4},
  {:item_id=>165, :tag_id=>5},
  {:item_id=>1471, :tag_id=>6},
  {:item_id=>225, :tag_id=>7},
  {:item_id=>1454, :tag_id=>8},
  {:item_id=>30, :tag_id=>9},
  {:item_id=>748, :tag_id=>10},
  {:item_id=>43, :tag_id=>11},
  {:item_id=>540, :tag_id=>12},
  {:item_id=>663, :tag_id=>13},
  {:item_id=>1346, :tag_id=>14},
  {:item_id=>332, :tag_id=>15},
  {:item_id=>1337, :tag_id=>16},
  {:item_id=>776, :tag_id=>17},
  {:item_id=>652, :tag_id=>18},
  {:item_id=>1358, :tag_id=>19},
  {:item_id=>707, :tag_id=>20},
  {:item_id=>496, :tag_id=>21},
  {:item_id=>1394, :tag_id=>22},
  {:item_id=>311, :tag_id=>23},
  {:item_id=>21, :tag_id=>24},
  {:item_id=>995, :tag_id=>25},
  {:item_id=>1405, :tag_id=>26},
  {:item_id=>1376, :tag_id=>27},
  {:item_id=>911, :tag_id=>28},
  {:item_id=>902, :tag_id=>29},
  {:item_id=>981, :tag_id=>30},
  {:item_id=>1107, :tag_id=>31},
  {:item_id=>498, :tag_id=>32},
  {:item_id=>1227, :tag_id=>33},
  {:item_id=>910, :tag_id=>34},
  {:item_id=>1397, :tag_id=>35},
  {:item_id=>269, :tag_id=>1},
  {:item_id=>965, :tag_id=>2},
  {:item_id=>1387, :tag_id=>3},
  {:item_id=>536, :tag_id=>4},
  {:item_id=>875, :tag_id=>5},
  {:item_id=>596, :tag_id=>6},
  {:item_id=>630, :tag_id=>7},
  {:item_id=>1457, :tag_id=>8},
  {:item_id=>355, :tag_id=>9},
  {:item_id=>491, :tag_id=>10},
  {:item_id=>87, :tag_id=>11},
  {:item_id=>266, :tag_id=>12},
  {:item_id=>648, :tag_id=>13},
  {:item_id=>1270, :tag_id=>14},
  {:item_id=>777, :tag_id=>15},
  {:item_id=>1416, :tag_id=>16},
  {:item_id=>1505, :tag_id=>17},
  {:item_id=>1510, :tag_id=>18},
  {:item_id=>850, :tag_id=>19},
  {:item_id=>1111, :tag_id=>20},
  {:item_id=>84, :tag_id=>21},
  {:item_id=>554, :tag_id=>22},
  {:item_id=>1133, :tag_id=>23},
  {:item_id=>1242, :tag_id=>24},
  {:item_id=>922, :tag_id=>25},
  {:item_id=>1012, :tag_id=>26},
  {:item_id=>438, :tag_id=>27},
  {:item_id=>221, :tag_id=>28},
  {:item_id=>399, :tag_id=>29},
  {:item_id=>591, :tag_id=>30},
  {:item_id=>1369, :tag_id=>31},
  {:item_id=>39, :tag_id=>32},
  {:item_id=>1042, :tag_id=>33},
  {:item_id=>670, :tag_id=>34},
  {:item_id=>993, :tag_id=>35},
  {:item_id=>257, :tag_id=>1},
  {:item_id=>531, :tag_id=>2},
  {:item_id=>1503, :tag_id=>3},
  {:item_id=>251, :tag_id=>4},
  {:item_id=>23, :tag_id=>5},
  {:item_id=>90, :tag_id=>6},
  {:item_id=>66, :tag_id=>7},
  {:item_id=>1394, :tag_id=>8},
  {:item_id=>1244, :tag_id=>9},
  {:item_id=>137, :tag_id=>10},
  {:item_id=>1478, :tag_id=>11},
  {:item_id=>418, :tag_id=>12},
  {:item_id=>324, :tag_id=>13},
  {:item_id=>501, :tag_id=>14},
  {:item_id=>1176, :tag_id=>15},
  {:item_id=>228, :tag_id=>16},
  {:item_id=>1216, :tag_id=>17},
  {:item_id=>958, :tag_id=>18},
  {:item_id=>149, :tag_id=>19},
  {:item_id=>558, :tag_id=>20},
  {:item_id=>48, :tag_id=>21},
  {:item_id=>973, :tag_id=>22},
  {:item_id=>1357, :tag_id=>23},
  {:item_id=>551, :tag_id=>24},
  {:item_id=>197, :tag_id=>25},
  {:item_id=>1268, :tag_id=>26},
  {:item_id=>1372, :tag_id=>27},
  {:item_id=>368, :tag_id=>28},
  {:item_id=>185, :tag_id=>29},
  {:item_id=>1354, :tag_id=>30},
  {:item_id=>756, :tag_id=>31},
  {:item_id=>244, :tag_id=>32},
  {:item_id=>783, :tag_id=>33},
  {:item_id=>504, :tag_id=>34},
  {:item_id=>1188, :tag_id=>35},
  {:item_id=>1151, :tag_id=>1},
  {:item_id=>325, :tag_id=>2},
  {:item_id=>156, :tag_id=>3},
  {:item_id=>1157, :tag_id=>4},
  {:item_id=>681, :tag_id=>5},
  {:item_id=>1021, :tag_id=>6},
  {:item_id=>382, :tag_id=>7},
  {:item_id=>695, :tag_id=>8},
  {:item_id=>713, :tag_id=>9},
  {:item_id=>1071, :tag_id=>10},
  {:item_id=>782, :tag_id=>11},
  {:item_id=>1139, :tag_id=>12},
  {:item_id=>69, :tag_id=>13},
  {:item_id=>415, :tag_id=>14},
  {:item_id=>239, :tag_id=>15},
  {:item_id=>15, :tag_id=>16},
  {:item_id=>81, :tag_id=>17},
  {:item_id=>1130, :tag_id=>18},
  {:item_id=>637, :tag_id=>19},
  {:item_id=>632, :tag_id=>20},
  {:item_id=>879, :tag_id=>21},
  {:item_id=>1466, :tag_id=>22},
  {:item_id=>980, :tag_id=>23},
  {:item_id=>362, :tag_id=>24},
  {:item_id=>19, :tag_id=>25},
  {:item_id=>64, :tag_id=>26},
  {:item_id=>683, :tag_id=>27},
  {:item_id=>4, :tag_id=>28},
  {:item_id=>1106, :tag_id=>29},
  {:item_id=>511, :tag_id=>30},
  {:item_id=>879, :tag_id=>31},
  {:item_id=>438, :tag_id=>32},
  {:item_id=>483, :tag_id=>33},
  {:item_id=>1053, :tag_id=>34},
  {:item_id=>1505, :tag_id=>35},
  {:item_id=>335, :tag_id=>1},
  {:item_id=>1211, :tag_id=>2},
  {:item_id=>1143, :tag_id=>3},
  {:item_id=>886, :tag_id=>4},
  {:item_id=>1243, :tag_id=>5},
  {:item_id=>511, :tag_id=>6},
  {:item_id=>981, :tag_id=>7},
  {:item_id=>41, :tag_id=>8},
  {:item_id=>1169, :tag_id=>9},
  {:item_id=>636, :tag_id=>10},
  {:item_id=>212, :tag_id=>11},
  {:item_id=>283, :tag_id=>12},
  {:item_id=>105, :tag_id=>13},
  {:item_id=>884, :tag_id=>14},
  {:item_id=>1467, :tag_id=>15},
  {:item_id=>85, :tag_id=>16},
  {:item_id=>993, :tag_id=>17},
  {:item_id=>1050, :tag_id=>18},
  {:item_id=>1380, :tag_id=>19},
  {:item_id=>993, :tag_id=>20},
  {:item_id=>1442, :tag_id=>21},
  {:item_id=>586, :tag_id=>22},
  {:item_id=>676, :tag_id=>23},
  {:item_id=>1216, :tag_id=>24},
  {:item_id=>676, :tag_id=>25},
  {:item_id=>1411, :tag_id=>26},
  {:item_id=>876, :tag_id=>27},
  {:item_id=>17, :tag_id=>28},
  {:item_id=>1040, :tag_id=>29},
  {:item_id=>1225, :tag_id=>30},
  {:item_id=>716, :tag_id=>31},
  {:item_id=>303, :tag_id=>32},
  {:item_id=>18, :tag_id=>33},
  {:item_id=>1106, :tag_id=>34},
  {:item_id=>1231, :tag_id=>35},
  {:item_id=>570, :tag_id=>1},
  {:item_id=>638, :tag_id=>2},
  {:item_id=>1054, :tag_id=>3},
  {:item_id=>869, :tag_id=>4},
  {:item_id=>332, :tag_id=>5},
  {:item_id=>726, :tag_id=>6},
  {:item_id=>1341, :tag_id=>7},
  {:item_id=>550, :tag_id=>8},
  {:item_id=>1268, :tag_id=>9},
  {:item_id=>639, :tag_id=>10},
  {:item_id=>892, :tag_id=>11},
  {:item_id=>1111, :tag_id=>12},
  {:item_id=>1349, :tag_id=>13},
  {:item_id=>957, :tag_id=>14},
  {:item_id=>401, :tag_id=>16},
  {:item_id=>750, :tag_id=>17},
  {:item_id=>1034, :tag_id=>18},
  {:item_id=>971, :tag_id=>19},
  {:item_id=>617, :tag_id=>20},
  {:item_id=>977, :tag_id=>21},
  {:item_id=>417, :tag_id=>22},
  {:item_id=>905, :tag_id=>23},
  {:item_id=>1108, :tag_id=>24},
  {:item_id=>399, :tag_id=>25},
  {:item_id=>788, :tag_id=>26},
  {:item_id=>3, :tag_id=>27},
  {:item_id=>713, :tag_id=>28},
  {:item_id=>540, :tag_id=>29},
  {:item_id=>353, :tag_id=>30},
  {:item_id=>51, :tag_id=>31},
  {:item_id=>1223, :tag_id=>32},
  {:item_id=>453, :tag_id=>33},
  {:item_id=>917, :tag_id=>34},
  {:item_id=>1361, :tag_id=>35},
  {:item_id=>14, :tag_id=>1},
  {:item_id=>839, :tag_id=>2},
  {:item_id=>1489, :tag_id=>3},
  {:item_id=>269, :tag_id=>4},
  {:item_id=>603, :tag_id=>5},
  {:item_id=>111, :tag_id=>6},
  {:item_id=>1403, :tag_id=>7},
  {:item_id=>858, :tag_id=>8},
  {:item_id=>456, :tag_id=>9},
  {:item_id=>979, :tag_id=>10},
  {:item_id=>1334, :tag_id=>11},
  {:item_id=>190, :tag_id=>12},
  {:item_id=>1015, :tag_id=>13},
  {:item_id=>912, :tag_id=>14},
  {:item_id=>738, :tag_id=>15},
  {:item_id=>254, :tag_id=>16},
  {:item_id=>738, :tag_id=>17},
  {:item_id=>824, :tag_id=>18},
  {:item_id=>1134, :tag_id=>19},
  {:item_id=>77, :tag_id=>20},
  {:item_id=>964, :tag_id=>21},
  {:item_id=>527, :tag_id=>22},
  {:item_id=>223, :tag_id=>24},
  {:item_id=>876, :tag_id=>25},
  {:item_id=>1258, :tag_id=>26},
  {:item_id=>84, :tag_id=>27},
  {:item_id=>1056, :tag_id=>28},
  {:item_id=>1303, :tag_id=>29},
  {:item_id=>405, :tag_id=>30},
  {:item_id=>789, :tag_id=>31},
  {:item_id=>1476, :tag_id=>32},
  {:item_id=>211, :tag_id=>33},
  {:item_id=>1477, :tag_id=>34},
  {:item_id=>112, :tag_id=>35},
  {:item_id=>874, :tag_id=>1},
  {:item_id=>290, :tag_id=>2},
  {:item_id=>242, :tag_id=>3},
  {:item_id=>1424, :tag_id=>4},
  {:item_id=>27, :tag_id=>5},
  {:item_id=>1283, :tag_id=>6},
  {:item_id=>278, :tag_id=>7},
  {:item_id=>801, :tag_id=>8},
  {:item_id=>1096, :tag_id=>9},
  {:item_id=>413, :tag_id=>10},
  {:item_id=>1, :tag_id=>11},
  {:item_id=>1133, :tag_id=>12},
  {:item_id=>686, :tag_id=>13},
  {:item_id=>391, :tag_id=>14},
  {:item_id=>1474, :tag_id=>15},
  {:item_id=>185, :tag_id=>16},
  {:item_id=>772, :tag_id=>17},
  {:item_id=>193, :tag_id=>18},
  {:item_id=>1173, :tag_id=>19},
  {:item_id=>409, :tag_id=>20},
  {:item_id=>1034, :tag_id=>21},
  {:item_id=>65, :tag_id=>22},
  {:item_id=>751, :tag_id=>23},
  {:item_id=>375, :tag_id=>24},
  {:item_id=>1034, :tag_id=>25},
  {:item_id=>1270, :tag_id=>26},
  {:item_id=>18, :tag_id=>27},
  {:item_id=>447, :tag_id=>28},
  {:item_id=>1504, :tag_id=>29},
  {:item_id=>1311, :tag_id=>30},
  {:item_id=>1355, :tag_id=>31},
  {:item_id=>643, :tag_id=>32},
  {:item_id=>925, :tag_id=>33},
  {:item_id=>1440, :tag_id=>34},
  {:item_id=>485, :tag_id=>35},
  {:item_id=>845, :tag_id=>1},
  {:item_id=>919, :tag_id=>2},
  {:item_id=>1071, :tag_id=>3},
  {:item_id=>3, :tag_id=>4},
  {:item_id=>1384, :tag_id=>5},
  {:item_id=>28, :tag_id=>6},
  {:item_id=>1352, :tag_id=>7},
  {:item_id=>887, :tag_id=>8},
  {:item_id=>700, :tag_id=>9},
  {:item_id=>1466, :tag_id=>10},
  {:item_id=>155, :tag_id=>11},
  {:item_id=>17, :tag_id=>12},
  {:item_id=>1400, :tag_id=>13},
  {:item_id=>101, :tag_id=>14},
  {:item_id=>122, :tag_id=>15},
  {:item_id=>603, :tag_id=>16},
  {:item_id=>1214, :tag_id=>17},
  {:item_id=>953, :tag_id=>18},
  {:item_id=>417, :tag_id=>20},
  {:item_id=>891, :tag_id=>21},
  {:item_id=>1245, :tag_id=>22},
  {:item_id=>934, :tag_id=>23},
  {:item_id=>687, :tag_id=>24},
  {:item_id=>763, :tag_id=>25},
  {:item_id=>623, :tag_id=>26},
  {:item_id=>440, :tag_id=>27},
  {:item_id=>865, :tag_id=>28},
  {:item_id=>1342, :tag_id=>29},
  {:item_id=>1122, :tag_id=>30},
  {:item_id=>1419, :tag_id=>31},
  {:item_id=>1351, :tag_id=>32},
  {:item_id=>502, :tag_id=>33},
  {:item_id=>713, :tag_id=>34},
  {:item_id=>574, :tag_id=>35},
  {:item_id=>94, :tag_id=>1},
  {:item_id=>1202, :tag_id=>2},
  {:item_id=>1452, :tag_id=>3},
  {:item_id=>1254, :tag_id=>4},
  {:item_id=>7, :tag_id=>5},
  {:item_id=>632, :tag_id=>6},
  {:item_id=>257, :tag_id=>7},
  {:item_id=>19, :tag_id=>8},
  {:item_id=>852, :tag_id=>9},
  {:item_id=>129, :tag_id=>10},
  {:item_id=>1339, :tag_id=>11},
  {:item_id=>1288, :tag_id=>12},
  {:item_id=>1434, :tag_id=>13},
  {:item_id=>661, :tag_id=>14},
  {:item_id=>1506, :tag_id=>15},
  {:item_id=>1299, :tag_id=>16},
  {:item_id=>1425, :tag_id=>17},
  {:item_id=>788, :tag_id=>18},
  {:item_id=>1294, :tag_id=>19},
  {:item_id=>1454, :tag_id=>20},
  {:item_id=>397, :tag_id=>21},
  {:item_id=>657, :tag_id=>22},
  {:item_id=>842, :tag_id=>23},
  {:item_id=>1279, :tag_id=>24},
  {:item_id=>1023, :tag_id=>25},
  {:item_id=>275, :tag_id=>26},
  {:item_id=>1031, :tag_id=>27},
  {:item_id=>1445, :tag_id=>28},
  {:item_id=>158, :tag_id=>29},
  {:item_id=>1389, :tag_id=>30},
  {:item_id=>129, :tag_id=>31},
  {:item_id=>1283, :tag_id=>32},
  {:item_id=>1154, :tag_id=>33},
  {:item_id=>1009, :tag_id=>34},
  {:item_id=>125, :tag_id=>35},
  {:item_id=>791, :tag_id=>1},
  {:item_id=>1263, :tag_id=>2},
  {:item_id=>684, :tag_id=>3},
  {:item_id=>1290, :tag_id=>4},
  {:item_id=>359, :tag_id=>5},
  {:item_id=>979, :tag_id=>6},
  {:item_id=>139, :tag_id=>7},
  {:item_id=>1092, :tag_id=>8},
  {:item_id=>327, :tag_id=>9},
  {:item_id=>923, :tag_id=>10},
  {:item_id=>94, :tag_id=>11},
  {:item_id=>856, :tag_id=>12},
  {:item_id=>190, :tag_id=>13},
  {:item_id=>715, :tag_id=>14},
  {:item_id=>176, :tag_id=>15},
  {:item_id=>154, :tag_id=>16},
  {:item_id=>1404, :tag_id=>17},
  {:item_id=>447, :tag_id=>18},
  {:item_id=>24, :tag_id=>19},
  {:item_id=>1133, :tag_id=>20},
  {:item_id=>1358, :tag_id=>21},
  {:item_id=>445, :tag_id=>22},
  {:item_id=>176, :tag_id=>23},
  {:item_id=>33, :tag_id=>24},
  {:item_id=>1287, :tag_id=>25},
  {:item_id=>733, :tag_id=>26},
  {:item_id=>280, :tag_id=>27},
  {:item_id=>113, :tag_id=>28},
  {:item_id=>1141, :tag_id=>29},
  {:item_id=>107, :tag_id=>30},
  {:item_id=>960, :tag_id=>31},
  {:item_id=>1003, :tag_id=>32},
  {:item_id=>1060, :tag_id=>33},
  {:item_id=>1278, :tag_id=>34},
  {:item_id=>676, :tag_id=>35},
  {:item_id=>1094, :tag_id=>1},
  {:item_id=>7, :tag_id=>2},
  {:item_id=>993, :tag_id=>3},
  {:item_id=>1102, :tag_id=>4},
  {:item_id=>953, :tag_id=>5},
  {:item_id=>153, :tag_id=>6},
  {:item_id=>1132, :tag_id=>7},
  {:item_id=>1140, :tag_id=>8},
  {:item_id=>1110, :tag_id=>9},
  {:item_id=>661, :tag_id=>10},
  {:item_id=>1230, :tag_id=>11},
  {:item_id=>515, :tag_id=>12},
  {:item_id=>535, :tag_id=>13},
  {:item_id=>478, :tag_id=>14},
  {:item_id=>18, :tag_id=>15},
  {:item_id=>1230, :tag_id=>16},
  {:item_id=>698, :tag_id=>17},
  {:item_id=>1363, :tag_id=>18},
  {:item_id=>1146, :tag_id=>19},
  {:item_id=>42, :tag_id=>20},
  {:item_id=>1234, :tag_id=>21},
  {:item_id=>119, :tag_id=>22},
  {:item_id=>781, :tag_id=>23},
  {:item_id=>7, :tag_id=>24},
  {:item_id=>1203, :tag_id=>25},
  {:item_id=>208, :tag_id=>26},
  {:item_id=>1090, :tag_id=>27},
  {:item_id=>184, :tag_id=>28},
  {:item_id=>917, :tag_id=>29},
  {:item_id=>1481, :tag_id=>30},
  {:item_id=>1086, :tag_id=>31},
  {:item_id=>1163, :tag_id=>32},
  {:item_id=>607, :tag_id=>33},
  {:item_id=>1362, :tag_id=>34},
  {:item_id=>498, :tag_id=>35},
  {:item_id=>521, :tag_id=>1},
  {:item_id=>411, :tag_id=>2},
  {:item_id=>926, :tag_id=>3},
  {:item_id=>807, :tag_id=>4},
  {:item_id=>823, :tag_id=>5},
  {:item_id=>55, :tag_id=>6},
  {:item_id=>184, :tag_id=>7},
  {:item_id=>259, :tag_id=>8},
  {:item_id=>951, :tag_id=>9},
  {:item_id=>1015, :tag_id=>10},
  {:item_id=>538, :tag_id=>11},
  {:item_id=>1377, :tag_id=>12},
  {:item_id=>1167, :tag_id=>13},
  {:item_id=>1427, :tag_id=>14},
  {:item_id=>1309, :tag_id=>15},
  {:item_id=>523, :tag_id=>16},
  {:item_id=>732, :tag_id=>18},
  {:item_id=>263, :tag_id=>19},
  {:item_id=>781, :tag_id=>20},
  {:item_id=>187, :tag_id=>21},
  {:item_id=>351, :tag_id=>22},
  {:item_id=>574, :tag_id=>23},
  {:item_id=>1338, :tag_id=>24},
  {:item_id=>63, :tag_id=>25},
  {:item_id=>75, :tag_id=>26},
  {:item_id=>531, :tag_id=>27},
  {:item_id=>100, :tag_id=>28},
  {:item_id=>1064, :tag_id=>29},
  {:item_id=>152, :tag_id=>30},
  {:item_id=>1029, :tag_id=>31},
  {:item_id=>606, :tag_id=>32},
  {:item_id=>952, :tag_id=>33},
  {:item_id=>1118, :tag_id=>34},
  {:item_id=>1394, :tag_id=>35},
  {:item_id=>1206, :tag_id=>1},
  {:item_id=>1347, :tag_id=>2},
  {:item_id=>1499, :tag_id=>3},
  {:item_id=>63, :tag_id=>4},
  {:item_id=>398, :tag_id=>5},
  {:item_id=>704, :tag_id=>6},
  {:item_id=>247, :tag_id=>7},
  {:item_id=>1369, :tag_id=>8},
  {:item_id=>110, :tag_id=>9},
  {:item_id=>346, :tag_id=>10},
  {:item_id=>660, :tag_id=>11},
  {:item_id=>385, :tag_id=>12},
  {:item_id=>106, :tag_id=>13},
  {:item_id=>504, :tag_id=>14},
  {:item_id=>1445, :tag_id=>15},
  {:item_id=>746, :tag_id=>16},
  {:item_id=>71, :tag_id=>17},
  {:item_id=>266, :tag_id=>18},
  {:item_id=>968, :tag_id=>19},
  {:item_id=>1219, :tag_id=>20},
  {:item_id=>506, :tag_id=>21},
  {:item_id=>352, :tag_id=>22},
  {:item_id=>1405, :tag_id=>23},
  {:item_id=>861, :tag_id=>24},
  {:item_id=>411, :tag_id=>25},
  {:item_id=>1454, :tag_id=>26},
  {:item_id=>1395, :tag_id=>27},
  {:item_id=>712, :tag_id=>28},
  {:item_id=>414, :tag_id=>29},
  {:item_id=>890, :tag_id=>30},
  {:item_id=>951, :tag_id=>31},
  {:item_id=>1396, :tag_id=>32},
  {:item_id=>960, :tag_id=>33},
  {:item_id=>780, :tag_id=>34},
  {:item_id=>616, :tag_id=>35},
  {:item_id=>495, :tag_id=>1},
  {:item_id=>831, :tag_id=>2},
  {:item_id=>271, :tag_id=>3},
  {:item_id=>1238, :tag_id=>4},
  {:item_id=>1081, :tag_id=>5},
  {:item_id=>115, :tag_id=>6},
  {:item_id=>812, :tag_id=>7},
  {:item_id=>641, :tag_id=>8},
  {:item_id=>591, :tag_id=>9},
  {:item_id=>970, :tag_id=>10},
  {:item_id=>530, :tag_id=>11},
  {:item_id=>699, :tag_id=>12},
  {:item_id=>1480, :tag_id=>13},
  {:item_id=>374, :tag_id=>14},
  {:item_id=>491, :tag_id=>15},
  {:item_id=>554, :tag_id=>16},
  {:item_id=>1023, :tag_id=>17},
  {:item_id=>353, :tag_id=>18},
  {:item_id=>67, :tag_id=>19},
  {:item_id=>727, :tag_id=>20},
  {:item_id=>492, :tag_id=>21},
  {:item_id=>1099, :tag_id=>22},
  {:item_id=>1459, :tag_id=>23},
  {:item_id=>1177, :tag_id=>24},
  {:item_id=>694, :tag_id=>25},
  {:item_id=>337, :tag_id=>26},
  {:item_id=>129, :tag_id=>27},
  {:item_id=>1510, :tag_id=>28},
  {:item_id=>534, :tag_id=>29},
  {:item_id=>219, :tag_id=>30},
  {:item_id=>981, :tag_id=>31},
  {:item_id=>705, :tag_id=>32},
  {:item_id=>31, :tag_id=>33},
  {:item_id=>576, :tag_id=>34},
  {:item_id=>1265, :tag_id=>35},
  {:item_id=>402, :tag_id=>1},
  {:item_id=>1299, :tag_id=>2},
  {:item_id=>731, :tag_id=>3},
  {:item_id=>31, :tag_id=>4},
  {:item_id=>1090, :tag_id=>5},
  {:item_id=>1053, :tag_id=>6},
  {:item_id=>938, :tag_id=>7},
  {:item_id=>1510, :tag_id=>8},
  {:item_id=>197, :tag_id=>9},
  {:item_id=>827, :tag_id=>10},
  {:item_id=>34, :tag_id=>11},
  {:item_id=>1319, :tag_id=>12},
  {:item_id=>1309, :tag_id=>13},
  {:item_id=>1406, :tag_id=>14},
  {:item_id=>1122, :tag_id=>15},
  {:item_id=>45, :tag_id=>16},
  {:item_id=>108, :tag_id=>17},
  {:item_id=>1342, :tag_id=>18},
  {:item_id=>479, :tag_id=>19},
  {:item_id=>866, :tag_id=>20},
  {:item_id=>1432, :tag_id=>21},
  {:item_id=>1062, :tag_id=>22},
  {:item_id=>537, :tag_id=>23},
  {:item_id=>92, :tag_id=>24},
  {:item_id=>1042, :tag_id=>25},
  {:item_id=>1129, :tag_id=>26},
  {:item_id=>662, :tag_id=>27},
  {:item_id=>310, :tag_id=>28},
  {:item_id=>900, :tag_id=>29},
  {:item_id=>987, :tag_id=>30},
  {:item_id=>620, :tag_id=>31},
  {:item_id=>275, :tag_id=>32},
  {:item_id=>401, :tag_id=>33},
  {:item_id=>1415, :tag_id=>34},
  {:item_id=>1475, :tag_id=>35},
  {:item_id=>941, :tag_id=>1},
  {:item_id=>235, :tag_id=>2},
  {:item_id=>213, :tag_id=>3},
  {:item_id=>385, :tag_id=>4},
  {:item_id=>1201, :tag_id=>5},
  {:item_id=>166, :tag_id=>6},
  {:item_id=>114, :tag_id=>7},
  {:item_id=>613, :tag_id=>8},
  {:item_id=>229, :tag_id=>10},
  {:item_id=>1352, :tag_id=>11},
  {:item_id=>549, :tag_id=>12},
  {:item_id=>1192, :tag_id=>13},
  {:item_id=>343, :tag_id=>14},
  {:item_id=>34, :tag_id=>15},
  {:item_id=>127, :tag_id=>16},
  {:item_id=>1028, :tag_id=>17},
  {:item_id=>347, :tag_id=>18},
  {:item_id=>1251, :tag_id=>19},
  {:item_id=>430, :tag_id=>20},
  {:item_id=>63, :tag_id=>21},
  {:item_id=>773, :tag_id=>22},
  {:item_id=>615, :tag_id=>23},
  {:item_id=>101, :tag_id=>24},
  {:item_id=>1323, :tag_id=>25},
  {:item_id=>417, :tag_id=>26},
  {:item_id=>423, :tag_id=>27},
  {:item_id=>644, :tag_id=>28},
  {:item_id=>373, :tag_id=>29},
  {:item_id=>660, :tag_id=>30},
  {:item_id=>433, :tag_id=>31},
  {:item_id=>752, :tag_id=>32},
  {:item_id=>1235, :tag_id=>33},
  {:item_id=>852, :tag_id=>34},
  {:item_id=>311, :tag_id=>35},
  {:item_id=>1, :tag_id=>1},
  {:item_id=>1, :tag_id=>2},
  {:item_id=>1, :tag_id=>4},
  {:item_id=>2, :tag_id=>1},
  {:item_id=>2, :tag_id=>2}
])
