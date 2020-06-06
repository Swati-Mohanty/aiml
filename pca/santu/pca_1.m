clc; close all; clear all;
% numdata=20; %should be even

% step 1, generating a dataset

% x1=rand(numdata/2,1);
% y1=rand(numdata/2,1);
% x2=10*rand(numdata/2,1)+3;
% y2=10*rand(numdata/2,1)+3;
% x=[x1;x2];
% y=[y1;y2];
% x = [ 3.46261000000000	3.16877000000000	3.40444000000000	3.33084000000000	3.36659000000000	3.16065000000000	2.99099000000000	3.47956000000000	3.48420000000000	3.08381000000000	3.10178000000000	3.08436000000000	3.17227000000000	3.41897000000000	3.19414000000000	3.11269000000000	3.25398000000000	3.06417000000000	3.39303000000000	3.05505000000000	3.22217000000000	3.01104000000000	3.04017000000000	3.32412000000000	3.09050000000000	3.05256000000000	2.90399000000000	2.93879000000000	2.84965000000000	3.24540000000000	2.80013000000000	3.07686000000000	2.98259000000000	3.23399000000000	2.79644000000000	3.14461000000000	2.91202000000000	3.12135000000000	3.35269000000000	3.23087000000000	3.40400000000000	3.20484000000000	2.64611000000000	3.51173000000000	3.17650000000000	2.69160000000000	3.36636000000000	3.25427000000000	3.41321000000000	2.84542000000000	3.36327000000000	3.18232000000000	3.59719000000000	2.84990000000000	3.34029000000000	3.12790000000000	3.41468000000000	3.40785000000000	3.39286000000000	2.94555000000000	3.35786000000000	3.01905000000000	3.43667000000000	3.14979000000000	3.12245000000000	3.57536000000000	3.12488000000000	2.80075000000000	3.24110000000000	2.94644000000000	3.50883000000000	2.90696000000000	3.41045000000000	2.89869000000000	3.18326000000000	3.68815000000000	3.31672000000000	2.94576000000000	3.35764000000000	3.03542000000000	3.60788000000000	3.07555000000000	3.26990000000000	3.08452000000000	3.35504000000000	3.26522000000000	3.15364000000000	3.08797000000000	3.35974000000000	2.97975000000000	3.13187000000000	3.17872000000000	2.85661000000000	2.67177000000000	3.41334000000000	2.84849000000000	3.35326000000000	2.70902000000000	3.09636000000000	2.80606000000000	3.26231000000000	2.68509000000000	3.54933000000000	2.90662000000000	3.20191000000000	3.35881000000000	3.43684000000000	2.75558000000000	3.39606000000000	3.21838000000000	3.27702000000000	3.58960000000000	3.30735000000000	3.08796000000000	3.41672000000000	2.89134000000000	3.51238000000000	2.73923000000000	3.08478000000000	2.85424000000000	3.13516000000000	3.64868000000000	2.79438000000000	2.77350000000000	3.10813000000000	3.17114000000000	3.14080000000000	2.84548000000000	3.17955000000000	2.80484000000000	3.40572000000000	2.87268000000000	3.22342000000000	2.98597000000000	3.24452000000000	2.71072000000000	3.23632000000000	2.91246000000000	3.11823000000000	2.92918000000000	3.41680000000000	2.93265000000000	3.20440000000000	3.31477000000000	3.07129000000000	3.04522000000000	2.92046000000000	3.01501000000000	3.11042000000000	2.73194000000000	3.39907000000000	2.98375000000000	3.51670000000000	2.98714000000000	3.43905000000000	2.78029000000000	2.89897000000000	2.42020000000000	2.85503000000000	2.32388000000000	2.85222000000000	2.98873000000000	2.83748000000000	2.52734000000000	2.86213000000000	2.57154000000000	2.92139000000000	2.95435000000000	3.33526000000000	3.13820000000000	3.37312000000000	2.86608000000000	3.31251000000000	2.96169000000000	3.90262000000000	3.40006000000000	3.63446000000000	3.54713000000000	3.79381000000000	3.59610000000000	3.60594000000000	2.65385000000000];
% y = [4.01855900000000	4.29814300000000	4.11349600000000	3.93863200000000	3.93099900000000	3.85839200000000	4.34850700000000	3.94040500000000	4.10449300000000	4.26308700000000	4.39086700000000	4.29474600000000	3.84532200000000	4.03620100000000	3.94417000000000	4.01266000000000	4.06407500000000	4.01409500000000	4.13746200000000	3.95329900000000	3.99318000000000	4.35744800000000	4.01765100000000	4.04075400000000	3.84885400000000	4.24916700000000	4.35627000000000	3.94958700000000	4.05809500000000	4.08132400000000	3.93970800000000	4.26375900000000	4.03052400000000	3.91495200000000	3.97946400000000	3.92641600000000	4.12718100000000	4.04920200000000	4.04680600000000	3.92203100000000	3.84157500000000	4.05403000000000	3.85448900000000	3.95856900000000	3.63504600000000	3.84521200000000	3.70471000000000	3.97746600000000	3.43991400000000	3.68392400000000	3.65320300000000	3.95041600000000	3.39538900000000	3.87730600000000	3.57939400000000	3.83647900000000	3.95331500000000	3.87088300000000	3.92833900000000	3.93082000000000	3.25199500000000	4.00760400000000	3.88830100000000	3.32344000000000	3.91195600000000	3.98561100000000	4.07736300000000	3.41884400000000	3.65785500000000	3.79705000000000	4.03602000000000	3.61262400000000	3.94652100000000	3.80580200000000	4.19453400000000	3.90618000000000	4.00345400000000	3.57583300000000	3.90046700000000	3.78060100000000	4.00905800000000	3.98037900000000	3.96195800000000	4.20845500000000	3.75133300000000	3.52855100000000	3.97579600000000	3.64430900000000	4.12336300000000	3.68106500000000	3.99615600000000	3.71451000000000	4.01426900000000	4.27521200000000	3.93291300000000	3.80315100000000	3.93587800000000	3.79443200000000	4.33183500000000	4.08567700000000	3.94963400000000	3.87948000000000	4.05754400000000	4.02717300000000	3.86897600000000	3.91406100000000	4.16151500000000	3.92801400000000	4.11373300000000	4.02717400000000	3.70051400000000	3.37067100000000	4.01929800000000	3.45215000000000	4.09661100000000	3.37547200000000	3.84877600000000	3.60481700000000	3.91383800000000	3.43688400000000	4.14255000000000	3.61463000000000	3.79517000000000	3.86928500000000	3.81756700000000	3.49969200000000	4.13665500000000	3.93466900000000	3.87778200000000	4.26074500000000	3.98432200000000	3.72271300000000	3.90331700000000	3.51421200000000	3.97706400000000	3.43750400000000	3.78429300000000	3.68624400000000	3.90582800000000	4.23540600000000	3.58885500000000	3.55138700000000	3.78561200000000	4.02047600000000	3.79306500000000	3.59274700000000	3.70526300000000	3.40637800000000	3.90141000000000	3.45967000000000	3.90926900000000	3.82136400000000	4.05090200000000	3.72039600000000	4.23562200000000	3.87255100000000	3.86440400000000	3.68372300000000	4.01180600000000	3.44961000000000	3.84380600000000	4.00933400000000	3.75803800000000	3.87229100000000	3.92742700000000	4.10399300000000	4.11272200000000	3.75436400000000	4.05154200000000	3.49076500000000	3.65380600000000	3.07684600000000	3.48013000000000	2.91519200000000	3.08508000000000	2.89027000000000	3.38223500000000	3.27033600000000	3.78288000000000	4.03617800000000	3.98309200000000	3.99250000000000];
% x = [ 2.98057000000000	0.556520000000000	2.99443000000000	0.733510000000000	3.52717000000000	0.838590000000000	3.24638000000000	1.08025000000000	3.25408000000000	1.28829000000000	3.01413000000000	1.25800000000000	2.98370000000000	1.26045000000000	3.36036000000000	1.24684000000000	2.91421000000000	1.47191000000000	3.47197000000000	1.40301000000000	3.45095000000000	1.75273000000000	3.39450000000000	1.60185000000000	3.45832000000000	1.55766000000000	3.35259000000000	1.54189000000000	3.12249000000000	1.57014000000000	3.37438000000000	3.15889000000000	3.39483000000000	3.08326000000000	3.17908000000000	3.17538000000000	3.26846000000000	3.41143000000000	3.28841000000000	3.52214000000000	3.36760000000000	3.46264000000000	3.15148000000000	3.48617000000000	3.21190000000000	3.29005000000000	3.47272000000000	3.06325000000000	3.50984000000000	3.60171000000000	3.21386000000000	3.35451000000000	3.09478000000000	3.27897000000000	3.33911000000000	3.38533000000000	3.17606000000000	3.31457000000000	3.57614000000000	3.19596000000000	2.96468000000000	3.23398000000000	3.49283000000000	3.26858000000000	3.53625000000000	3.18915000000000	3.30177000000000	3.32804000000000	3.22200000000000	3.63603000000000	3.26467000000000	3.63968000000000	3.39335000000000	3.54700000000000	3.24560000000000	3.75018000000000	3.47436000000000	3.25584000000000	3.17354000000000	3.52714000000000	3.16422000000000	3.46717000000000	3.49544000000000	3.35006000000000	3.14193000000000	3.20400000000000	3.17161000000000	3.39657000000000	3.03035000000000	3.17436000000000	3.11331000000000	3.55462000000000	3.00597000000000	3.35542000000000	3.02730000000000	3.43224000000000	3.29331000000000	3.33511000000000	3.06095000000000	3.32775000000000	3.26079000000000	3.46462000000000	3.76732000000000	3.84613000000000	3.09227000000000	3.26047000000000	2.78219000000000	2.92851000000000	2.90086000000000	3.47963000000000	2.99728000000000	3.34545000000000	2.89933000000000	3.18525000000000	3.28852000000000	3.35066000000000	3.28344000000000	3.19353000000000	3.13159000000000	3.43003000000000	2.96736000000000	3.26475000000000	3.47781000000000	3.70420000000000	3.35912000000000	3.54271000000000	3.52649000000000	3.78598000000000	3.16547000000000	3.16433000000000	2.86799000000000	3.14876000000000	2.54992000000000	2.18377000000000	2.56384000000000	2.31621000000000	2.55009000000000	3.11317000000000	3.35429000000000	3.43286000000000	3.93645000000000	4.49833000000000	4.12176000000000	4.74708000000000	4.13445000000000	4.41707000000000	4.24487000000000	4.30655000000000	3.72511000000000	3.55040000000000	3.18745000000000	3.04522000000000	2.51730000000000	2.54003000000000	2.00098000000000	2.15220000000000	1.94548000000000	1.78129000000000	1.78005000000000	1.69509000000000	1.69578000000000	1.88968000000000	1.83760000000000	2.35568000000000	2.62083000000000	2.95351000000000	3.41048000000000	4.04793000000000	4.41689000000000	4.51282000000000	4.45040000000000	4.17594000000000	3.61264000000000	3.55401000000000	3.13607000000000	3.03372000000000	3.06476000000000	3.21873000000000	2.91192000000000	2.82080000000000	2.69281000000000];
% y = [3.91291000000000	3.79202000000000	3.76828000000000	3.66917000000000	3.72784000000000	3.88596000000000	4.16765000000000	4.24377000000000	3.81304000000000	4.00120000000000	4.00338000000000	3.92310000000000	3.85668000000000	3.88289000000000	4.00125000000000	3.99806000000000	3.70625000000000	4.02407000000000	3.69413000000000	3.75320000000000	3.88530000000000	4.05235000000000	4.13474000000000	4.18728000000000	3.80041000000000	3.94340000000000	3.75705000000000	3.99416000000000	3.86911000000000	4.24934000000000	3.88190000000000	3.98883000000000	3.65660000000000	3.91609000000000	3.64737000000000	3.72618000000000	3.68343000000000	3.91269000000000	4.06486000000000	3.96820000000000	3.97049000000000	3.96609000000000	3.98677000000000	3.86798000000000	3.84989000000000	3.95392000000000	4.17010000000000	3.79829000000000	3.96002000000000	3.79567000000000	3.73694000000000	3.82572000000000	3.82347000000000	4.05289000000000	3.97218000000000	3.90459000000000	3.67228000000000	3.81698000000000	3.88296000000000	3.72735000000000	3.73134000000000	4.07856000000000	4.08101000000000	3.87239000000000	3.82872000000000	4.13118000000000	3.78826000000000	3.77766000000000	3.47146000000000	3.79693000000000	3.94531000000000	4.00909000000000	4.16609000000000	3.91320000000000	3.95215000000000	3.68771000000000	3.60512000000000	3.60888000000000	3.94036000000000	4.03047000000000	3.91364000000000	3.87719000000000	4.03651000000000	3.78700000000000	3.76164000000000	3.86291000000000	3.60498000000000	3.56745000000000	3.58855000000000	3.88533000000000	4.05437000000000	3.99821000000000	3.81620000000000	3.58419000000000	3.74455000000000	3.27527000000000	3.31723000000000	3.41074000000000	3.89547000000000	4.07732000000000	4.10529000000000	4.05653000000000	4.12724000000000	3.92456000000000	3.55093000000000	3.94555000000000	3.50522000000000	3.13317000000000	3.10859000000000	3.33195000000000	3.46607000000000	3.99263000000000	4.22128000000000	4.12861000000000	4.33293000000000	3.95008000000000	3.53888000000000	3.52911000000000	3.35247000000000	3.12908000000000	3.17609000000000	3.42119000000000	3.86861000000000	4.06351000000000	4.25387000000000	4.70391000000000	4.86999000000000	4.50629000000000	4.15454000000000	4.13529000000000	3.68807000000000	3.16623000000000	2.75865000000000	2.83079000000000	2.71241000000000	3.08339000000000	3.12853000000000	4.24775000000000	4.77011000000000	5.61147000000000	6.64454000000000	7.20000000000000	7.56154000000000	7.66572000000000	7.93973000000000	7.51769000000000	7.77975000000000	6.50871000000000	5.93852000000000	5.68036000000000	5.31267000000000	4.08721000000000	3.58392000000000	3.16130000000000	2.74939000000000	2.31895000000000	2.04091000000000	1.86705000000000	1.81918000000000	1.89482000000000	3.45582000000000	4.08079000000000	4.37008000000000	5.01303000000000	5.46735000000000	5.33898000000000	5.16337000000000	5.06373000000000	4.58566000000000	4.22094000000000	4.06194000000000	3.89743000000000	3.70474000000000	4.03514000000000	4.05976000000000	3.99895000000000	3.99975000000000	3.94033000000000	4.15482000000000	3.45792000000000 2.4];
% x = [2.89187000000000	3.10396000000000	3.08474000000000	2.79241000000000	2.82056000000000	2.50937000000000	2.58499000000000	2.36570000000000	2.48598000000000	2.62689000000000	2.86226000000000	2.45638000000000	2.83606000000000	2.57752000000000	2.76739000000000	2.66831000000000	2.71958000000000	2.66689000000000	2.45177000000000	2.65514000000000	2.86406000000000	2.59450000000000	2.51154000000000	2.42708000000000	2.72517000000000	2.52642000000000	2.87236000000000	2.79718000000000	3.15806000000000	2.78506000000000	3.34469000000000	2.92708000000000	2.78988000000000	2.42244000000000	2.46626000000000	2.10463000000000	2.09012000000000	1.95710000000000	2.25671000000000	2.23209000000000	2.66405000000000	2.25173000000000	2.51616000000000	2.65858000000000	2.57462000000000	2.96921000000000	2.93817000000000	2.66559000000000	3.16975000000000	2.53592000000000	2.85306000000000	2.49655000000000	2.79609000000000	2.64356000000000	2.66970000000000	2.28444000000000	2.52113000000000	2.05670000000000	2.46195000000000	2.17883000000000	2.02849000000000	1.79542000000000	2.01780000000000	1.58238000000000	1.36598000000000	1.32866000000000	1.37428000000000	1.32470000000000	1.27148000000000	1.24353000000000	1.32238000000000	1.07439000000000	1.19098000000000	0.824660000000000	0.975470000000000	0.783900000000000	0.891350000000000	0.789160000000000	0.805750000000000	0.816740000000000	0.909840000000000	0.762410000000000	0.782890000000000	0.612160000000000	0.488530000000000	0.420510000000000	0.371470000000000	0.315090000000000	0.327660000000000	0.582630000000000	0.639340000000000	0.637120000000000	0.700490000000000	0.607500000000000	0.556690000000000	0.559950000000000	0.674810000000000	0.710590000000000	0.713310000000000	0.634580000000000	0.511230000000000	0.655890000000000	0.870660000000000	0.909360000000000	0.866770000000000	0.818000000000000	0.970910000000000	0.943920000000000	0.911890000000000	0.620610000000000	0.624410000000000	0.538310000000000	0.543310000000000	0.486090000000000	0.483860000000000	0.438140000000000	0.674220000000000	0.566410000000000	0.653660000000000	0.697680000000000	0.702680000000000	0.806860000000000	0.780630000000000	0.926920000000000	1.06955000000000	1.46252000000000	1.21104000000000	1.10412000000000	1.20756000000000	1.30653000000000	1.83078000000000	1.74110000000000	1.44434000000000	1.53554000000000	2.10945000000000	1.75302000000000	1.99317000000000	2.62622000000000	2.50303000000000	2.45923000000000	3.10277000000000	3.97027000000000	4.09125000000000	3.96320000000000	4.17437000000000	4.35077000000000	4.82747000000000	5.65936000000000	4.46719000000000	3.88815000000000	4.00579000000000	3.25163000000000	3.68826000000000	3.56988000000000	3.84753000000000	4.35416000000000	5.08902000000000	4.51639000000000	3.46608000000000	3.35939000000000	4.27848000000000	4.34041000000000	4.60714000000000	3.53492000000000	3.72504000000000	3.86942000000000	4.63271000000000	3.19356000000000	4.47738000000000	3.60194000000000	4.17378000000000	3.33357000000000	4.56338000000000	3.40200000000000	4.55604000000000	3.96141000000000	4.06672000000000	3.90553000000000	3.59329000000000	3.71800000000000	4.33117000000000];
% y = [2.99799000000000	2.51714000000000	2.90360000000000	2.55315000000000	2.69008000000000	2.57872000000000	2.63142000000000	2.53633000000000	2.33352000000000	2.44163000000000	2.50680000000000	2.33930000000000	2.56686000000000	2.53943000000000	2.89819000000000	3.00646000000000	3.28815000000000	3.18131000000000	3.22956000000000	2.69708000000000	2.81334000000000	2.23319000000000	2.08574000000000	1.86450000000000	2.23806000000000	2.20806000000000	2.54116000000000	2.69654000000000	3.08153000000000	3.00987000000000	3.54299000000000	3.32826000000000	3.58435000000000	3.83596000000000	3.94915000000000	4.20976000000000	4.26660000000000	3.80713000000000	4.08782000000000	3.42490000000000	3.54484000000000	3.07190000000000	3.18307000000000	3.22404000000000	3.56735000000000	3.36505000000000	3.56505000000000	3.20267000000000	3.30257000000000	2.69478000000000	2.36302000000000	2.00345000000000	2.08365000000000	1.77541000000000	1.68738000000000	1.80793000000000	1.97221000000000	1.87101000000000	1.80493000000000	1.62540000000000	1.48747000000000	1.27350000000000	1.46881000000000	1.30212000000000	1.62524000000000	1.53385000000000	1.69651000000000	1.58003000000000	1.55291000000000	1.38628000000000	1.32739000000000	1.11247000000000	1.08046000000000	0.897440000000000	0.835550000000000	0.825310000000000	0.856860000000000	0.907380000000000	0.975790000000000	1.10763000000000	1.11306000000000	1.02905000000000	0.897920000000000	0.712360000000000	0.841510000000000	1.00774000000000	1.19583000000000	1.05927000000000	1.05277000000000	1.05946000000000	1.06736000000000	1.09977000000000	1.09655000000000	0.958060000000000	0.879250000000000	0.895230000000000	0.967500000000000	0.581810000000000	0.477060000000000	0.468070000000000	0.501480000000000	0.495780000000000	0.751660000000000	0.760740000000000	0.946010000000000	1.04095000000000	1.19282000000000	1.31235000000000	1.00932000000000	1.05902000000000	0.930860000000000	1.04958000000000	0.917690000000000	0.971650000000000	0.882860000000000	0.852820000000000	0.684360000000000	0.616520000000000	0.992820000000000	0.998310000000000	1.15189000000000	0.842670000000000	1.07892000000000	1.30429000000000	1.53315000000000	1.47088000000000	1.94010000000000	2.07654000000000	1.71720000000000	2.25887000000000	2.58286000000000	3.22308000000000	3.18957000000000	3.17875000000000	2.92415000000000	4.33876000000000	3.11647000000000	2.56333000000000	3.10509000000000	2.22118000000000	1.88142000000000	2.12714000000000	2.72211000000000	3.03959000000000	2.69606000000000	2.93346000000000	2.83628000000000	2.23670000000000	2.22385000000000	2.81451000000000	3.11156000000000	2.46061000000000	2.14762000000000	2.83182000000000	2.51302000000000	2.39770000000000	2.50636000000000	2.67676000000000	2.71287000000000	2.21734000000000	3.01048000000000	2.07705000000000	2.99535000000000	2.03032000000000	2.87003000000000	3.02717000000000	2.29428000000000	2.61978000000000	2.43522000000000	2.19281000000000	2.78560000000000	2.55145000000000	2.67016000000000	2.43163000000000	2.84654000000000	2.27267000000000	2.45236000000000	2.65591000000000	2.44208000000000	2.39639000000000	2.64873000000000];
% x = [3.79677000000000	4.21409000000000	4.46033000000000	4.27270000000000	4.22437000000000	4.45559000000000	4.06588000000000	3.86188000000000	3.85286000000000	3.84083000000000	4.09083000000000	4.01332000000000	4.37443000000000	4.80674000000000	4.87251000000000	4.22427000000000	3.98473000000000	3.46089000000000	3.46914000000000	3.35469000000000	3.90817000000000	4.21099000000000	4.72884000000000	5.05238000000000	4.89973000000000	4.33657000000000	3.69631000000000	3.63855000000000	3.54420000000000	3.77048000000000	4.43307000000000	4.77685000000000	4.70940000000000	4.34384000000000	3.77130000000000	3.42216000000000	3.68637000000000	4.65285000000000	4.74469000000000	5.00608000000000	4.20629000000000	3.35272000000000	3.14410000000000	3.55743000000000	5.19218000000000	6.12757000000000	5.68630000000000	4.33027000000000	3.23546000000000	3.15744000000000	4.20170000000000	5.40083000000000	5.95070000000000	4.26278000000000	3.01606000000000	2.83946000000000	4.92557000000000	6.87109000000000	7.09354000000000	4.69267000000000	2.53205000000000	3.52630000000000	6.85031000000000	7.99134000000000	4.90620000000000	2.32427000000000	4.57295000000000	7.32558000000000	5.08685000000000	2.89807000000000	5.57671000000000	7.07552000000000	3.32535000000000	3.83173000000000	5.29671000000000	4.04390000000000	3.77734000000000	4.09262000000000	3.99009000000000	4.95183000000000	4.62594000000000	4.10674000000000	3.73702000000000	4.76892000000000	4.61163000000000	3.15994000000000	4.94702000000000	5.06122000000000	5.42655000000000	3.69383000000000	2.94634000000000	5.30369000000000	5.05966000000000	3.66051000000000];
% y = [0.706170000000000	2.65216000000000	1.46687000000000	1.90986000000000	2.03844000000000	2.88687000000000	2.71961000000000	3.96050000000000	1.89946000000000	1.52884000000000	3.43112000000000	3.07133000000000	2.83266000000000	2.01704000000000	2.71447000000000	2.42217000000000	2.87992000000000	1.84411000000000	1.61286000000000	2.12028000000000	1.31287000000000	1.71660000000000	2.56556000000000	1.94579000000000	1.31018000000000	1.97366000000000	1.35987000000000	1.13207000000000	1.57442000000000	1.68867000000000	1.64996000000000	1.19745000000000	1.19519000000000	1.51882000000000	1.22660000000000	0.847760000000000	0.694320000000000	0.680390000000000	0.458990000000000	0.377540000000000	0.850920000000000	1.09074000000000	0.845070000000000	0.956420000000000	1.34507000000000	1.32735000000000	1.00856000000000	0.762920000000000	1.07691000000000	1.51125000000000	1.42524000000000	1.25186000000000	1.16347000000000	1.31495000000000	1.45872000000000	1.76662000000000	1.72727000000000	0.957010000000000	0.934280000000000	1.01107000000000	0.698910000000000	0.467130000000000	0.769330000000000	0.946260000000000	0.966790000000000	0.932720000000000	0.899710000000000	0.979460000000000	1.14385000000000	1.42100000000000	1.52098000000000	2.16566000000000	2.44084000000000	2.32326000000000	2.02545000000000	1.65132000000000	1.54944000000000	1.30973000000000	1.18562000000000	0.899170000000000	1.00146000000000	0.977640000000000	0.842120000000000	0.940230000000000	0.886340000000000	0.902200000000000	1.33556000000000	1.28481000000000	1.93348000000000	2.51146000000000	3.19231000000000	3.64825000000000	3.83218000000000	4.63958000000000];
x = [2.83144000000000	2.78147000000000	2.50307200000000	2.86489000000000	2.94668100000000	2.94453400000000	2.79573000000000	2.82202400000000	2.72905500000000	2.87582900000000	2.80831800000000	2.73360800000000	2.61692100000000	2.90584000000000	2.65166300000000	2.62289100000000	2.84902700000000	2.82988900000000	2.75692500000000	2.87518900000000	2.63991100000000	2.59395000000000	2.72599600000000	2.61629000000000	2.71882200000000	3.03975400000000	2.76441400000000	2.97145400000000	2.49111800000000	3.02185900000000	2.72456600000000	2.79958900000000	2.33727900000000	2.80835400000000	2.47112300000000	2.82782900000000	2.35246800000000	2.96513000000000	2.41764300000000	2.97843400000000	2.18486300000000	2.84615300000000	2.42176800000000	3.00608100000000	2.30264100000000	2.96727500000000	2.36085500000000	2.79337300000000	2.33640300000000	2.91631800000000	2.58243800000000	2.73148800000000	2.54620400000000	2.86461600000000	2.35280300000000	2.97694900000000	2.41092900000000	2.86683100000000	2.43735600000000	2.92876300000000	2.66732300000000	3.01297200000000	2.30214300000000	2.92569400000000	2.44961200000000	2.92407500000000	2.37289000000000	2.78749200000000	2.19634800000000	2.99175800000000	2.18535100000000	2.90674400000000	2.12126400000000	3.11954000000000	2.30781100000000	2.87745600000000	2.12585900000000	2.82241600000000	2.23471300000000	2.86185600000000	2.24283200000000	2.82694000000000	2.35369100000000	2.95948600000000	2.13816200000000	2.90903700000000	2.16517900000000	3.08257400000000	2.24184800000000	2.88140800000000	2.49294300000000	2.84260300000000	2.57445500000000	3.02248200000000	2.82299300000000	2.78023200000000	2.80651300000000	2.43301300000000	2.99204000000000	2.55502700000000	2.83974600000000	2.42835400000000	2.78601900000000	2.74936000000000	2.24646800000000	2.87323200000000	2.66883500000000	3.10294700000000	2.41493000000000	3.21557700000000	2.52400200000000	2.67738100000000	2.66614500000000	2.99769600000000	2.30661700000000	2.61889100000000	2.09317100000000	3.08595200000000	2.23893200000000	3.14339800000000	2.40983900000000	2.69771000000000	2.75750800000000	2.23172200000000	3.08705100000000	2.34152800000000	2.43476800000000	2.99736900000000	2.17744300000000	3.30310200000000	3.13998400000000	2.36461200000000	3.09723500000000	2.73857200000000	2.35743100000000	2.08375600000000	3.49224900000000	2.50666100000000	2.17504600000000	2.75329300000000	2.76261300000000	2.61844200000000	2.07770900000000	2.50245300000000	1.97833800000000	3.45547900000000	2.09484600000000	3.42044000000000	1.48930600000000	3.23864700000000	2.78378700000000	2.87315300000000	2.59660200000000	2.00415300000000	2.29716000000000	2.52358000000000	2.68040500000000	2.87659200000000	3.14735400000000	2.86109800000000	2.95676600000000	3.84174000000000	3.89131900000000	2.97199300000000	3.24946000000000	3.70531100000000	3.19997800000000	2.89072700000000	2.43815400000000	3.00285700000000	2.41470200000000	2.71186800000000	2.08094500000000	2.73465600000000	2.24537700000000	2.26078900000000	2.48389200000000	2.25737300000000	1.81592400000000	1.46863900000000	1.66607900000000	2.04084000000000	1.86335000000000	1.63513300000000	1.28601900000000	0.985665000000000	0.953473000000000	0.901359000000000	0.571207000000000	0.512871000000000	0.546945000000000	2.11634300000000	2.88144700000000	3.34672400000000	3.60974100000000	4.11866000000000	4.62912100000000	5.58621400000000	5.41661600000000	5.28759400000000	5.05848100000000];
y = [2.18054200000000	2.24177600000000	2.02661300000000	2.28989500000000	2.01843300000000	2.35334300000000	2.10695600000000	2.26029000000000	2.11715300000000	2.23401600000000	2.22927700000000	2.16931900000000	2.12520500000000	2.02539200000000	2.35299100000000	1.95950300000000	2.33395100000000	1.84468800000000	2.34639200000000	1.88475800000000	2.38553200000000	1.94315400000000	2.35997700000000	1.94505000000000	2.31813800000000	1.90902400000000	2.17740200000000	2.09659900000000	2.19129700000000	2.12364000000000	1.99543100000000	2.10256400000000	2.05614900000000	2.39164700000000	1.85645600000000	2.58172400000000	1.81897900000000	2.91567300000000	1.65945800000000	2.88670500000000	1.73655400000000	3.13572900000000	1.50948400000000	3.49523200000000	1.45247600000000	3.47711300000000	1.44008800000000	3.23380000000000	1.48618200000000	3.12518500000000	1.68892800000000	2.68916000000000	2.17518100000000	2.16916700000000	2.47677300000000	1.61067500000000	3.54964000000000	1.28541100000000	3.62811700000000	1.35212200000000	3.66526200000000	1.70288400000000	3.57118000000000	2.43052400000000	2.47864300000000	2.79224000000000	1.85545600000000	2.50218400000000	2.68901000000000	1.83571600000000	3.81617800000000	1.71540500000000	3.83858000000000	2.53148200000000	2.76690800000000	3.07705600000000	1.98126800000000	2.58483000000000	2.21703600000000	2.39326300000000	3.10173600000000	2.22834800000000	2.56414000000000	3.80201200000000	1.05171900000000	3.04838300000000	2.37952500000000	2.84495100000000	0.923024000000000	5.46358600000000	2.16399800000000	2.18250700000000	2.07262300000000	2.47883500000000	3.04068100000000	1.28821000000000	3.36255900000000	1.85751500000000	2.31077900000000	2.86549800000000	2.05109500000000	1.91518200000000	2.23650600000000	3.27007800000000	1.70617200000000	2.65215900000000	1.46686700000000	1.90986400000000	2.03844400000000	2.88687000000000	2.71961200000000	3.96049700000000	1.89946100000000	1.52884300000000	3.43111800000000	3.07132500000000	2.83266100000000	2.01703700000000	2.71447100000000	2.42216600000000	2.87991500000000	1.84410500000000	1.61285800000000	2.12028300000000	1.31286900000000	1.71659900000000	2.56556200000000	1.94579100000000	1.31017700000000	1.97365600000000	1.35986900000000	1.13206700000000	1.57441600000000	1.68867000000000	1.64996300000000	1.19744600000000	1.19518700000000	1.51882200000000	1.22659500000000	0.847764000000000	0.694320000000000	0.680391000000000	0.458988000000000	0.377540000000000	0.850921000000000	1.09073700000000	0.845068000000000	0.956415000000000	1.34507200000000	1.32734600000000	1.00855500000000	0.762916000000000	1.07691000000000	1.51125000000000	1.42524100000000	1.25186200000000	1.16346800000000	1.31495100000000	1.45872200000000	1.76661600000000	1.72727300000000	0.957013000000000	0.934282000000000	1.01106900000000	0.698906000000000	0.467130000000000	0.769327000000000	0.946256000000000	0.966789000000000	0.932717000000000	0.899709000000000	0.979461000000000	1.14384700000000	1.42099500000000	1.52098400000000	2.16566200000000	2.44083800000000	2.32325700000000	2.02545100000000	1.65132400000000	1.54943700000000	1.30972500000000	1.18561900000000	0.899168000000000	1.00145600000000	0.977643000000000	0.842115000000000	0.940231000000000	0.886344000000000	0.902201000000000	1.33556400000000	1.28481300000000	1.93347500000000	2.51145700000000	3.19230600000000	3.64824600000000	3.83218200000000	4.63957700000000	3.93549900000000	3.74040100000000	3.95867600000000];
% x = [0.1 0.2 0.3 0.1 0.2 0.1 0.3 10 11 3 5 6 9 0.4 0.1 0.2 12 3 8 9 ];
% y = [0.01 0.2 0.4 0.2 0.1 0.1 0.1 2 3 4 7 9 2 11 11 5 6 0.1 0.2 0.1 ];
numdata = length(x);
x = x'; y = y';
subplot(2,2,1); plot(x,y, 'o'); title('Original Data');

% step 2, finding a mean and subtracting
xmean = mean(x);
ymean = mean(y);
xnew = x - xmean*ones(numdata,1);
ynew = y - ymean*ones(numdata,1);
subplot(2,2,2); plot(xnew,ynew, 'o'); title('mean is deducted');

% step 3, covariance matrix
covariancematrix = cov(xnew,ynew);

% step 4, Finding Eigenvectors
[V,D] = eig(covariancematrix);
D = diag(D);
maxeigval = V(:,find(D==max(D)));
xx = [xnew,ynew];
% step 5, Deriving the new data set
% finding the projection onto the eigenvectors
finaldata=maxeigval'*[xnew,ynew]';
subplot(2,2,3);
stem(finaldata, 'DisplayName', 'finaldata', 'YDataSource', 'finaldata');
title('PCA 1D output ')

% we do a classification now
subplot(2,2,4);
title('Final Classification')
hold on
for i=1:size(finaldata,2)
    if  finaldata(i)>=0
        plot(x(i),y(i),'o')
        plot(x(i),y(i),'r*')
        
    else
        plot(x(i),y(i),'o')
        plot(x(i),y(i),'g*')
    end
    
end