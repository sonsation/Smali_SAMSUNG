.class public Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;
.super Ljava/lang/Object;
.source "CompleteHandler.java"


# static fields
.field private static final INTENT_RMM_NOTI:Ljava/lang/String; = "com.samsung.android.rmm.notification"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->TAG:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCompleteBody(Lorg/json/JSONObject;Landroid/content/Context;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .locals 15
    .param p0, "completeBody"    # Lorg/json/JSONObject;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    sget-object v11, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->TAG:Ljava/lang/String;

    const-string v12, "[getCompleteBody]"

    invoke-static {v11, v12}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v10, ""

    .line 116
    .local v10, "svrNonce":Ljava/lang/String;
    const-string v9, ""

    .line 117
    .local v9, "svrCert":Ljava/lang/String;
    const-string v6, ""

    .line 118
    .local v6, "oprtId":Ljava/lang/String;
    const-string v5, ""

    .line 119
    .local v5, "oprtCmd":Ljava/lang/String;
    const/4 v1, 0x0

    .line 121
    .local v1, "dvcMsg":[B
    const/4 v0, -0x1

    .line 123
    .local v0, "cmdNum":I
    :try_start_0
    const-string v11, "nonceSvr"

    invoke-virtual {p0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 124
    const-string v11, "cert"

    invoke-virtual {p0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 125
    const-string v11, "cmd"

    invoke-virtual {p0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 126
    const-string v11, "oprtId"

    invoke-virtual {p0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 130
    :goto_0
    sget-object v11, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[getCompleteBody] RLC operation command : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v11, "Activating"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 133
    const/4 v0, 0x1

    .line 148
    :cond_0
    :goto_1
    new-instance v7, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    invoke-direct {v7}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;-><init>()V

    .line 150
    .local v7, "reqVO":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    const-string v11, "Messaging"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 152
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCID()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCID()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/samsung/android/rlc/util/HMACUtil;->encryption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 153
    .local v4, "hashedRLC":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v12

    if-nez v4, :cond_5

    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    const/4 v14, 0x2

    invoke-static {v13, v14}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v13

    invoke-virtual {v12, v11, v13}, Lcom/samsung/android/rlc/util/RLCUtil;->encryptData([B[B)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 167
    .end local v1    # "dvcMsg":[B
    .end local v4    # "hashedRLC":Ljava/lang/String;
    :goto_3
    sget-object v12, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[getCompleteBody] Device Msg L : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz v1, :cond_8

    array-length v11, v1

    :goto_4
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v7, v1}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setDataByte([B)V

    .line 169
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setRlcId(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v7, v6}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setOprtId(Ljava/lang/String;)V

    .line 171
    return-object v7

    .line 127
    .end local v7    # "reqVO":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .restart local v1    # "dvcMsg":[B
    :catch_0
    move-exception v3

    .line 128
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 131
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_1
    const-string v11, "Unlocking"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 136
    const/4 v0, 0x3

    .line 137
    goto :goto_1

    .line 131
    :cond_2
    const-string v11, "Locking"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 139
    const/4 v0, 0x2

    .line 140
    goto :goto_1

    .line 131
    :cond_3
    const-string v11, "Completing"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 142
    const/4 v0, 0x4

    .line 143
    goto/16 :goto_1

    .line 131
    :cond_4
    const-string v11, "Blinking"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 145
    const/4 v0, 0x5

    .line 146
    goto/16 :goto_1

    .line 153
    .restart local v4    # "hashedRLC":Ljava/lang/String;
    .restart local v7    # "reqVO":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    :cond_5
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v11

    goto :goto_2

    .line 154
    .end local v4    # "hashedRLC":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 155
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 159
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_3
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCID()Ljava/lang/String;

    move-result-object v8

    .line 160
    .local v8, "rlcId":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v12

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const/4 v13, 0x2

    invoke-static {v11, v13}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v13

    .line 161
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    const/4 v14, 0x2

    invoke-static {v11, v14}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v14

    .line 162
    if-nez v8, :cond_7

    const/4 v11, 0x0

    .line 160
    :goto_5
    invoke-virtual {v12, v13, v14, v11, v0}, Lcom/samsung/android/rlc/util/RLCUtil;->prepareRlc([B[B[BI)[B

    move-result-object v1

    .local v1, "dvcMsg":[B
    goto/16 :goto_3

    .line 162
    .local v1, "dvcMsg":[B
    :cond_7
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v11

    goto :goto_5

    .line 163
    .end local v8    # "rlcId":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 164
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 167
    .end local v1    # "dvcMsg":[B
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_4
.end method

.method public static makeCompleteBundle(Lorg/json/JSONObject;Landroid/content/Context;)Landroid/os/Bundle;
    .locals 4
    .param p0, "completeBody"    # Lorg/json/JSONObject;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 102
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "body"

    invoke-static {p0, p1}, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->getCompleteBody(Lorg/json/JSONObject;Landroid/content/Context;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 104
    :try_start_0
    const-string v2, "cmd"

    const-string v3, "cmd"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v2, "oprtId"

    const-string v3, "oprtId"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-object v0

    .line 106
    :catch_0
    move-exception v1

    .line 107
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static run(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x0

    .line 30
    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->TAG:Ljava/lang/String;

    const-string v10, "RLC_CompleteHandler run"

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    if-nez p1, :cond_0

    return-object v12

    .line 34
    :cond_0
    :try_start_0
    const-string v9, "body"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    .line 35
    .local v1, "dvceVO":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    const-string v9, "cmd"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 36
    .local v5, "oprtCmd":Ljava/lang/String;
    const-string v7, ""

    .line 38
    .local v7, "subURL":Ljava/lang/String;
    const-string v9, "Activating"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 40
    const-string v7, "https://%s/dm/v1/dev/cmd/activate"

    .line 59
    :cond_1
    :goto_0
    invoke-static {p0, v7}, Lcom/samsung/android/rlc/util/PushUtil;->getDMURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 61
    .local v8, "uri":Ljava/lang/String;
    const/4 v3, 0x0

    .line 63
    .local v3, "isfailed":Z
    invoke-static {p0, v1, v8}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->httpRequest(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;Ljava/lang/String;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    move-result-object v6

    .line 65
    .local v6, "response":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    if-eqz v6, :cond_a

    .line 67
    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RLC_CompleteHandler(isfailed): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v6}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v9

    const/16 v10, 0xc8

    if-ne v9, v10, :cond_9

    .line 69
    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->TAG:Ljava/lang/String;

    const-string v10, "RLC_CompleteHandler : SUCCESS "

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v9, "Messaging"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 71
    invoke-virtual {v6}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 72
    new-instance v4, Landroid/content/Intent;

    const-string v9, "com.samsung.android.rmm.notification"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .local v4, "notiIntent":Landroid/content/Intent;
    const-string v9, "msg"

    invoke-virtual {v6}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    const-string v9, "requestor"

    invoke-virtual {v6}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getRequestor()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    const-string v9, "tel"

    invoke-virtual {v6}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getTel()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string v9, "iconUrl"

    invoke-virtual {v6}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getIcon()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    invoke-virtual {p0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 79
    .end local v4    # "notiIntent":Landroid/content/Intent;
    :cond_2
    return-object v12

    .line 38
    .end local v3    # "isfailed":Z
    .end local v6    # "response":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .end local v8    # "uri":Ljava/lang/String;
    :cond_3
    const-string v9, "Unlocking"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 43
    const-string v7, "https://%s/dm/v1/dev/cmd/unlock"

    goto/16 :goto_0

    .line 38
    :cond_4
    const-string v9, "Locking"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 46
    const-string v7, "https://%s/dm/v1/dev/cmd/lock"

    goto/16 :goto_0

    .line 38
    :cond_5
    const-string v9, "Completing"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 49
    const-string v7, "https://%s/dm/v1/dev/cmd/complete"

    goto/16 :goto_0

    .line 38
    :cond_6
    const-string v9, "Messaging"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 52
    const-string v7, "https://%s/dm/v1/dev/cmd/message"

    goto/16 :goto_0

    .line 38
    :cond_7
    const-string v9, "Blinking"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 55
    const-string v7, "https://%s/dm/v1/dev/cmd/blink"

    goto/16 :goto_0

    .line 81
    .restart local v3    # "isfailed":Z
    .restart local v6    # "response":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .restart local v8    # "uri":Ljava/lang/String;
    :cond_8
    invoke-virtual {v6}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v9

    invoke-static {p0, v9, v5}, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->makeReportBundle(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    return-object v9

    .line 83
    :cond_9
    invoke-virtual {v6}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v9

    const/16 v10, 0x193

    if-ne v9, v10, :cond_b

    .line 84
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 85
    .local v0, "clearBundle":Landroid/os/Bundle;
    const-string v9, "clearOp"

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 86
    const/16 v9, 0xc

    invoke-static {p0, v0, v9}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 87
    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->TAG:Ljava/lang/String;

    const-string v10, "RLC_CompleteHandler : not supported device "

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .end local v0    # "clearBundle":Landroid/os/Bundle;
    .end local v1    # "dvceVO":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .end local v3    # "isfailed":Z
    .end local v5    # "oprtCmd":Ljava/lang/String;
    .end local v6    # "response":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .end local v7    # "subURL":Ljava/lang/String;
    .end local v8    # "uri":Ljava/lang/String;
    :cond_a
    :goto_1
    return-object v12

    .line 88
    .restart local v1    # "dvceVO":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .restart local v3    # "isfailed":Z
    .restart local v5    # "oprtCmd":Ljava/lang/String;
    .restart local v6    # "response":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .restart local v7    # "subURL":Ljava/lang/String;
    .restart local v8    # "uri":Ljava/lang/String;
    :cond_b
    invoke-virtual {v6}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v9

    const/16 v10, 0x191

    if-eq v9, v10, :cond_a

    .line 89
    invoke-virtual {v6}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    const/16 v10, 0x1f4

    if-ne v9, v10, :cond_a

    goto :goto_1

    .line 93
    .end local v1    # "dvceVO":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .end local v3    # "isfailed":Z
    .end local v5    # "oprtCmd":Ljava/lang/String;
    .end local v6    # "response":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .end local v7    # "subURL":Ljava/lang/String;
    .end local v8    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 94
    .local v2, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
