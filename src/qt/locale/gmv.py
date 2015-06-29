dirs = ["unpay_bar.ts",
"unpay_bg.ts",
"unpay_ca.ts",
"unpay_cmn.ts",
"unpay_cs.ts",
"unpay_da.ts",
"unpay_de.ts",
"unpay_el.ts",
"unpay_en.ts",
"unpay_eo.ts",
"unpay_es.ts",
"unpay_fi.ts",
"unpay_fr.ts",
"unpay_hu_HU.ts",
"unpay_it.ts",
"unpay_lv_LV.ts",
"unpay_nb.ts",
"unpay_nl.ts",
"unpay_pl.ts",
"unpay_pt.ts",
"unpay_pt_BR.ts",
"unpay_ru.ts",
"unpay_sk.ts",
"unpay_sv.ts",
"unpay_tr.ts",
"unpay_vi.ts",
"unpay_zh_CN.ts",
"unpay_zh_HK.ts",]

import os 

for d in dirs:
	os.system("git mv "+ d + " mobicoin"+d[5:])