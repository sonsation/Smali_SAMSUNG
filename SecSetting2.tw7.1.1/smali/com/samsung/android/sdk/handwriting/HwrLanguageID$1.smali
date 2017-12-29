.class Lcom/samsung/android/sdk/handwriting/HwrLanguageID$1;
.super Ljava/util/HashMap;
.source "HwrLanguageID.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/handwriting/HwrLanguageID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 74

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/util/HashMap;-><init>()V

    const/16 v69, 0x0

    .local v69, "TYPE_ZH_CN":I
    const/16 v41, 0x1

    .local v41, "TYPE_KO_KR":I
    const/16 v42, 0x2

    .local v42, "TYPE_KO_KR_NOHANJA":I
    const/16 v18, 0xa

    .local v18, "TYPE_EN_US":I
    const/16 v27, 0xb

    .local v27, "TYPE_FR_FR":I
    const/16 v13, 0xc

    .local v13, "TYPE_DE_DE":I
    const/16 v37, 0xd

    .local v37, "TYPE_IT_IT":I
    const/16 v54, 0xe

    .local v54, "TYPE_PT_PT":I
    const/16 v19, 0xf

    .local v19, "TYPE_ES_ES":I
    const/16 v57, 0x10

    .local v57, "TYPE_RU_RU":I
    const/16 v38, 0x53

    .local v38, "TYPE_JA_JP":I
    const/16 v70, 0x54

    .local v70, "TYPE_ZH_HK":I
    const/16 v71, 0x55

    .local v71, "TYPE_ZH_TW":I
    const/16 v3, 0x56

    .local v3, "HWRDBTYPE_NUMERIC":I
    const/16 v48, 0x57

    .local v48, "TYPE_MS_MY":I
    const/16 v65, 0x58

    .local v65, "TYPE_TR_TR":I
    const/16 v31, 0x59

    .local v31, "TYPE_HI_IN":I
    const/16 v64, 0x5a

    .local v64, "TYPE_TH_TH":I
    const/16 v5, 0x5b

    .local v5, "TYPE_AR_SA":I
    const/16 v24, 0x5c

    .local v24, "TYPE_FA_IR":I
    const/16 v56, 0x5d

    .local v56, "TYPE_RO_RO":I
    const/16 v10, 0x5e

    .local v10, "TYPE_CS_CZ":I
    const/16 v52, 0x5f

    .local v52, "TYPE_PL_PL":I
    const/16 v59, 0x60

    .local v59, "TYPE_SL_SI":I
    const/16 v11, 0x61

    .local v11, "TYPE_DA_DK":I
    const/16 v49, 0x62

    .local v49, "TYPE_NB_NO":I
    const/16 v51, 0x63

    .local v51, "TYPE_NL_NL":I
    const/16 v63, 0x64

    .local v63, "TYPE_SV_SE":I
    const/16 v28, 0x65

    .local v28, "TYPE_GA_IE":I
    const/16 v33, 0x66

    .local v33, "TYPE_HU_HU":I
    const/16 v43, 0x67

    .local v43, "TYPE_LT_LT":I
    const/16 v9, 0x68

    .local v9, "TYPE_CA_ES":I
    const/16 v6, 0x69

    .local v6, "TYPE_AZ_AZ":I
    const/16 v68, 0x6a

    .local v68, "TYPE_VI_VN":I
    const/16 v8, 0x6b

    .local v8, "TYPE_BG_BG":I
    const/16 v40, 0x6c

    .local v40, "TYPE_KK_KZ":I
    const/16 v66, 0x6d

    .local v66, "TYPE_UK_UA":I
    const/16 v14, 0x6e

    .local v14, "TYPE_EL_GR":I
    const/16 v39, 0x6f

    .local v39, "TYPE_KA_GE":I
    const/16 v67, 0x70

    .local v67, "TYPE_UR_PK":I
    const/16 v30, 0x71

    .local v30, "TYPE_HE_IL":I
    const/16 v60, 0xc8

    .local v60, "TYPE_SQ_AL":I
    const/16 v34, 0xc9

    .local v34, "TYPE_HY_AM":I
    const/16 v32, 0xca

    .local v32, "TYPE_HR_HR":I
    const/16 v25, 0xcb

    .local v25, "TYPE_FI_FI":I
    const/16 v36, 0xcc

    .local v36, "TYPE_IS_IS":I
    const/16 v58, 0xce

    .local v58, "TYPE_SK_SK":I
    const/16 v4, 0xcf

    .local v4, "TYPE_AF_ZA":I
    const/16 v44, 0xd0

    .local v44, "TYPE_LV_LV":I
    const/16 v46, 0xd1

    .local v46, "TYPE_MN_MN":I
    const/16 v22, 0xd2

    .local v22, "TYPE_ET_EE":I
    const/16 v47, 0xd3

    .local v47, "TYPE_MR_IN":I
    const/16 v7, 0xd4

    .local v7, "TYPE_BE_BY":I
    const/16 v23, 0xd5

    .local v23, "TYPE_EU_ES":I
    const/16 v29, 0xd6

    .local v29, "TYPE_GL_ES":I
    const/16 v45, 0xd7

    .local v45, "TYPE_MK_MK":I
    const/16 v62, 0xd8

    .local v62, "TYPE_SR_LATN_RS":I
    const/16 v61, 0xd9

    .local v61, "TYPE_SR_CYRL_RS":I
    const/16 v17, 0x12c

    .local v17, "TYPE_EN_GB":I
    const/16 v15, 0x12d

    .local v15, "TYPE_EN_AU":I
    const/16 v16, 0x12e

    .local v16, "TYPE_EN_CA":I
    const/16 v21, 0x136

    .local v21, "TYPE_ES_US":I
    const/16 v20, 0x137

    .local v20, "TYPE_ES_MX":I
    const/16 v26, 0x140

    .local v26, "TYPE_FR_CA":I
    const/16 v53, 0x14a

    .local v53, "TYPE_PT_BR":I
    const/16 v12, 0x154

    .local v12, "TYPE_DE_AT":I
    const/16 v35, 0x15e

    .local v35, "TYPE_ID_ID":I
    const/16 v50, 0x168

    .local v50, "TYPE_NL_BE":I
    const/16 v55, 0x3e8

    .local v55, "TYPE_RESOURCE_LIST":I
    const-string/jumbo v72, "en_US"

    const/16 v73, 0xa

    .line 90
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "eng"

    const/16 v73, 0xa

    .line 91
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "ko_KR"

    const/16 v73, 0x1

    .line 92
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "kor"

    const/16 v73, 0x1

    .line 93
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "ko_KR-nh"

    const/16 v73, 0x1

    .line 94
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "ko_KR_NoHanJa"

    const/16 v73, 0x2

    .line 95
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "zh_CN"

    const/16 v73, 0x0

    .line 96
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "chn"

    const/16 v73, 0x0

    .line 97
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "zh_HK"

    const/16 v73, 0x54

    .line 98
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "zh_TW"

    const/16 v73, 0x55

    .line 99
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "ja_JP"

    const/16 v73, 0x53

    .line 100
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "fr_FR"

    const/16 v73, 0xb

    .line 101
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "de_DE"

    const/16 v73, 0xc

    .line 102
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "it_IT"

    const/16 v73, 0xd

    .line 103
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "es_ES"

    const/16 v73, 0xf

    .line 104
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "pt_PT"

    const/16 v73, 0xe

    .line 105
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "ru_RU"

    const/16 v73, 0x10

    .line 106
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "ms_MY"

    const/16 v73, 0x57

    .line 107
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "id_ID"

    const/16 v73, 0x15e

    .line 108
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "tr_TR"

    const/16 v73, 0x58

    .line 109
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "hi_IN"

    const/16 v73, 0x59

    .line 110
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "ar"

    const/16 v73, 0x5b

    .line 111
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "fa_IR"

    const/16 v73, 0x5c

    .line 112
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "th_TH"

    const/16 v73, 0x5a

    .line 113
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "bg_BG"

    const/16 v73, 0x6b

    .line 114
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "kk_KZ"

    const/16 v73, 0x6c

    .line 115
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "uk_UA"

    const/16 v73, 0x6d

    .line 116
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "ka_GE"

    const/16 v73, 0x6f

    .line 117
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "el_GR"

    const/16 v73, 0x6e

    .line 118
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "he_IL"

    const/16 v73, 0x71

    .line 119
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "ur_PK"

    const/16 v73, 0x70

    .line 120
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "vi_VN"

    const/16 v73, 0x6a

    .line 121
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "az_AZ"

    const/16 v73, 0x69

    .line 122
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "ca_ES"

    const/16 v73, 0x68

    .line 123
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "cs_CZ"

    const/16 v73, 0x5e

    .line 124
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "da_DK"

    const/16 v73, 0x61

    .line 125
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "ga_IE"

    const/16 v73, 0x65

    .line 126
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "hu_HU"

    const/16 v73, 0x66

    .line 127
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "lt_LT"

    const/16 v73, 0x67

    .line 128
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "nb_NO"

    const/16 v73, 0x62

    .line 129
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "nl_NL"

    const/16 v73, 0x63

    .line 130
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "pl_PL"

    const/16 v73, 0x5f

    .line 131
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "ro_RO"

    const/16 v73, 0x5d

    .line 132
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "sl_SI"

    const/16 v73, 0x60

    .line 133
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "sv_SE"

    const/16 v73, 0x64

    .line 134
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "af_ZA"

    const/16 v73, 0xcf

    .line 135
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "es_US"

    const/16 v73, 0x136

    .line 136
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "et_EE"

    const/16 v73, 0xd2

    .line 137
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "fi_FI"

    const/16 v73, 0xcb

    .line 138
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "fr_CA"

    const/16 v73, 0x140

    .line 139
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "hr_HR"

    const/16 v73, 0xca

    .line 140
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "hy_AM"

    const/16 v73, 0xc9

    .line 141
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "is_IS"

    const/16 v73, 0xcc

    .line 142
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "lv_LV"

    const/16 v73, 0xd0

    .line 143
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "mn_MN"

    const/16 v73, 0xd1

    .line 144
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "mr_IN"

    const/16 v73, 0xd3

    .line 145
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "pt_BR"

    const/16 v73, 0x14a

    .line 146
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "sk_SK"

    const/16 v73, 0xce

    .line 147
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "sq_AL"

    const/16 v73, 0xc8

    .line 148
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "sr_Cyrl_RS"

    const/16 v73, 0xd9

    .line 149
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "sr_Latn_RS"

    const/16 v73, 0xd8

    .line 150
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "sr_RS"

    const/16 v73, 0xd8

    .line 151
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "be_BY"

    const/16 v73, 0xd4

    .line 152
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "de_AT"

    const/16 v73, 0x154

    .line 153
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "en_AU"

    const/16 v73, 0x12d

    .line 154
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "en_CA"

    const/16 v73, 0x12e

    .line 155
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "en_GB"

    const/16 v73, 0x12c

    .line 156
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "es_MX"

    const/16 v73, 0x137

    .line 157
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "nl_BE"

    const/16 v73, 0x168

    .line 158
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "eu_ES"

    const/16 v73, 0xd5

    .line 159
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "gl_ES"

    const/16 v73, 0xd6

    .line 160
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "mk_MK"

    const/16 v73, 0xd7

    .line 161
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "numeric"

    const/16 v73, 0x56

    .line 162
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v72, "resList"

    const/16 v73, 0x3e8

    .line 163
    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v73

    move-object/from16 v0, p0

    move-object/from16 v1, v72

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    return-void
.end method
