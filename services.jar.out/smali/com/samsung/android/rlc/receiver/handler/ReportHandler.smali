.class public Lcom/samsung/android/rlc/receiver/handler/ReportHandler;
.super Ljava/lang/Object;
.source "ReportHandler.java"


# static fields
.field private static final RMM_BLINK_STOP:Ljava/lang/String; = "com.samsung.android.rmm.blink_stop"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;

    .line 24
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getReportBody(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;Ljava/lang/String;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .locals 11

    .prologue
    const/4 v0, -0x1

    const/4 v7, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 104
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    move v4, v0

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 125
    :goto_1
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/rlc/util/RLCUtil;->backUpSecureData()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 126
    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    .line 130
    if-eq v0, v2, :cond_5

    .line 158
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getResultSvr()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "OK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v3

    .line 159
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getTokenByte()[B

    move-result-object v3

    .line 160
    invoke-virtual {p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getSignByte()[B

    move-result-object v4

    .line 158
    invoke-virtual {v2, v1, v3, v0, v4}, Lcom/samsung/android/rlc/util/RLCUtil;->completeRlc(Z[BI[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 162
    :cond_2
    :goto_2
    :try_start_1
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v0

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/rlc/util/RLCUtil;->restoreSecureData(Ljava/lang/String;)Z

    move-result v0

    .line 163
    sget-object v2, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[Store Client Data] Result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 168
    :goto_3
    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Changed Status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    new-instance v2, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    invoke-direct {v2}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;-><init>()V

    .line 170
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setRlcId(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getOprtId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setOprtId(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setToken(Ljava/lang/String;)V

    .line 174
    if-eqz v1, :cond_8

    const-string/jumbo v0, "OK"

    :goto_4
    invoke-virtual {v2, v0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setResultDev(Ljava/lang/String;)V

    .line 176
    return-object v2

    :sswitch_0
    const-string/jumbo v4, "Activating"

    .line 104
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v3

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v4, "Unlocking"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v1

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v4, "Locking"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v4, "Completing"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x3

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v4, "Blinking"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto/16 :goto_0

    :pswitch_0
    move v0, v1

    .line 107
    goto/16 :goto_1

    :pswitch_1
    const/4 v0, 0x3

    .line 109
    goto/16 :goto_1

    :pswitch_2
    move v0, v2

    .line 113
    goto/16 :goto_1

    :pswitch_3
    const/4 v0, 0x4

    .line 115
    goto/16 :goto_1

    :pswitch_4
    const/4 v0, 0x5

    .line 118
    goto/16 :goto_1

    .line 127
    :cond_3
    :try_start_2
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getResultSvr()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "OK"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v1, v3

    .line 128
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getPinByte()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getTokenByte()[B

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getMessageByte()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 129
    invoke-virtual {p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getTel()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getRequestorByte()[B

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/String;-><init>([B)V

    .line 127
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/rlc/util/RLCUtil;->completeLock(Z[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    goto/16 :goto_2

    .line 131
    :cond_5
    new-instance v4, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getMessageByte()[B

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    .line 132
    new-instance v6, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getRequestorByte()[B

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    .line 133
    new-instance v9, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getInterval()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getIcon()Ljava/lang/String;

    move-result-object v10

    .line 135
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getResultSvr()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "OK"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v1, v3

    .line 136
    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getPinByte()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getTokenByte()[B

    move-result-object v3

    .line 137
    invoke-virtual {p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getTel()Ljava/lang/String;

    move-result-object v5

    .line 135
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/rlc/util/RLCUtil;->completeBlink(Z[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    .line 139
    if-eqz v1, :cond_2

    .line 140
    :try_start_3
    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "send blinking info to application : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getPinByte()[B

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/rlc/util/Base64;->encode([B)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.rmm.blink"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "blinkMsg"

    .line 142
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "reqTel"

    .line 143
    invoke-virtual {p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getTel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "requestor"

    .line 144
    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "interval"

    .line 145
    invoke-virtual {v0, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 149
    :goto_5
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v0, "blinkPass"

    .line 151
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getPinByte()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "blinkMsg"

    .line 152
    invoke-virtual {v8, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "blinkReq"

    .line 153
    invoke-virtual {v8, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "blinkInt"

    .line 154
    invoke-virtual {v8, v0, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "blinkTel"

    .line 155
    invoke-virtual {p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getTel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 166
    :catch_0
    move-exception v0

    .line 165
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :cond_7
    :try_start_4
    const-string/jumbo v2, "iconUrl"

    .line 147
    invoke-virtual {v0, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    :cond_8
    const-string/jumbo v0, "NOK"

    goto/16 :goto_4

    .line 166
    :catch_1
    move-exception v0

    move-object v1, v7

    goto :goto_6

    .line 104
    nop

    :sswitch_data_0
    .sparse-switch
        -0x2d6440da -> :sswitch_4
        -0xf83a2f0 -> :sswitch_0
        -0xe559e02 -> :sswitch_1
        0x568fbfd6 -> :sswitch_3
        0x7768d6b7 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static makeReportBundle(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 95
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "body"

    .line 96
    invoke-static {p0, p1, p2}, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->getReportBody(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;Ljava/lang/String;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string/jumbo v1, "cmd"

    .line 97
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-object v0
.end method

.method public static run(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "RLC_ReportHandler run"

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    if-eqz p1, :cond_2

    :try_start_0
    const-string/jumbo v0, "body"

    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    const-string/jumbo v1, "cmd"

    .line 32
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v1, ""

    const/4 v2, -0x1

    .line 35
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 56
    :cond_1
    :goto_1
    invoke-static {p0, v1}, Lcom/samsung/android/rlc/util/PushUtil;->getDMURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-static {p0, v0, v1}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->httpRequest(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;Ljava/lang/String;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    move-result-object v0

    .line 61
    if-nez v0, :cond_3

    const/16 v0, 0xf

    .line 85
    invoke-static {p0, p1, v0}, Lcom/samsung/android/rlc/util/PushUtil;->retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I

    .line 91
    :goto_2
    return v3

    .line 29
    :cond_2
    return v3

    :sswitch_0
    const-string/jumbo v6, "Activating"

    .line 35
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v2, v3

    goto :goto_0

    :sswitch_1
    const-string/jumbo v6, "Unlocking"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v2, v4

    goto :goto_0

    :sswitch_2
    const-string/jumbo v6, "Locking"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v6, "Completing"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v6, "Blinking"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :pswitch_0
    const-string/jumbo v1, "https://%s/dm/v1/dev/report/activate"

    goto :goto_1

    :pswitch_1
    const-string/jumbo v1, "https://%s/dm/v1/dev/report/unlock"

    const-string/jumbo v2, "OK"

    .line 42
    invoke-virtual {v0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getResultDev()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.android.rmm.blink_stop"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 89
    :catch_0
    move-exception v0

    .line 88
    sget-object v1, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    :try_start_1
    const-string/jumbo v1, "https://%s/dm/v1/dev/report/lock"

    goto/16 :goto_1

    :pswitch_3
    const-string/jumbo v1, "https://%s/dm/v1/dev/report/complete"

    :pswitch_4
    const-string/jumbo v1, "https://%s/dm/v1/dev/report/blink"

    goto/16 :goto_1

    .line 64
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_4

    .line 74
    invoke-virtual {v0}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v0

    const/16 v1, 0x193

    if-eq v0, v1, :cond_6

    const/16 v0, 0xf

    .line 82
    invoke-static {p0, p1, v0}, Lcom/samsung/android/rlc/util/PushUtil;->retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I

    goto/16 :goto_2

    .line 65
    :cond_4
    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "RLC_ReportHandler - success "

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v0

    const-string/jumbo v1, "retType15"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/rlc/util/RLCUtil;->setStringInSecure(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Completing"

    .line 67
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 73
    :goto_3
    return v4

    .line 68
    :cond_5
    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Follow not support device steps."

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "clearOp"

    .line 70
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0xc

    .line 71
    invoke-static {p0, v0, v1}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    goto :goto_3

    .line 76
    :cond_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "clearOp"

    .line 77
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0xc

    .line 78
    invoke-static {p0, v0, v1}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 79
    sget-object v0, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "RLC_ReportHandler : not supported device "

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    return v3

    .line 35
    :sswitch_data_0
    .sparse-switch
        -0x2d6440da -> :sswitch_4
        -0xf83a2f0 -> :sswitch_0
        -0xe559e02 -> :sswitch_1
        0x568fbfd6 -> :sswitch_3
        0x7768d6b7 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
