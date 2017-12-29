.class public Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;
.super Ljava/lang/Object;
.source "CheckRegistrationHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->TAG:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCheckBody(Landroid/content/Context;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 134
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCID()Ljava/lang/String;

    move-result-object v6

    .line 135
    .local v6, "rlcID":Ljava/lang/String;
    const/4 v7, 0x0

    .line 136
    .local v7, "token":Ljava/lang/String;
    const/4 v8, 0x0

    .line 138
    .local v8, "useDvcID":Z
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 139
    const/4 v8, 0x1

    .line 141
    :cond_0
    new-instance v5, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    invoke-direct {v5}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;-><init>()V

    .line 143
    .local v5, "reqVO":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    if-eqz v8, :cond_3

    .line 144
    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->TAG:Ljava/lang/String;

    const-string v10, "Use device id instead of RLC"

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-static {p0, v11}, Lcom/samsung/android/rlc/util/DeviceUtil;->getDualSIMDeviceID(Landroid/content/Context;Z)[Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "deviceId":[Ljava/lang/String;
    invoke-static {p0, v12}, Lcom/samsung/android/rlc/util/DeviceUtil;->getDualSIMDeviceID(Landroid/content/Context;Z)[Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, "rawDeviceId":[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 150
    :try_start_0
    array-length v9, v0

    if-le v9, v11, :cond_2

    const/4 v9, 0x1

    aget-object v9, v0, v9

    const-string v10, "registeredimei"

    invoke-static {p0, v10}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 151
    const/4 v9, 0x1

    aget-object v9, v4, v9

    const/4 v10, 0x1

    aget-object v10, v4, v10

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/HMACUtil;->encryption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 152
    .local v7, "token":Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v0, v9

    invoke-virtual {v5, v9}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setImeiHash(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    .line 178
    .end local v0    # "deviceId":[Ljava/lang/String;
    .end local v4    # "rawDeviceId":[Ljava/lang/String;
    .end local v7    # "token":Ljava/lang/String;
    :cond_1
    :goto_0
    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Token : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    if-eqz v7, :cond_4

    const-string v9, "line.separator"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 180
    .restart local v7    # "token":Ljava/lang/String;
    :goto_1
    invoke-virtual {v5, v7}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setData(Ljava/lang/String;)V

    .line 181
    return-object v5

    .line 154
    .restart local v0    # "deviceId":[Ljava/lang/String;
    .restart local v4    # "rawDeviceId":[Ljava/lang/String;
    .local v7, "token":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    :try_start_1
    aget-object v9, v4, v9

    const/4 v10, 0x0

    aget-object v10, v4, v10

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/HMACUtil;->encryption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 155
    .local v7, "token":Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v0, v9

    invoke-virtual {v5, v9}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setImeiHash(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 158
    .end local v7    # "token":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 159
    .local v3, "e":Ljava/security/SignatureException;
    invoke-virtual {v3}, Ljava/security/SignatureException;->printStackTrace()V

    goto :goto_0

    .line 162
    .end local v3    # "e":Ljava/security/SignatureException;
    :catch_1
    move-exception v1

    .line 163
    .local v1, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    .line 160
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v2

    .line 161
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 166
    .end local v0    # "deviceId":[Ljava/lang/String;
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v4    # "rawDeviceId":[Ljava/lang/String;
    .local v7, "token":Ljava/lang/String;
    :cond_3
    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->TAG:Ljava/lang/String;

    const-string v10, "There is RLC ID in secure area"

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :try_start_2
    invoke-static {v6, v6}, Lcom/samsung/android/rlc/util/HMACUtil;->encryption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v7

    .line 176
    .end local v7    # "token":Ljava/lang/String;
    :goto_2
    invoke-virtual {v5, v6}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setRlcId(Ljava/lang/String;)V

    goto :goto_0

    .line 173
    .restart local v7    # "token":Ljava/lang/String;
    :catch_3
    move-exception v1

    .line 174
    .restart local v1    # "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_2

    .line 171
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :catch_4
    move-exception v2

    .line 172
    .restart local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_2

    .line 169
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_5
    move-exception v3

    .line 170
    .restart local v3    # "e":Ljava/security/SignatureException;
    invoke-virtual {v3}, Ljava/security/SignatureException;->printStackTrace()V

    goto :goto_2

    .line 179
    .end local v3    # "e":Ljava/security/SignatureException;
    .end local v7    # "token":Ljava/lang/String;
    :cond_4
    const-string v7, ""

    goto :goto_1
.end method

.method public static makeCheckBundle(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 127
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "body"

    invoke-static {p0}, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->getCheckBody(Landroid/content/Context;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 128
    return-object v0
.end method

.method public static run(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 28
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 32
    sget-object v25, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->TAG:Ljava/lang/String;

    const-string v26, "CheckDeviceStatusManager run"

    invoke-static/range {v25 .. v26}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 35
    .local v4, "bundle":Landroid/os/Bundle;
    const-string v25, "body"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    .line 37
    .local v11, "dvcVO":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    const-string v25, "https://%s/dm/v1/dev/check5"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/PushUtil;->getDMURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 39
    .local v23, "uri":Ljava/lang/String;
    new-instance v5, Lcom/samsung/android/rlc/receiver/handler/CertHandler;

    invoke-direct {v5}, Lcom/samsung/android/rlc/receiver/handler/CertHandler;-><init>()V

    .line 40
    .local v5, "cert":Lcom/samsung/android/rlc/receiver/handler/CertHandler;
    const/16 v16, 0x0

    .line 42
    .local v16, "requestBody":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v5, v0, v11}, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->encryptData(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 49
    .end local v16    # "requestBody":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    :goto_0
    if-nez v16, :cond_0

    .line 50
    :try_start_1
    sget-object v25, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->TAG:Ljava/lang/String;

    const-string v26, "Cert body is null"

    invoke-static/range {v25 .. v26}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->setRetry(Landroid/content/Context;Landroid/os/Bundle;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 31
    :goto_1
    return-void

    .line 43
    .restart local v16    # "requestBody":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    :catch_0
    move-exception v12

    .line 44
    .local v12, "e":Ljava/lang/Exception;
    sget-object v25, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Long term retry set , Exception: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v25

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->setRetry(Landroid/content/Context;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 53
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v16    # "requestBody":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    :cond_0
    :try_start_2
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/util/PushUtil;->getRLCClientVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setVer(Ljava/lang/String;)V

    .line 55
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->httpRequest(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;Ljava/lang/String;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    move-result-object v18

    .line 57
    .local v18, "response":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    if-eqz v18, :cond_6

    .line 58
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v19

    .line 59
    .local v19, "resultCode":I
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v17

    .line 60
    .local v17, "resVO":Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;
    sget-object v25, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "CheckDeviceStatusManager: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v25, "callcheckapi"

    const-string v26, "Y"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const/16 v25, 0xc8

    move/from16 v0, v19

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 64
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/DeviceUtil;->getDualSIMDeviceID(Landroid/content/Context;Z)[Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/rlc/util/RLCUtil;->setIMEIs([Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getRlcId()Ljava/lang/String;

    move-result-object v20

    .line 67
    .local v20, "rlcID":Ljava/lang/String;
    sget v15, Lcom/samsung/android/rlc/util/RLCUtil;->SUPPORTED:I

    .line 68
    .local v15, "regiStatus":I
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/rlc/util/RLCUtil;->setRLCID(Ljava/lang/String;)V

    .line 69
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Lcom/samsung/android/rlc/util/RLCUtil;->setRegiStatus(I)V

    .line 70
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getBankName()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_1

    .line 71
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v25

    const-string v26, "simReq"

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getBankName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Lcom/samsung/android/rlc/util/RLCUtil;->setStringInSecure(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_1
    const-string v25, "retry_14"

    const-string v26, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/16 v25, 0x0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 120
    .end local v15    # "regiStatus":I
    .end local v17    # "resVO":Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;
    .end local v18    # "response":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .end local v19    # "resultCode":I
    .end local v20    # "rlcID":Ljava/lang/String;
    :catch_1
    move-exception v12

    .line 121
    .restart local v12    # "e":Ljava/lang/Exception;
    sget-object v25, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Exception: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v25

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->setRetry(Landroid/content/Context;Landroid/os/Bundle;Z)V

    goto/16 :goto_1

    .line 77
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v17    # "resVO":Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;
    .restart local v18    # "response":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .restart local v19    # "resultCode":I
    :cond_2
    :try_start_3
    const-string v25, "1stCheck"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 78
    .local v13, "firstCheck":Ljava/lang/String;
    sget-object v25, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "First Check Flag : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 80
    const-string v25, "1stCheck"

    const-string v26, "Y"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 82
    .local v8, "currentTime":J
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v25

    const-string v26, "bootTime"

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Lcom/samsung/android/rlc/util/RLCUtil;->setStringInSecure(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v25, "boot_time"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    sub-long v26, v8, v26

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/util/RMMSupportCheck;->setCheckAlarm(Landroid/content/Context;)V

    .line 87
    .end local v8    # "currentTime":J
    :cond_3
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getData()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    const/16 v26, 0x2

    invoke-static/range {v25 .. v26}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v21

    .line 88
    .local v21, "signedData":[B
    const-string v25, "cert"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 89
    .local v14, "prefCert":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    const/16 v26, 0x2

    invoke-static/range {v25 .. v26}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v6

    .line 90
    .local v6, "certByte":[B
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getData()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    const/16 v26, 0x2

    invoke-static/range {v25 .. v26}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v10

    .line 91
    .local v10, "deviceData":[B
    invoke-static {v6}, Lcom/samsung/android/rlc/util/HMACUtil;->generatePublicKey([B)Ljava/security/interfaces/RSAPublicKey;

    .line 92
    move-object/from16 v0, v21

    invoke-static {v10, v0}, Lcom/samsung/android/rlc/util/HMACUtil;->verify([B[B)Z

    move-result v24

    .line 93
    .local v24, "verified":Z
    sget-object v25, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "verify signed Data : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    if-eqz v21, :cond_5

    const/16 v25, 0x193

    move/from16 v0, v19

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    if-eqz v24, :cond_5

    .line 97
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/receiver/handler/TheftProtectionHandler;->makeTheftBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/receiver/handler/TheftProtectionHandler;->run(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 99
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v25

    const-string v26, "3rd"

    invoke-virtual/range {v25 .. v26}, Lcom/samsung/android/rlc/util/RLCUtil;->getStringInSecure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 100
    .local v22, "thirdCheck":Ljava/lang/String;
    const-string v25, "Y"

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_4

    .line 101
    const-string v25, "cert"

    const-string v26, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v25, "registeredimei"

    const-string v26, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_4
    sget-object v25, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->TAG:Ljava/lang/String;

    const-string v26, "CheckDeviceStatusManager : not supported device "

    invoke-static/range {v25 .. v26}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v25, "retry_14"

    const-string v26, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 108
    .local v7, "clearBundle":Landroid/os/Bundle;
    const-string v25, "clearOp"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 109
    const/16 v25, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-static {v0, v7, v1}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto/16 :goto_1

    .line 111
    .end local v7    # "clearBundle":Landroid/os/Bundle;
    .end local v22    # "thirdCheck":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v25

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->setRetry(Landroid/content/Context;Landroid/os/Bundle;Z)V

    goto/16 :goto_1

    .line 116
    .end local v6    # "certByte":[B
    .end local v10    # "deviceData":[B
    .end local v13    # "firstCheck":Ljava/lang/String;
    .end local v14    # "prefCert":Ljava/lang/String;
    .end local v17    # "resVO":Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;
    .end local v19    # "resultCode":I
    .end local v21    # "signedData":[B
    .end local v24    # "verified":Z
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v25

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->setRetry(Landroid/content/Context;Landroid/os/Bundle;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1
.end method

.method static setRetry(Landroid/content/Context;Landroid/os/Bundle;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "clearCert"    # Z

    .prologue
    .line 185
    sget-object v1, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->TAG:Ljava/lang/String;

    const-string v2, "[setRetry]"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    if-eqz p2, :cond_0

    .line 188
    :try_start_0
    const-string v1, "cert"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v1, "registeredimei"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_0
    const/16 v1, 0xe

    invoke-static {p0, p1, v1}, Lcom/samsung/android/rlc/util/PushUtil;->retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
