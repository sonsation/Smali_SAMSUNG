.class public Lcom/samsung/android/app/music/milk/help/MuseUtils;
.super Ljava/lang/Object;
.source "MuseUtils.java"


# static fields
.field private static final CHANNEL_CODE:Ljava/lang/String; = "ODC"

.field private static final INQUIRY_TYPE_PURCHASE:Ljava/lang/String; = "INQ03"

.field public static final LOG_TAG:Ljava/lang/String; = "MuseUtils"

.field private static final MUSE_MAIN:Ljava/lang/String; = "http://help.content.samsung.com/csweb/auth/gosupport.do"

.field private static final SERVICE_CODE:Ljava/lang/String; = "smusic"

.field private static final SERVICE_NAME:Ljava/lang/String; = "SamsungMusic"

.field public static final TARGET_CALL_NUMBER:I = 0x4

.field public static final TARGET_CONTACT_US:I = 0x2

.field public static final TARGET_FAQ:I = 0x1

.field public static final TARGET_MAIN:I = 0x0

.field public static final TARGET_MY_QUESTION:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getLanguageCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    const/16 v6, 0xa

    new-array v2, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "zh_HK"

    aput-object v7, v2, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "zh_CN"

    aput-object v7, v2, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "zh_TW"

    aput-object v7, v2, v6

    const/4 v6, 0x3

    const-string v7, "en_GB"

    aput-object v7, v2, v6

    const/4 v6, 0x4

    const-string v7, "en_US"

    aput-object v7, v2, v6

    const/4 v6, 0x5

    const-string v7, "fr_CA"

    aput-object v7, v2, v6

    const/4 v6, 0x6

    const-string v7, "fr_FR"

    aput-object v7, v2, v6

    const/4 v6, 0x7

    const-string/jumbo v7, "pt_PT"

    aput-object v7, v2, v6

    const/16 v6, 0x8

    const-string v7, "es_ES"

    aput-object v7, v2, v6

    const/16 v6, 0x9

    const-string v7, "ar_AE"

    aput-object v7, v2, v6

    .line 117
    .local v2, "lang_arr":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "lang_code":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "country_code":Ljava/lang/String;
    move-object v5, v3

    .line 122
    .local v5, "resultCode":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, "languageCode":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v2

    if-ge v1, v6, :cond_1

    .line 124
    aget-object v6, v2, v1

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 125
    aget-object v5, v2, v1

    .line 123
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static getMuseUrl(Landroid/content/Context;I)Ljava/lang/String;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 46
    const-string v14, "com.samsung.radio.countrycode"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, "countryCode":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/milk/help/MuseUtils;->getLanguageCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 48
    .local v8, "langCode":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/music/milk/help/MuseUtils;->getTargetUrl(I)Ljava/lang/String;

    move-result-object v13

    .line 49
    .local v13, "targetUrl":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->getNetworkOperatorName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 50
    .local v11, "operatorCode":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->getMcc()Ljava/lang/String;

    move-result-object v9

    .line 51
    .local v9, "mcc":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->getMnc()Ljava/lang/String;

    move-result-object v10

    .line 52
    .local v10, "mnc":Ljava/lang/String;
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 53
    .local v4, "deviceId":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getUser()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v14

    invoke-virtual {v14}, Lcom/samsung/android/app/music/common/model/UserInfo;->getEmail()Ljava/lang/String;

    move-result-object v6

    .line 54
    .local v6, "email":Ljava/lang/String;
    sget-object v12, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 55
    .local v12, "osVersion":Ljava/lang/String;
    const/4 v14, 0x2

    move/from16 v0, p1

    if-ne v0, v14, :cond_a

    const-string v7, "INQ03"

    .line 56
    .local v7, "inquiryType":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    .line 59
    .local v1, "appVersion":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 60
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    iget-object v1, v14, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .local v2, "builder":Ljava/lang/StringBuilder;
    const-string v14, "http://help.content.samsung.com/csweb/auth/gosupport.do"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "?serviceCd="

    .line 69
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "smusic"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&chnlCd="

    .line 70
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "ODC"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&targetUrl="

    .line 71
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 75
    const-string v14, "&_common_country="

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :cond_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 78
    const-string v14, "&_common_lang="

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 81
    const-string v14, "&inqTypCd="

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_2
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 84
    const-string v14, "&mcc="

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :cond_3
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 87
    const-string v14, "&mnc="

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :cond_4
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 90
    const-string v14, "&brandNm="

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :cond_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 93
    const-string v14, "&dvcModelCd="

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :cond_6
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 96
    const-string v14, "&saccountID="

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :cond_7
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 99
    const-string v14, "&dvcOSVersion=Android "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :cond_8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 102
    const-string v14, "&odcVersion=SamsungMusic "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :cond_9
    const-string v14, "MuseUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "URL : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14

    .line 55
    .end local v1    # "appVersion":Ljava/lang/String;
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .end local v7    # "inquiryType":Ljava/lang/String;
    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 61
    .restart local v1    # "appVersion":Ljava/lang/String;
    .restart local v7    # "inquiryType":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 62
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method private static getTargetUrl(I)Ljava/lang/String;
    .locals 1
    .param p0, "targetType"    # I

    .prologue
    .line 135
    packed-switch p0, :pswitch_data_0

    .line 152
    const-string v0, "/main/main.do"

    .line 155
    .local v0, "url":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 137
    .end local v0    # "url":Ljava/lang/String;
    :pswitch_0
    const-string v0, "/main/main.do"

    .line 138
    .restart local v0    # "url":Ljava/lang/String;
    goto :goto_0

    .line 140
    .end local v0    # "url":Ljava/lang/String;
    :pswitch_1
    const-string v0, "/faq/searchFaq.do"

    .line 141
    .restart local v0    # "url":Ljava/lang/String;
    goto :goto_0

    .line 143
    .end local v0    # "url":Ljava/lang/String;
    :pswitch_2
    const-string v0, "/ticket/createQuestionTicket.do"

    .line 144
    .restart local v0    # "url":Ljava/lang/String;
    goto :goto_0

    .line 146
    .end local v0    # "url":Ljava/lang/String;
    :pswitch_3
    const-string v0, "/ticket/searchTicketList.do"

    .line 147
    .restart local v0    # "url":Ljava/lang/String;
    goto :goto_0

    .line 149
    .end local v0    # "url":Ljava/lang/String;
    :pswitch_4
    const-string v0, "/tutorial/searchContactNumbers.do"

    .line 150
    .restart local v0    # "url":Ljava/lang/String;
    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static launchMUSE(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 40
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/help/MuseUtils;->getMuseUrl(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "url":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->launchWebLink(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    return-void
.end method
