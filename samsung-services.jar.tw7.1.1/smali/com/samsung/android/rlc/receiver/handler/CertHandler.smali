.class public Lcom/samsung/android/rlc/receiver/handler/CertHandler;
.super Ljava/lang/Object;
.source "CertHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/samsung/android/rlc/receiver/handler/CertHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->TAG:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCertBody(Landroid/content/Context;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 143
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCID()Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "rlcID":Ljava/lang/String;
    const/4 v4, 0x0

    .line 145
    .local v4, "useDvcID":Z
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 146
    const/4 v4, 0x1

    .line 149
    :cond_0
    new-instance v0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    invoke-direct {v0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;-><init>()V

    .line 151
    .local v0, "dvceVo":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    if-eqz v4, :cond_3

    .line 152
    sget-object v5, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->TAG:Ljava/lang/String;

    const-string v6, "Use device id instead of RLC"

    invoke-static {v5, v6}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 154
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-static {p0, v8}, Lcom/samsung/android/rlc/util/DeviceUtil;->getDualSIMDeviceID(Landroid/content/Context;Z)[Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, "sndImei":[Ljava/lang/String;
    sget-object v5, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IMEI Len : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    sget-object v5, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IMEI value  : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    if-eqz v2, :cond_1

    aget-object v5, v2, v9

    if-eqz v5, :cond_1

    .line 158
    aget-object v5, v2, v9

    invoke-virtual {v0, v5}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setImeiHash(Ljava/lang/String;)V

    .line 160
    :cond_1
    if-eqz v2, :cond_2

    array-length v5, v2

    if-le v5, v8, :cond_2

    aget-object v5, v2, v8

    if-eqz v5, :cond_2

    .line 161
    aget-object v5, v2, v8

    invoke-virtual {v0, v5}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setImeiHash2(Ljava/lang/String;)V

    .line 168
    .end local v2    # "sndImei":[Ljava/lang/String;
    .end local v3    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getRLCClientVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setVer(Ljava/lang/String;)V

    .line 169
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setModel(Ljava/lang/String;)V

    .line 170
    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setCsc(Ljava/lang/String;)V

    .line 171
    return-object v0

    .line 164
    :cond_3
    sget-object v5, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->TAG:Ljava/lang/String;

    const-string v6, "There is RLC ID in secure area"

    invoke-static {v5, v6}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0, v1}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setRlcId(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public encryptData(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .locals 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dvcVO"    # Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    .prologue
    .line 34
    sget-object v21, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->TAG:Ljava/lang/String;

    const-string v22, "[getEncrytedData]"

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :try_start_0
    const-string v21, "cert"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 37
    .local v5, "cert":Ljava/lang/String;
    const-string v21, "registeredimei"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 38
    .local v15, "regImei":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCID()Ljava/lang/String;

    move-result-object v18

    .line 39
    .local v18, "rlcId":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_0

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 40
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->getCertBody(Landroid/content/Context;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    move-result-object v6

    .line 41
    .local v6, "certRequest":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    const-string v21, "https://%s/dm/v1/dev/getCert5"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/PushUtil;->getDMURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 42
    .local v20, "uri":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v6, v1}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->httpRequest(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;Ljava/lang/String;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    move-result-object v16

    .line 44
    .local v16, "response":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getRetryIntervalList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v17

    .line 45
    .local v17, "retryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v17, :cond_6

    .line 47
    :try_start_1
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 48
    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    const/16 v21, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v24

    cmp-long v21, v22, v24

    if-gez v21, :cond_3

    .line 49
    const-string v21, "retryInterval1"

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v21, "retryInterval2"

    const/16 v22, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 71
    :goto_0
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getCert()Ljava/lang/String;

    move-result-object v5

    .line 72
    const-string v21, "cert"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1, v5}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getImeiHash()Ljava/lang/String;

    move-result-object v14

    .line 74
    .local v14, "receivedImei":Ljava/lang/String;
    sget-object v21, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received IMEI : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 76
    move-object v15, v14

    .line 77
    const-string v21, "registeredimei"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1, v14}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setImeiHash(Ljava/lang/String;)V

    .line 82
    .end local v6    # "certRequest":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .end local v14    # "receivedImei":Ljava/lang/String;
    .end local v16    # "response":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .end local v17    # "retryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "uri":Ljava/lang/String;
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_4

    .line 83
    sget-object v21, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->TAG:Ljava/lang/String;

    const-string v22, "To receive cert data success"

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    const/16 v22, 0x2

    invoke-static/range {v21 .. v22}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v4

    .line 87
    .local v4, "bytes":[B
    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v10, v0, [B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 89
    .local v10, "encData":[B
    :try_start_3
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getData()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/rlc/util/RLCUtil;->encryptData([B[B)[B
    :try_end_3
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v10

    .line 98
    :goto_1
    if-eqz v10, :cond_4

    .line 99
    :try_start_4
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setDataByte([B)V

    .line 101
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 102
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/util/DeviceUtil;->getTelephonyManagerWithException(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v19

    .line 103
    .local v19, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v7

    .line 104
    .local v7, "count":I
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/DeviceUtil;->getDualSIMDeviceID(Landroid/content/Context;Z)[Ljava/lang/String;

    move-result-object v13

    .line 105
    .local v13, "imeis":[Ljava/lang/String;
    if-eqz v13, :cond_4

    .line 106
    const/16 v21, 0x0

    array-length v0, v13

    move/from16 v22, v0

    :goto_2
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    aget-object v12, v13, v21

    .line 107
    .local v12, "imei":Ljava/lang/String;
    invoke-static {v12}, Lcom/samsung/android/rlc/util/DeviceUtil;->getHashString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 108
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setImei(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 110
    :try_start_5
    invoke-static {v15, v15}, Lcom/samsung/android/rlc/util/HMACUtil;->encryption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 111
    .local v11, "encryptedIMEI":Ljava/lang/String;
    if-eqz v11, :cond_2

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 114
    :cond_2
    sget-object v21, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->TAG:Ljava/lang/String;

    const-string v22, "Encrypted IMEI is null"

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 115
    const/16 v21, 0x0

    return-object v21

    .line 52
    .end local v4    # "bytes":[B
    .end local v7    # "count":I
    .end local v10    # "encData":[B
    .end local v11    # "encryptedIMEI":Ljava/lang/String;
    .end local v12    # "imei":Ljava/lang/String;
    .end local v13    # "imeis":[Ljava/lang/String;
    .end local v19    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .restart local v6    # "certRequest":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .restart local v16    # "response":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .restart local v17    # "retryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "uri":Ljava/lang/String;
    :cond_3
    :try_start_6
    const-string v21, "retryInterval1"

    const/16 v22, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v21, "retryInterval2"

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 59
    :catch_0
    move-exception v9

    .line 60
    .local v9, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    sget-object v21, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Exception : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v21, "retryInterval1"

    const-wide/32 v22, 0xf731400

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v21, "retryInterval2"

    const-wide/32 v22, 0x240c8400

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 134
    .end local v5    # "cert":Ljava/lang/String;
    .end local v6    # "certRequest":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v15    # "regImei":Ljava/lang/String;
    .end local v16    # "response":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .end local v17    # "retryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "rlcId":Ljava/lang/String;
    .end local v20    # "uri":Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 135
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    sget-object v21, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Exception : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_4
    sget-object v21, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->TAG:Ljava/lang/String;

    const-string v22, "getCert returns null"

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/16 v21, 0x0

    return-object v21

    .line 56
    .restart local v5    # "cert":Ljava/lang/String;
    .restart local v6    # "certRequest":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .restart local v15    # "regImei":Ljava/lang/String;
    .restart local v16    # "response":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .restart local v17    # "retryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18    # "rlcId":Ljava/lang/String;
    .restart local v20    # "uri":Ljava/lang/String;
    :cond_5
    :try_start_8
    const-string v21, "retryInterval1"

    const/16 v22, -0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v21, "retryInterval2"

    const/16 v22, -0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 66
    :cond_6
    :try_start_9
    sget-object v21, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->TAG:Ljava/lang/String;

    const-string v22, "Interval is null so use default value"

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v21, "retryInterval1"

    const-wide/32 v22, 0xf731400

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v21, "retryInterval2"

    const-wide/32 v22, 0x240c8400

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 90
    .end local v6    # "certRequest":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .end local v16    # "response":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .end local v17    # "retryList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "uri":Ljava/lang/String;
    .restart local v4    # "bytes":[B
    .restart local v10    # "encData":[B
    :catch_2
    move-exception v8

    .line 91
    .local v8, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    invoke-virtual {v8}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;->printStackTrace()V

    .line 92
    sget-object v21, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Exception in RMMManager : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v8}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v21, "check_backoff"

    const v22, 0x44aa200

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setRetryBackoff(Landroid/content/Context;Ljava/lang/String;I)V

    .line 94
    const-string v21, "spp_backoff"

    const v22, 0x44aa200

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setRetryBackoff(Landroid/content/Context;Ljava/lang/String;I)V

    .line 95
    const-string v21, "gcm_backoff"

    const v22, 0x44aa200

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setRetryBackoff(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_1

    .line 112
    .end local v8    # "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    .restart local v7    # "count":I
    .restart local v11    # "encryptedIMEI":Ljava/lang/String;
    .restart local v12    # "imei":Ljava/lang/String;
    .restart local v13    # "imeis":[Ljava/lang/String;
    .restart local v19    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_7
    :try_start_a
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v21

    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/rlc/util/RLCUtil;->encryptData([B[B)[B
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    move-result-object v10

    .line 124
    .end local v11    # "encryptedIMEI":Ljava/lang/String;
    :goto_3
    :try_start_b
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setDataByte([B)V

    .line 125
    return-object p2

    .line 117
    :catch_3
    move-exception v9

    .line 118
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    const-string v21, "check_backoff"

    const v22, 0x44aa200

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setRetryBackoff(Landroid/content/Context;Ljava/lang/String;I)V

    .line 120
    const-string v21, "spp_backoff"

    const v22, 0x44aa200

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setRetryBackoff(Landroid/content/Context;Ljava/lang/String;I)V

    .line 121
    const-string v21, "gcm_backoff"

    const v22, 0x44aa200

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setRetryBackoff(Landroid/content/Context;Ljava/lang/String;I)V

    .line 122
    sget-object v21, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Exception in RMMManager : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_3

    .line 106
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_8
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_2

    .line 130
    .end local v7    # "count":I
    .end local v12    # "imei":Ljava/lang/String;
    .end local v13    # "imeis":[Ljava/lang/String;
    .end local v19    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_9
    return-object p2
.end method
