#!/bin/bash
# plat define
plat_array=(yy 37wan 360 9787 6711 xunlei liebao xiongdiwan kugou g2 yaowan changyou 5ding 5399 sogou 51wan shunwang 91wan kuwo xy 51 sina baidu 2144 49you 99yx 79u 160yx 38youxi kuaiwan ibaiyu 1010g qidian lehihi dahei tongcheng pptv 6637 17lailai 11yeyou 1797wan fenghuang 602 kaixin 265g fengxing 1737game 63wan bigzhu 66you 11 17hihi 5577yx 7k7k 65com baofeng 1666 178 1073 5599 76ju 7911 sqyou aoyou ganwan qianye pps yile wan73 quanquan 1798game rising shenqi 63 kakaba 53wan 2133 666wan u9 37taobao gyyx 70w 52xiyou renren 883wan mayiyou 73k 777wan 28y letv zhigame yx9158 yuanlai sdo yzwan gtv 65wan 93pk zixia pingan yeele 98xianyou tiexue tianya 977pk dianhun 6cn zongheng 360uu 666wan1 77313 7433 126wan 175wan 2769 wa3 71you lexiang 511wan 7477 137game jwwan 37k 1188 wujiwan jiayuan v1cn 977you hupu 1758 yyu0 y261 newswjoy tgbus 7riri 3kyou yeyou8 3937 40407 19youxi 353wan mix7976 dawangyou 652g 119wan 8886wan wujiyx 7280 0808wan huohou xyx bigzhu2 mixsix 2345 666wan2 wujiwan1 3kyou2)
plat_id=(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144 145 146 147 148 149 150 151 152 153 154 155 156 157 )
plat_num=${#plat_array[@]}

for ((i=0;i<plat_num;i++)) 
do
echo fyws_${plat_array[i]} ${plat_id[i]}
done
