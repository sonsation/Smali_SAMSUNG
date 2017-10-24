.class public Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;
.super Ljava/lang/Object;
.source "CheckRegistrationHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;

    .line 26
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCheckBody(Landroid/content/Context;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 103
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCID()Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 110
    :goto_0
    new-instance v3, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    invoke-direct {v3}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;-><init>()V

    .line 112
    if-nez v0, :cond_1

    .line 128
    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "There is RLC ID in secure area"

    invoke-static {v0, v4}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :try_start_0
    invoke-static {v2, v2}, Lcom/samsung/android/rlc/util/HMACUtil;->encryption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v1

    .line 138
    :goto_1
    invoke-virtual {v3, v2}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setRlcId(Ljava/lang/String;)V

    .line 140
    :goto_2
    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Token : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    if-nez v1, :cond_3

    const-string/jumbo v0, ""

    .line 142
    :goto_3
    invoke-virtual {v3, v0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setData(Ljava/lang/String;)V

    .line 143
    return-object v3

    .line 108
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 113
    :cond_1
    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Use device id instead of RLC"

    invoke-static {v0, v2}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {p0}, Lcom/samsung/android/rlc/util/DeviceUtil;->getDualSIMDeviceID(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    .line 116
    if-nez v2, :cond_2

    move-object v0, v1

    :goto_4
    move-object v1, v0

    .line 126
    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 117
    :try_start_1
    aget-object v0, v2, v0

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-static {v0, v4}, Lcom/samsung/android/rlc/util/HMACUtil;->encryption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    const/4 v1, 0x0

    .line 118
    :try_start_2
    aget-object v1, v2, v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setImei(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_4

    .line 126
    :catch_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 121
    :goto_5
    invoke-virtual {v0}, Ljava/security/SignatureException;->printStackTrace()V

    goto :goto_2

    .line 126
    :catch_1
    move-exception v0

    .line 123
    :goto_6
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_2

    .line 126
    :catch_2
    move-exception v0

    .line 125
    :goto_7
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_2

    .line 137
    :catch_3
    move-exception v0

    .line 132
    invoke-virtual {v0}, Ljava/security/SignatureException;->printStackTrace()V

    goto :goto_1

    .line 137
    :catch_4
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1

    .line 137
    :catch_5
    move-exception v0

    .line 136
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "line.separator"

    .line 141
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 126
    :catch_6
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_7

    :catch_7
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_6

    :catch_8
    move-exception v0

    goto :goto_5
.end method

.method public static makeCheckBundle(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 95
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "body"

    .line 96
    invoke-static {p0}, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->getCheckBody(Landroid/content/Context;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 97
    return-object v0
.end method

.method public static run(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/16 v6, 0x193

    .line 30
    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "CheckDeviceStatusManager run"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "body"

    .line 34
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    const-string/jumbo v1, "https://%s/dm/v1/dev/check"

    .line 36
    invoke-static {p0, v1}, Lcom/samsung/android/rlc/util/PushUtil;->getDMURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    new-instance v2, Lcom/samsung/android/rlc/receiver/handler/CertHandler;

    invoke-direct {v2}, Lcom/samsung/android/rlc/receiver/handler/CertHandler;-><init>()V

    .line 39
    invoke-virtual {v2, p0, v0}, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->encryptData(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 55
    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getRLCClientVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setVer(Ljava/lang/String;)V

    .line 57
    invoke-static {p0, v0, v1}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->httpRequest(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;Ljava/lang/String;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    move-result-object v0

    .line 59
    if-nez v0, :cond_4

    .line 85
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {p0, v0, v1}, Lcom/samsung/android/rlc/util/PushUtil;->retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->getResponse()Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    move-result-object v0

    if-nez v0, :cond_3

    .line 52
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {p0, v0, v1}, Lcom/samsung/android/rlc/util/PushUtil;->retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 90
    sget-object v1, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->getResponse()Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v0

    if-ne v0, v6, :cond_2

    const-string/jumbo v0, "callcheckapi"

    const-string/jumbo v1, "Y"

    .line 44
    invoke-static {p0, v0, v1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "CheckDeviceStatusManager : not supported device "

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "clearOp"

    .line 47
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0xc

    .line 48
    invoke-static {p0, v0, v1}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 49
    return-void

    .line 60
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v1

    .line 61
    invoke-virtual {v0}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v2

    .line 62
    sget-object v3, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CheckDeviceStatusManager: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "callcheckapi"

    const-string/jumbo v3, "Y"

    .line 63
    invoke-static {p0, v0, v3}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc8

    .line 64
    if-eq v1, v0, :cond_5

    .line 75
    if-ne v1, v6, :cond_0

    .line 77
    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/CheckRegistrationHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "CheckDeviceStatusManager : not supported device "

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "clearOp"

    .line 79
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0xc

    .line 80
    invoke-static {p0, v0, v1}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 81
    return-void

    .line 66
    :cond_5
    invoke-virtual {v2}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getRlcId()Ljava/lang/String;

    move-result-object v0

    .line 67
    sget v1, Lcom/samsung/android/rlc/util/RLCUtil;->SUPPORTED:I

    .line 68
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/samsung/android/rlc/util/RLCUtil;->setRLCID(Ljava/lang/String;)V

    .line 69
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/rlc/util/RLCUtil;->setRegiStatus(I)V

    .line 70
    invoke-virtual {v2}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getBankName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 73
    invoke-static {p0, v1, v0}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 74
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v0

    const-string/jumbo v1, "retType14"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/rlc/util/RLCUtil;->setStringInSecure(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 71
    :cond_6
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v0

    const-string/jumbo v1, "simReq"

    invoke-virtual {v2}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getBankName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/rlc/util/RLCUtil;->setStringInSecure(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
