.class public Lcom/samsung/android/rlc/receiver/handler/ReportHandler;
.super Ljava/lang/Object;
.source "ReportHandler.java"


# static fields
.field private static final INTENT_PERMISSION:Ljava/lang/String; = "com.samsung.android.permission.RMM_INIT"

.field private static final RMM_BLINK_STOP:Ljava/lang/String; = "com.samsung.android.rmm.blink_stop"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->TAG:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getReportBody(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;Ljava/lang/String;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preBody"    # Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;
    .param p2, "oprtCmd"    # Ljava/lang/String;

    .prologue
    .line 111
    const/4 v11, -0x1

    .line 112
    .local v11, "cmdNum":I
    const-string v1, "Activating"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    const/4 v11, 0x1

    .line 130
    :cond_0
    :goto_0
    const/4 v14, 0x0

    .line 133
    .local v14, "oprtResult":[B
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/rlc/util/RLCUtil;->backUpSecureData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 134
    .local v8, "backUpData":Lorg/json/JSONObject;
    const/4 v1, 0x2

    if-ne v11, v1, :cond_7

    .line 135
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getResultSvr()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    .line 136
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getPinByte()[B

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getTokenByte()[B

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getMessageByte()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 137
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getTel()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getRequestorByte()[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    .line 135
    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/rlc/util/RLCUtil;->completeLock(Z[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v14

    .line 173
    .local v14, "oprtResult":[B
    :cond_1
    :goto_2
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v1

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/rlc/util/RLCUtil;->restoreSecureData(Ljava/lang/String;)Z

    move-result v16

    .line 174
    .local v16, "result":Z
    sget-object v1, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Store Client Data] Result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v8    # "backUpData":Lorg/json/JSONObject;
    .end local v14    # "oprtResult":[B
    .end local v16    # "result":Z
    :goto_3
    sget-object v1, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Changed Status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-instance v15, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    invoke-direct {v15}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;-><init>()V

    .line 181
    .local v15, "reqVO":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setRlcId(Ljava/lang/String;)V

    .line 183
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getOprtId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setOprtId(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setToken(Ljava/lang/String;)V

    .line 185
    if-nez v14, :cond_c

    const-string v1, "NOK"

    :goto_4
    invoke-virtual {v15, v1}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setResultDev(Ljava/lang/String;)V

    .line 187
    return-object v15

    .line 112
    .end local v15    # "reqVO":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    :cond_2
    const-string v1, "Unlocking"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 117
    const/4 v11, 0x3

    .line 118
    goto/16 :goto_0

    .line 112
    :cond_3
    const-string v1, "Locking"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 120
    const/4 v11, 0x2

    .line 121
    goto/16 :goto_0

    .line 112
    :cond_4
    const-string v1, "Completing"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 123
    const/4 v11, 0x4

    .line 124
    goto/16 :goto_0

    .line 112
    :cond_5
    const-string v1, "Blinking"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    const/4 v11, 0x5

    .line 127
    goto/16 :goto_0

    .line 135
    .restart local v8    # "backUpData":Lorg/json/JSONObject;
    .local v14, "oprtResult":[B
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 138
    :cond_7
    const/4 v1, 0x5

    if-ne v11, v1, :cond_a

    .line 139
    :try_start_1
    new-instance v5, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getMessageByte()[B

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    .line 140
    .local v5, "blinkMsg":Ljava/lang/String;
    new-instance v7, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getRequestorByte()[B

    move-result-object v1

    invoke-direct {v7, v1}, Ljava/lang/String;-><init>([B)V

    .line 141
    .local v7, "blinkReq":Ljava/lang/String;
    new-instance v10, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getInterval()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 142
    .local v10, "blinkInterval":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getIcon()Ljava/lang/String;

    move-result-object v9

    .line 143
    .local v9, "blinkIcon":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getResultSvr()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    .line 144
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getPinByte()[B

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getTokenByte()[B

    move-result-object v4

    .line 145
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getTel()Ljava/lang/String;

    move-result-object v6

    .line 143
    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/rlc/util/RLCUtil;->completeBlink(Z[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v14

    .line 147
    .local v14, "oprtResult":[B
    if-eqz v14, :cond_1

    .line 148
    sget-object v1, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->TAG:Ljava/lang/String;

    const-string v2, "send blinking info to application"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v13, Landroid/content/Intent;

    const-string v1, "com.samsung.android.rmm.blink"

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    .local v13, "i":Landroid/content/Intent;
    const-string v1, "blinkMsg"

    invoke-virtual {v13, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string v1, "reqTel"

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getTel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string v1, "requestor"

    invoke-virtual {v13, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v1, "interval"

    invoke-virtual {v13, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string v1, "status"

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 157
    const-string v1, "iconUrl"

    invoke-virtual {v13, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    :cond_8
    sget-object v1, Landroid/os/UserHandle;->SEM_ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 162
    const-string v1, "blinkPass"

    new-instance v2, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getPinByte()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    const-string v1, "blinkMsg"

    invoke-virtual {v8, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    const-string v1, "blinkReq"

    invoke-virtual {v8, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    const-string v1, "blinkInt"

    invoke-virtual {v8, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    const-string v1, "blinkTel"

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getTel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 175
    .end local v5    # "blinkMsg":Ljava/lang/String;
    .end local v7    # "blinkReq":Ljava/lang/String;
    .end local v8    # "backUpData":Lorg/json/JSONObject;
    .end local v9    # "blinkIcon":Ljava/lang/String;
    .end local v10    # "blinkInterval":Ljava/lang/String;
    .end local v13    # "i":Landroid/content/Intent;
    .end local v14    # "oprtResult":[B
    :catch_0
    move-exception v12

    .line 176
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 143
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v5    # "blinkMsg":Ljava/lang/String;
    .restart local v7    # "blinkReq":Ljava/lang/String;
    .restart local v8    # "backUpData":Lorg/json/JSONObject;
    .restart local v9    # "blinkIcon":Ljava/lang/String;
    .restart local v10    # "blinkInterval":Ljava/lang/String;
    .local v14, "oprtResult":[B
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 169
    .end local v5    # "blinkMsg":Ljava/lang/String;
    .end local v7    # "blinkReq":Ljava/lang/String;
    .end local v9    # "blinkIcon":Ljava/lang/String;
    .end local v10    # "blinkInterval":Ljava/lang/String;
    :cond_a
    :try_start_2
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getResultSvr()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OK"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    .line 170
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getTokenByte()[B

    move-result-object v3

    .line 171
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getSignByte()[B

    move-result-object v4

    .line 169
    invoke-virtual {v2, v1, v3, v11, v4}, Lcom/samsung/android/rlc/util/RLCUtil;->completeRlc(Z[BI[B)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v14

    .local v14, "oprtResult":[B
    goto/16 :goto_2

    .local v14, "oprtResult":[B
    :cond_b
    const/4 v1, 0x0

    goto :goto_6

    .line 185
    .end local v8    # "backUpData":Lorg/json/JSONObject;
    .end local v14    # "oprtResult":[B
    .restart local v15    # "reqVO":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    :cond_c
    const-string v1, "OK"

    goto/16 :goto_4
.end method

.method public static makeReportBundle(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "preBody"    # Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;
    .param p2, "oprtCmd"    # Ljava/lang/String;

    .prologue
    .line 103
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 104
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "body"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->getReportBody(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;Ljava/lang/String;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 105
    const-string v1, "cmd"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-object v0
.end method

.method public static run(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    .line 30
    sget-object v8, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->TAG:Ljava/lang/String;

    const-string v9, "RLC_ReportHandler run"

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    if-nez p1, :cond_0

    return v11

    .line 34
    :cond_0
    :try_start_0
    const-string v8, "body"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    .line 35
    .local v1, "dvceVO":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    const-string v8, "cmd"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 36
    .local v4, "oprtCmd":Ljava/lang/String;
    const-string v6, ""

    .line 38
    .local v6, "subURL":Ljava/lang/String;
    const-string v8, "Activating"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 40
    const-string v6, "https://%s/dm/v1/dev/report/activate"

    .line 60
    :cond_1
    :goto_0
    invoke-static {p0, v6}, Lcom/samsung/android/rlc/util/PushUtil;->getDMURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 62
    .local v7, "uri":Ljava/lang/String;
    const/4 v5, 0x0

    .line 63
    .local v5, "response":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    if-eqz v1, :cond_2

    .line 64
    invoke-static {p0, v1, v7}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->httpRequest(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;Ljava/lang/String;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    move-result-object v5

    .line 68
    .end local v5    # "response":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    :cond_2
    if-eqz v5, :cond_9

    .line 71
    invoke-virtual {v5}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v8

    const/16 v9, 0xc8

    if-ne v8, v9, :cond_8

    .line 72
    sget-object v8, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->TAG:Ljava/lang/String;

    const-string v9, "RLC_ReportHandler - success "

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v8, "retry_15"

    const-string v9, ""

    invoke-static {p0, v8, v9}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v8, "Completing"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 75
    const-string v8, "theftptc"

    const-string v9, "N"

    invoke-static {p0, v8, v9}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    sget-object v8, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->TAG:Ljava/lang/String;

    const-string v9, "Follow not support device steps."

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 78
    .local v0, "clearBundle":Landroid/os/Bundle;
    const-string v8, "clearOp"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 79
    const/16 v8, 0xc

    invoke-static {p0, v0, v8}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 81
    .end local v0    # "clearBundle":Landroid/os/Bundle;
    :cond_3
    const/4 v8, 0x1

    return v8

    .line 38
    .end local v7    # "uri":Ljava/lang/String;
    :cond_4
    const-string v8, "Unlocking"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 43
    const-string v6, "https://%s/dm/v1/dev/report/unlock"

    .line 45
    if-eqz v1, :cond_1

    const-string v8, "OK"

    invoke-virtual {v1}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getResultDev()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 46
    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.samsung.android.rmm.blink_stop"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    .local v3, "i":Landroid/content/Intent;
    sget-object v8, Landroid/os/UserHandle;->SEM_ALL:Landroid/os/UserHandle;

    const-string v9, "com.samsung.android.permission.RMM_INIT"

    invoke-virtual {p0, v3, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    .end local v1    # "dvceVO":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .end local v3    # "i":Landroid/content/Intent;
    .end local v4    # "oprtCmd":Ljava/lang/String;
    .end local v6    # "subURL":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 96
    .local v2, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/samsung/android/rlc/receiver/handler/ReportHandler;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return v11

    .line 38
    .restart local v1    # "dvceVO":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .restart local v4    # "oprtCmd":Ljava/lang/String;
    .restart local v6    # "subURL":Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string v8, "Locking"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 51
    const-string v6, "https://%s/dm/v1/dev/report/lock"

    goto/16 :goto_0

    .line 38
    :cond_6
    const-string v8, "Completing"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 54
    const-string v6, "https://%s/dm/v1/dev/report/complete"

    goto/16 :goto_0

    .line 38
    :cond_7
    const-string v8, "Blinking"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 57
    const-string v6, "https://%s/dm/v1/dev/report/blink"

    goto/16 :goto_0

    .line 90
    .restart local v7    # "uri":Ljava/lang/String;
    :cond_8
    const/16 v8, 0xf

    invoke-static {p0, p1, v8}, Lcom/samsung/android/rlc/util/PushUtil;->retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I

    goto :goto_1

    .line 93
    :cond_9
    const/16 v8, 0xf

    invoke-static {p0, p1, v8}, Lcom/samsung/android/rlc/util/PushUtil;->retryBackoff(Landroid/content/Context;Landroid/os/Bundle;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
