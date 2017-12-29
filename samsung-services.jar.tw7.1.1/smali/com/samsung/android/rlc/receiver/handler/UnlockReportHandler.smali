.class public Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;
.super Ljava/lang/Object;
.source "UnlockReportHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->TAG:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getUnlockReportBody(Landroid/content/Context;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v6, "srcBody":Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCID()Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, "rlcID":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "curTime":Ljava/lang/String;
    const/4 v7, 0x0

    .line 76
    .local v7, "token":Ljava/lang/String;
    :try_start_0
    invoke-static {v0, v5}, Lcom/samsung/android/rlc/util/HMACUtil;->encryption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 84
    .end local v7    # "token":Ljava/lang/String;
    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    new-instance v4, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    invoke-direct {v4}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;-><init>()V

    .line 87
    .local v4, "reqVO":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    invoke-virtual {v4, v5}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setRlcId(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setData(Ljava/lang/String;)V

    .line 90
    return-object v4

    .line 81
    .end local v4    # "reqVO":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .restart local v7    # "token":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0

    .line 79
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v2

    .line 80
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 77
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v3

    .line 78
    .local v3, "e":Ljava/security/SignatureException;
    invoke-virtual {v3}, Ljava/security/SignatureException;->printStackTrace()V

    goto :goto_0
.end method

.method public static makeUnlockReportBundle(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 64
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "body"

    invoke-static {p0}, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->getUnlockReportBody(Landroid/content/Context;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 65
    return-object v0
.end method

.method public static run(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x1

    .line 26
    sget-object v7, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->TAG:Ljava/lang/String;

    const-string v8, "UnlockReportManager run"

    invoke-static {v7, v8}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCStatus()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Normal"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 30
    sget-object v7, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->TAG:Ljava/lang/String;

    const-string v8, "Rlc status is not normal"

    invoke-static {v7, v8}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v7, "unlock_report"

    const-string v8, "N"

    invoke-static {p0, v7, v8}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v7, "retry_17"

    const-string v8, ""

    invoke-static {p0, v7, v8}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void

    .line 35
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->makeUnlockReportBundle(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 36
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v7, "body"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    .line 37
    .local v2, "dvcVO":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    new-instance v1, Lcom/samsung/android/rlc/receiver/handler/CertHandler;

    invoke-direct {v1}, Lcom/samsung/android/rlc/receiver/handler/CertHandler;-><init>()V

    .line 38
    .local v1, "cert":Lcom/samsung/android/rlc/receiver/handler/CertHandler;
    invoke-virtual {v1, p0, v2}, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->encryptData(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    move-result-object v4

    .line 39
    .local v4, "requestBody":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    if-nez v4, :cond_1

    .line 40
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const/16 v8, 0x11

    invoke-static {p0, v7, v8}, Lcom/samsung/android/rlc/util/PushUtil;->retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I

    .line 25
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "cert":Lcom/samsung/android/rlc/receiver/handler/CertHandler;
    .end local v2    # "dvcVO":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .end local v4    # "requestBody":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    :goto_0
    return-void

    .line 42
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "cert":Lcom/samsung/android/rlc/receiver/handler/CertHandler;
    .restart local v2    # "dvcVO":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .restart local v4    # "requestBody":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    :cond_1
    const-string v7, "https://%s/dm/v1/dev/unlocked"

    invoke-static {p0, v7}, Lcom/samsung/android/rlc/util/PushUtil;->getDMURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 43
    .local v6, "uri":Ljava/lang/String;
    invoke-static {p0, v4, v6}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->httpRequest(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;Ljava/lang/String;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    move-result-object v5

    .line 44
    .local v5, "response":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    if-eqz v5, :cond_3

    .line 45
    invoke-virtual {v5}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_2

    .line 46
    sget-object v7, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->TAG:Ljava/lang/String;

    const-string v8, "UnlockReportManager - success "

    invoke-static {v7, v8}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v7, "unlock_report"

    const-string v8, "N"

    invoke-static {p0, v7, v8}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v7, "retry_17"

    const-string v8, ""

    invoke-static {p0, v7, v8}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "cert":Lcom/samsung/android/rlc/receiver/handler/CertHandler;
    .end local v2    # "dvcVO":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .end local v4    # "requestBody":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .end local v5    # "response":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .end local v6    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 57
    .local v3, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-static {p0, v7, v10}, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->setRetry(Landroid/content/Context;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 50
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "cert":Lcom/samsung/android/rlc/receiver/handler/CertHandler;
    .restart local v2    # "dvcVO":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .restart local v4    # "requestBody":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .restart local v5    # "response":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .restart local v6    # "uri":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->setRetry(Landroid/content/Context;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 53
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->setRetry(Landroid/content/Context;Landroid/os/Bundle;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static setRetry(Landroid/content/Context;Landroid/os/Bundle;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "clearCert"    # Z

    .prologue
    .line 94
    sget-object v1, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->TAG:Ljava/lang/String;

    const-string v2, "[setRetry]"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :try_start_0
    const-string v1, "unlock_report"

    const-string v2, "Y"

    invoke-static {p0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    if-eqz p2, :cond_0

    .line 98
    const-string v1, "cert"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    const/16 v1, 0x11

    invoke-static {p0, p1, v1}, Lcom/samsung/android/rlc/util/PushUtil;->retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/rlc/receiver/handler/UnlockReportHandler;->TAG:Ljava/lang/String;

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

    .line 104
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
