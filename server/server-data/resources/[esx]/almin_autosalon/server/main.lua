ESX              = nil
local Categories = {}
local Vehicles   = {}
local System = {}
local br = 0

local System = {}
local br = 0

System.Vozila = {
	[1] = {name = "Dodge Challenger", model = "16challenger", price = 85000, gepek = 10, brzina = 120, category = "limuzina", imglink = "https://img.gta5-mods.com/q95/images/2015-dodge-challenger-add-on-stock-shaker-hellcat/d62c91-enb2017_8_6_11_16_55.jpg"},
	[2] = {name = "BMW M760i", model = "17m760i", price = 300000, category = "limuzina", imglink = "https://img.gta5-mods.com/q95/images/2017-bmw-m760/d2c67b-11.jpg"},
	[3] = {name = "Audi RS7", model = "2016rs7", price = 350000, category = "sport", imglink = "https://img.gta5-mods.com/q95/images/audi-rs7-sportback-2015-replace/efc07d-EVE-20171112214828.007.jpg"},
	[4] = {name = "Volkswagen Amarok", model = "amarok", price = 130000, category = "offroad", imglink = "https://img.gta5-mods.com/q95/images/2018-volkswagen-amarok-v6-add-on-replace/715b6d-GTA5%202019-01-18%2023-50-17-62.jpg"},
	[5] = {name = "Mercedes GT63 S", model = "rmodgt63", price = 250000, category = "limuzina", imglink = "https://img.gta5-mods.com/q95/images/mercedes-amg-gt63-s-coupe/cdb3c1-20190626001702_1.jpg"},
	[6] = {name = "Ford Mustang GT", model = "rmodmustang", price = 180000, category = "sport", imglink = "https://i.imgur.com/2vlurjN.jpg"},
	[7] = {name = "Fiat Punto", model = "punto", price = 20000, category = "hedzbek", imglink = "https://img.gta5-mods.com/q95/images/2010-fiat-punto-evo-sport/dfc010-GTA5%202016-08-06%2014-23-44.jpg"},
	[8] = {name = "BMW M5 E60", model = "m5e60", price = 240000, category = "limuzina", imglink = "https://img.gta5-mods.com/q85-w800/images/bmw-m5-e60/1ec216-7.jpg"},
	[9] = {name = "BMW M5 F90", model = "bmci", price = 240000, category = "limuzina", imglink = "https://img.gta5-mods.com/q95/images/bmw-m5-f90-2018-add-on-hq-template/7f7986-wmplayer%202018-01-14%2023-38-59-63.png"},
	[10] = {name = "Audi A8 L", model = "a8l", price = 240000, category = "limuzina", imglink = "https://img.gta5-mods.com/q95/images/2012-audi-a8l-w12-add-on-replace/6e6644-grand-theft-auto-v-01232017---15054710_32360099461_o.jpg"},
	[11] = {name = "Mercedes-Benz C63 Coupe AMG", model = "c63s", price = 230000, category = "kupe", imglink = "https://img.gta5-mods.com/q95/images/mercedes-benz-c63-coupe-amg-add-on-replace/eff5e9-z60zj2PM1EStkDDbXBmC5w_0_0.jpg"},
	[12] = {name = "CitroÃ«n C4", model = "citroc4", price = 18000, category = "hedzbek", imglink = "https://img.gta5-mods.com/q95/images/citroen-c4-add-on-replace/c0886b-AWTSDZkpv0afWYIrfE7xUg_0_0.jpg"},
	[13] = {name = "Dodge Charger Superbee 1971", model = "chargersb", price = 65000, category = "oldtimer", imglink = "https://img.gta5-mods.com/q95/images/1971-dodge-charger-superbee-addon-extras-auto-vent-custom-handling/fc3eb4-A19C04E3-00A4-4B70-B875-F7B8CBA7D76A.jpeg"},
	[14] = {name = "BMW M5 E34 1995 ", model = "e34", price = 60000, category = "limuzina", imglink = "https://img.gta5-mods.com/q95/images/1995-bmw-m5-e34-replace-add-on-tuning/c7cf83-12.jpg"},
	[15] = {name = "BMW M3 E30", model = "m3e30", price = 55000, category = "kupe", imglink = "https://img.gta5-mods.com/q95/images/1991-bmw-m3-e30/b798cb-jpeg10.jpg"},
	[16] = {name = "Audi R8 v10 ABT", model = "r8v10abt", price = 440000, category = "sport", imglink = "https://img.gta5-mods.com/q85-w800/images/audi-r8-v10-abt-add-on/d1ee86-r8abt.jpg"},
	[17] = {name = "Lamborghini Urus", model = "urus", price = 300000, category = "dzip", imglink = "https://img.gta5-mods.com/q95/images/lamborghini-urus-add-on-template/2c0ba0-GTA5%202019-04-09%2020-44-52.jpg"},
	[18] = {name = "Suzuki Hayabusa GSX1300 2015", model = "hayabusa", price = 120000, category = "motor", imglink = "https://img.gta5-mods.com/q95/images/suzuki-hayabusa-gsx1300-2015-v1-0-add-on-tunable/7cfa51-GTA5%202016-11-20%2016-01-24-70.jpg"},
	[19] = {name = "Alfa Romeo Giulia", model = "giulia", price = 110000, category = "limuzina", imglink = "https://img.gta5-mods.com/q95/images/alfa-romeo-giulia-quadrifoglio-17/3ba305-EVE-20180810222831.mp4_20180810_230438.747.png"},
	[20] = {name = "Lexus LX 570 2016", model = "lx570", price = 100000, category = "dzip", imglink = "https://img.gta5-mods.com/q95/images/lexus-lx-570-2016/6bf76b-3.jpg"},
	[21] = {name = "Kawasaki Z1000", model = "z1000", price = 80000, category = "motor", imglink = "https://img.gta5-mods.com/q95/images/kawasaki-z1000-add-on-tunable/e0758c-GTA5%202016-08-04%2012-10-22-40.jpg"},
	[22] = {name = "Audi Q8", model = "q820", price = 280000, category = "dzip", imglink = "https://img.gta5-mods.com/q75/images/audi-q8-50tdi-2020-add-on-fivem/2960e1-2.jpg"},
	[23] = {name = "Audi R8", model = "r820", price = 500000, category = "sport", imglink = "https://img.gta5-mods.com/q85-w800/images/audi-r8-2020-addon/2704b5-12.jpg"},
	[24] = {name = "Porsche Cayenne S", model = "pcs18", price = 190000, category = "dzip", imglink = "https://img.gta5-mods.com/q85-w800/images/porsche-cayenne-s-2018-add-on-replace-skyrix/e4c1bb-37711097124_85b3ddcb47_k.jpg"},
	[25] = {name = "Chevrolet Camaro", model = "cczl", price = 150000, category = "sport", imglink = "https://img.gta5-mods.com/q85-w800/images/chevrolet-camaro-zl1/ea77b0-23949384_1661280677248295_2078252915_o.png"},
	[26] = {name = "Jaguar F", model = "fpacehm", price = 180000, category = "dzip", imglink = "https://img.gta5-mods.com/q85-w800/images/jaguar-f-pace-hamann-edition/d468d7-23889310187_3c1b5ebe04_k.jpg"},
	[27] = {name = "Tesla Roadster 2020", model = "tr22", price = 550000, category = "sport", imglink = "https://img.gta5-mods.com/q85-w800/images/tesla-roadster-2020-add-on-replace-auto-spoiler/34aa2e-Wild%20Oats%20Drive%202017-12-15%2023-53-36.jpg"},
	[28] = {name = "Yamaha R6", model = "r6", price = 50000, category = "motor", imglink = "https://img.gta5-mods.com/q85-w800/images/yamaha-yzf-r6-2017/7d48e1-enb2017_7_27_01_26_06.jpg"},
	[29] = {name = "Lada Niva", model = "urban", price = 80000, category = "dzip", imglink = "https://img.gta5-mods.com/q85-w800/images/niva-urban-2016/608a69-0SVW1uuyRcs.jpg"},
	[30] = {name = "Lada Riva", model = "lada2107", price = 25000, category = "limuzina", imglink = "https://img.gta5-mods.com/q85-w800/images/vaz-2107-lada-riva-add-on-tuning/98d166-2016-02-24_00004.jpg"},
	[31] = {name = "Fiat Punto", model = "punto1", price = 5000, category = "limuzina", imglink = "https://upload.wikimedia.org/wikipedia/commons/8/8a/1998_Fiat_Punto_SX_Selecta_1.2_Front.jpg"},
	[32] = {name = "Volkswagen Touareg R50", model = "R50", price = 95000, category = "dzip", imglink = "https://img.gta5-mods.com/q85-w800/images/volkswagen-touareg-2008-r50-add-on-tunable-replace/31b057-0_167499_ffb7da0_X4L.jpg"},
	[33] = {name = "Volkswagen Buba", model = "fusca", price = 2500, category = "limuzina", imglink = "https://img.gta5-mods.com/q85-w800/images/1968-volkswagen-fusca/73f134-GTA5%202016-10-17%2022-01-58-655.jpg"},
	[34] = {name = "Yugo Koral 45", model = "yugo", price = 3500, category = "kupe", imglink = "https://img.gta5-mods.com/q95/images/zastava-yugo-koral-45/9bee36-k2.jpg"},
	[35] = {name = "Mercedes G65", model = "g65amg", price = 580000, category = "dzip", imglink = "https://img.gta5-mods.com/q85-w800/images/mercedes-benz-g63-amg/d7649a-0_167ced_b5244511_orig.jpg"},
	[36] = {name = "BMW 750I", model = "BMWE38", price = 150000, category = "limuzina", imglink = "https://img.gta5-mods.com/q95/images/bmw-750i-e38-add-on-replace/7c44fb-2016-03-06_00005.jpg"},
	[37] = {name = "Audi A6", model = "a6", price = 280000, category = "limuzina", imglink = "https://img.gta5-mods.com/q85-w800/images/audi-a6-20-add-on-tuning-lod/624999-enb2020_7_26_09_35_48.jpg"},
	[38] = {name = "Audi S1", model = "s1", price = 150000, category = "kupe", imglink = "https://img.gta5-mods.com/q85-w800/images/2016-audi-s1/b772ec-271590_20160906035743_1.png"},
	[39] = {name = "Audi S3", model = "S3", price = 70000, category = "kupe", imglink = "https://img.gta5-mods.com/q85-w800/images/audi-s3-add-on/1bce67-20171125135711_1.jpg"},
	[40] = {name = "Audi SQ5", model = "audsq517", price = 180000, category = "dzip", imglink = "https://img.gta5-mods.com/q85-w800/images/audi-sq5-2017-addon-fivem/863ed1-20200929203000_1.jpg"},
	[41] = {name = "Bmw E90", model = "e90", price = 40000, category = "limuzina", imglink = "https://img.gta5-mods.com/q95/images/bmw-330i-e90-pre-lci-add-on-replace-livery-extras/fbf3a7-Screenshot%20(259)-1.png"},
	[42] = {name = "Bmw X6M", model = "x6m", price = 350000, category = "dzip", imglink = "https://img.gta5-mods.com/q85-w800/images/bmw-x6m-f16-rmod-customs/24f6c2-20200318164149_1.jpg"},
	[43] = {name = "Mercedes S63 W222", model = "s63w222", price = 390000, category = "limuzina", imglink = "https://i.imgur.com/rqUpY2f.jpg"},
	[44] = {name = "Golf MK6", model = "golfmk6", price = 50000, category = "kupe", imglink = "https://img.gta5-mods.com/q85-w800/images/volkswagen-golf-mk6-5-door-addon-v0-1/c4082e-GTA5.jpg"},
	[45] = {name = "Peugeot 3008", model = "rocoto", price = 30000, category = "dzip", imglink = "https://img.gta5-mods.com/q95/images/en-fr-peugeot-3008-2018-add-on-replace/e67c06-30081.jpg"},
	[46] = {name = "Skoda Karoq", model = "karoq", price = 50000, category = "dzip", imglink = "https://img.gta5-mods.com/q85-w800/images/skoda-karoq-2018-dinozzomodding/c74fbc-20190317194947_1.jpg"},
	[47] = {name = "Skoda Octavia", model = "17octavia", price = 30000, category = "kupe", imglink = "https://img.gta5-mods.com/q85-w800/images/2017-skoda-octavia-add-on-replace-dirt-map/7940ed-foto1.jpg"},
	[48] = {name = "Yamaha NMax", model = "nmax155", price = 90000, category = "motor", imglink = "https://img.gta5-mods.com/q85-w800/images/2018-yamaha-n-max/18cd15-69650209_2575142815850138_7603293656790859776_n.jpg"},
	[49] = {name = "Mercedes W210", model = "w210", price = 20000, category = "limuzina", imglink = "https://img.gta5-mods.com/q85-w800/images/mercedes-benz-e420-w210-add-on-replace/9b1eab-2016-01-26_00017.jpg"},
	[50] = {name = "BMW M5 F11", model = "16m5", price = 210500, category = "kupe", imglink = "https://img.gta5-mods.com/q95/images/2018-maybach-s650/9c12fb-QQ%E5%9B%BE%E7%89%8720190110011141.jpg"},
	[51] = {name = "Mercedes Sls 63 Amg", model = "slsamg", price = 300000 , category = "kupe", imglink = "https://img.gta5-mods.com/q95/images/mercedes-sls-amg-autovista-add-on-replace-template/86a5ee-GTA5%2023-01-2019%2017-37-58-597.jpg"},
	[52] = {name = "Audi RS5", model = "rs5", price = 150000 , category = "kupe", imglink = "https://libertycity.net/uploads/download/gta5_audi/fulls/k6fetkkkm6m8n31vkt1gcg96l3/14816503795260_4.jpg"},
	[53] = {name = "Alfa Giulietta", model = "argiu", price = 70000 , category = "kupe", imglink = "https://img.gta5-mods.com/q95/images/alfa-romeo-giulietta-quadrifoglio-verde-add-on-replace/422f9e-1.jpg"},
	[54] = {name = "BMW M3 F80", model = "m3f80", price = 140000 , category = "limuzina", imglink = "https://img.gta5-mods.com/q95/images/2015-bmw-m3-f80-add-on-tuning-analog-digital-dials/bdb932-20.jpg"},
	[55] = {name = "Audi A4", model = "aaq4", price = 160000 , category = "limuzina", imglink = "https://img.gta5-mods.com/q95/images/2017-police-audi-a4-quattro-pack/4c81dd-GTA5%202016-07-06%2012-18-00-200.jpg"},
	[56] = {name = "Bentley Continental", model = "bnteam", price = 450000 , category = "kupe", imglink = "https://img.gta5-mods.com/q95/images/bentley-continental-gt-2018-1-0-replace-addon/03814f-20180123000210_1.jpg"},
	[57] = {name = "Audi S8", model = "audis8om", price = 200000 , category = "limuzina", imglink = "https://img.gta5-mods.com/q95/images/2013-audi-s8-d4-add-on-tuning/291624-GTA5%202017-10-04%2016-19-47-28.jpg"},
	[58] = {name = "Bentlay Bentayga", model = "bentaygam", price = 550000 , category = "kupe", imglink = "https://img.gta5-mods.com/q95/images/2017-bentley-bentayga-add-on-tuning-analog-digital-dials/3a4cb7-53.jpg"},
	[59] = {name = "BMW M2", model = "m2f22", price = 190000 , category = "kupe", imglink = "https://img.gta5-mods.com/q95/images/2016-bmw-m2-add-on-replace-tuning-template/c0f966-1.jpg"},
	[60] = {name = "BMW M4", model = "M4F82", price = 200000 , category = "limuzina", imglink = "https://img.gta5-mods.com/q95/images/2015-bmw-f82-m4-fully-tunable/a27331-20160929022552_1.jpg"},
	[61] = {name = "Audi S4", model = "s4avant", price = 145000 , category = "kupe", imglink = "https://img.gta5-mods.com/q95/images/audi-s4-avant-2013-add-on-replace/e4a24f-s4avant3.jpg"},
	[62] = {name = "Audi RS6", model = "rs6sedan", price = 140000 , category = "limuzina", imglink = "https://img.gta5-mods.com/q95/images/audi-rs6-2009-add-on/a81473-GTA5%202017-06-16%2015-15-06-37.jpg"},
	[63] = {name = "Yamaha Tmax", model = "tmax", price = 60000 , category = "motor", imglink = "https://img.gta5-mods.com/q95/images/yamaha-tmax-500-add-on/087456-GTA5%202016-04-28%2020-05-57-97.jpg"},
	[64] = {name = "BMW 850", model = "850", price = 130000 , category = "limuzina", imglink = "https://img.gta5-mods.com/q95/images/1995-bmw-850csi/8cbf6e-6.jpg"},
	[65] = {name = "Mercedes AMG GTC", model = "amggtc", price = 340000 , category = "kupe", imglink = "https://img.gta5-mods.com/q95/images/mercedes-benz-amg-gt-r-c-roadster-add-on-extras-wheels-tuning-lods/bf7d6c-f.jpg"},
	[66] = {name = "Audi RS7 2020", model = "RS72020", price = 270000 , category = "limuzina", imglink = "https://img.gta5-mods.com/q95/images/audi-rs7-2020-beta/651c8b-rs71.jpg"},
	[67] = {name = "Passat B8", model = "passat", price = 140000 , category = "limuzina", imglink = "https://img.gta5-mods.com/q95/images/2016-volkswagen-passat-b8-add-on/c78951-3.jpg"},
	[68] = {name = "Golf 7", model = "mk7", price = 140000 , category = "kupe", imglink = "https://img.gta5-mods.com/q95/images/volkswagen-golf-7-gti-fmf-projectteam/1b0243-6.jpg"},
	[69] = {name = "E63 AMG", model = "e63amg", price = 180000 , category = "limuzina", imglink = "https://img.gta5-mods.com/q95/images/mercedes-benz-e63-amg-toto907/d34236-GTA5%202016-07-25%2020-10-16-41%20copy.JPG"},
	[70] = {name = "Range Rover Sport", model = "svr14", price = 190000 , category = "dzip", imglink = "https://img.gta5-mods.com/q95/images/range-rover-sport-svr-2016/ddeedf-rr1.jpg"},
	[71] = {name = "C63 Cabrio", model = "mers63c", price = 190000 , category = "kupe", imglink = "https://img.gta5-mods.com/q95/images/mercedes-s63-amg-cabriolet-replace/1c8e67-16.png"},
	[72] = {name = "Audi RS6", model = "rmodrs6", price = 320000 , category = "limuzina", imglink = "https://i.ytimg.com/vi/qgYTqqrq7Y8/maxresdefault.jpg"},
	[73] = {name = "Porsche 911", model = "911tbs", price = 450000 , category = "kupe", imglink = "https://img.gta5-mods.com/q85-w800/images/2016-porsche-911-turbo-s-add-on-replace-auto-spoiler-animated-template/b9cd52-1.jpg"},
	[74] = {name = "Audi Q7", model = "Q7", price = 250000 , category = "dzip", imglink = "https://img.gta5-mods.com/q95/images/2016-audi-q7/72021d-GTA5_2016_05_10_09_18_18_755.jpg"},
	[75] = {name = "Audi S8D2", model = "s8d2", price = 150000 , category = "limuzina", imglink = "https://img.gta5-mods.com/q85-w800/images/1998-audi-s8-d2-us-6spd-add-on-replace-tuning-extras/f22761-1.jpg"},
	[76] = {name = "Bentley Continental", model = "cgts", price = 370000 , category = "kupe", imglink = "https://img.gta5-mods.com/q85-w800/images/bentley-continental-gt-2012/3f70a0-0_113fe4_e908eca6_orig.jpg"},
	[77] = {name = "Bmw I8", model = "i8", price = 520000 , category = "kupe", imglink = "https://img.gta5-mods.com/q85-w800/images/2015-bmw-i8/ab959c-2683945.jpg"},
	[78] = {name = "Brabus Gt63s", model = "rmodgt63", price = 450000 , category = "limuzina", imglink = "https://media.techeblog.com/images/brabus-rocket-900-one-of-ten-mercedes-amg.jpg"},
	[79] = {name = "Buggati La Voiture", model = "rmodbugatti", price = 1250000 , category = "kupe", imglink = "https://img.gta5-mods.com/q95/images/bugatti-la-voiture-noire-add-on/3051d8-PGTA51835468369.jpg"},
	[80] = {name = "Ferrari F12", model = "rmodf12tdf", price = 1200000 , category = "kupe", imglink = "https://scardigest.s3.amazonaws.com/wp-content/uploads/20200822200945/Ferrari-F12-Berlinetta-2-1.jpg"},
	[81] = {name = "Focus RS", model = "focusrs", price = 70000 , category = "limuzina", imglink = "https://img.gta5-mods.com/q95/images/ford-focus-rs-2017-add-on-replace-tuning-template-multi-livery/66172e-GTA5%2016-04-2017%2003-13-47-638.jpg"},
	[82] = {name = "Lamborghini Sian", model = "sianr", price = 1500000 , category = "kupe", imglink = "https://img.gta5-mods.com/q95/images/lamborghini-sian-fkp37/755548-20191031213501_1.jpg"},
	[83] = {name = "BMW M8", model = "rmodbmwm8", price = 250000 , category = "kupe", imglink = "https://img.gta5-mods.com/q95/images/bmw-m850i-add-on-no-interior-a3813b80-5386-4c93-a703-d9c78edd33a9/1bb401-7.jpg"},
	[84] = {name = "Nissan 370Z", model = "370z", price = 120000 , category = "kupe", imglink = "https://img.gta5-mods.com/q95/images/2016-nissan-370z-nismo-z34/5f2437-0_157e79_650916fc_orig.jpg"},
	[85] = {name = "Porsche Panamera", model = "pturismo", price = 450000 , category = "limuzina", imglink = "https://img.gta5-mods.com/q95/images/2018-porsche-panamera-turbo-replace/d5be05-Desktop%20Screenshot%202018.09.10%20-%2019.02.01.08_08.jpg"},
	[86] = {name = "Range Rover Velar", model = "18Velar", price = 180000 , category = "dzip", imglink = "https://img.gta5-mods.com/q95/images/2018-range-rover-velar/8c0bb7-QQ%E5%9B%BE%E7%89%8720190609113942.jpg"},
	[87] = {name = "Toyota Camry", model = "camry55", price = 80000 , category = "limuzina", imglink = "https://i.ytimg.com/vi/WYmOVXwMPYk/maxresdefault.jpg"},
	[88] = {name = "Sultan", model = "sultan", price = 1000 , category = "kupe", imglink = "https://imgur.com/nKWn3j4.png"},

}

System.Kategorije = {
	[1] = {name = "kupe", label="Kupe"},
	[2] = {name = "dzip", label="Dzip"},
	[3] = {name = "limuzina", label="Limuzina"},
	[4] = {name = "motor", label="Motor"},
	[5] = {name = "sport", label="Sportski"},
	[6] = {name = "offroad", label="Off road"},
	[7] = {name = "donatosko", label="Donatorsko"},
	[8] = {name = "oldtimer", label="Oldtimer"},

}

function vozila()
	local vozila = System.Vozila
	local kategorije = System.Kategorije
	for i=1, #vozila, 1 do
		local vozilo = vozila[i]

		for j=1, #kategorije, 1 do
		   if kategorije[j].name == vozilo.category then
		    vozilo.categoryLabel = kategorije[j].label
		    br = br + 1
		    break
		   end
		end
		table.insert(vozila, vozilo)
	end
	TriggerClientEvent('esx_vehicleshop:sendCategories', -1, System.Kategorije)
	TriggerClientEvent('esx_vehicleshop:sendVehicles', -1, vozila)
	print("^6 System >> ^2Ucitano je " .. br .. " vozila iz baze")
end
vozila()

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

Citizen.CreateThread(function()
	local char = Config.PlateLetters
	char = char + Config.PlateNumbers
	if Config.PlateUseSpace then char = char + 1 end

	if char > 8 then end
end)

RegisterCommand('uzmiauto', function(source, args)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if args[1] ~= nil and xPlayer.job.name == 'autosalon' then
		xPlayer.triggerEvent('client:uzmiauto', args[1])
	end
end)

RegisterCommand('stvori', function(source, args)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if args[1] ~= nil and xPlayer.job.name == 'autosalon' then
		xPlayer.triggerEvent('client:uzmiauto2', args[1])
	end
end)


RegisterServerEvent('uzmiauto:system')
AddEventHandler('uzmiauto:system', function (vehicleProps)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	MySQL.Async.execute('INSERT INTO owned_vehicles (owner, plate, vehicle) VALUES (@owner, @plate, @vehicle)',
	{
		['@owner']   = xPlayer.identifier,
		['@plate']   = vehicleProps.plate,
		['@vehicle'] = json.encode(vehicleProps)
	}, function (rowsChanged)
		TriggerClientEvent("pNotify:SendNotification", _source, {text = "Vozilo sa tablicama " .. vehicleProps.plate .. " sada pripada vama.", type = "success", queue = "success", timeout = 2000, layout = "center"})
	end)
end)

ESX.RegisterServerCallback('esx_vehicleshop:getCategories', function (source, cb)
	cb(System.Kategorije)
end)

ESX.RegisterServerCallback('esx_vehicleshop:getVehicles', function (source, cb)
	cb(System.Vozila)
end)

ESX.RegisterServerCallback('esx_vehicleshop:buyVehicle', function (source, cb, price)
	local xPlayer     = ESX.GetPlayerFromId(source)
	local vehicleData = nil
	if xPlayer.getMoney() >= price then
		xPlayer.removeMoney(price)
		cb(true)
	else
		cb(false)
	end
end)

ESX.RegisterServerCallback('esx_vehicleshop:isPlateTaken', function (source, cb, plate)
	MySQL.Async.fetchAll('SELECT * FROM owned_vehicles WHERE plate = @plate', {
		['@plate'] = plate
	}, function (result)
		cb(result[1] ~= nil)
	end)
end)

ESX.RegisterUsableItem('salonkatalog', function(source)
	TriggerClientEvent('otvori:katalog', source)
end)

RegisterServerEvent('katalog:dajitem')
AddEventHandler('katalog:dajitem', function()
    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(source)
	local item = xPlayer.getInventoryItem('salonkatalog').count
	if item < 1 then
		xPlayer.addInventoryItem('salonkatalog', 1)
	else
    	TriggerClientEvent("pNotify:SendNotification", _source, {text = 'Vec imate katalog!', type = "success", queue = "success", timeout = 1500, layout = "center"})
	end
end)


RegisterCommand('dajkljuc', function(source, args)	
	myself = source
	other = args[1]
	if args[1] ~= nil then
	else
            TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, "Nepostojeci ID!")
			return
	end

	local plate1 = args[2]
	local plate2 = args[3]
	local plate3 = args[4]
	local plate4 = args[5]
	
  
	if plate1 ~= nil then plate01 = plate1 else plate01 = "" end
	if plate2 ~= nil then plate02 = plate2 else plate02 = "" end
	if plate3 ~= nil then plate03 = plate3 else plate03 = "" end
	if plate4 ~= nil then plate04 = plate4 else plate04 = "" end
  
  
	local plate = (plate01 .. " " .. plate02 .. " " .. plate03 .. " " .. plate04)

	
	mySteamID = GetPlayerIdentifiers(source)
	mySteam = mySteamID[1]
	myID = ESX.GetPlayerFromId(source).identifier
	myName = ESX.GetPlayerFromId(source).name

	targetSteamID = GetPlayerIdentifiers(args[1])
	targetSteamName = ESX.GetPlayerFromId(args[1]).name
	targetSteam = targetSteamID[1]
	
	MySQL.Async.fetchAll(
        'SELECT * FROM owned_vehicles WHERE plate = @plate',
        {
            ['@plate'] = plate
        },function(result)
        	if result[1] ~= nil then
                local playerName = ESX.GetPlayerFromIdentifier(result[1].owner).identifier
				local pName = ESX.GetPlayerFromIdentifier(result[1].owner).name
				CarOwner = playerName
				print("Car Transfer ", myID, CarOwner)
				if myID == CarOwner then
					print("Transfered")
					
					data = {}
						TriggerClientEvent('chatMessage', other, "^4Auto sa tablicama ^*^1" .. plate .. "^r^4je prebacen tebi od: ^*^2" .. myName)
			 
						MySQL.Sync.execute("UPDATE owned_vehicles SET owner=@owner WHERE plate=@plate", {['@owner'] = targetSteam, ['@plate'] = plate})
						TriggerClientEvent('chatMessage', source, "^4Ti si  ^*^3prebacio^0^4 tvoje vozilo sa tablicom^*^1" .. plate .. "\" ^r^4:^*^2".. targetSteamName)
				else
					print("Did not transfer")
					TriggerClientEvent('chatMessage', source, "^*^1Ovo nije tvoje vozilo!")
				end
			else
				TriggerClientEvent('chatMessage', source, "^1^*GRESKA: ^r^0Tablice ovog vozila ne postoje ili nisu dobro napisane(VELIKIM SLOVIMA)!")
            end
		
        end)

end)
