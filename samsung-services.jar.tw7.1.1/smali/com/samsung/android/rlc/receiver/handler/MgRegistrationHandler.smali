.class public Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;
.super Ljava/lang/Object;
.source "MgRegistrationHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMgRegistrationBody(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pushType"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 131
    invoke-static {p0, p1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getRegistraionID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, "registrationID":Ljava/lang/String;
    invoke-static {p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCID()Ljava/lang/String;

    move-result-object v7

    .line 133
    .local v7, "rlcId":Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 134
    .local v6, "resObj":Lorg/json/JSONObject;
    const/4 v8, 0x0

    .line 136
    .local v8, "token":Ljava/lang/String;
    if-eqz v7, :cond_2

    if-eqz v4, :cond_2

    .line 137
    const-string v9, "GCM"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 140
    :try_start_0
    const-string v9, "gcm"

    invoke-virtual {v6, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 155
    :cond_0
    :goto_0
    :try_start_1
    const-string v9, "ver"

    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getRLCClientVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    const-string v9, "model"

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    const-string v9, "csc"

    invoke-static {}, Lcom/samsung/android/rlc/util/DeviceUtil;->getSalesCodeRegion()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v7}, Lcom/samsung/android/rlc/util/HMACUtil;->encryption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v8

    .line 169
    .end local v8    # "token":Ljava/lang/String;
    :goto_1
    new-instance v5, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    invoke-direct {v5}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;-><init>()V

    .line 170
    .local v5, "reqVO":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    invoke-virtual {v5, v7}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setRlcId(Ljava/lang/String;)V

    .line 171
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setData(Ljava/lang/String;)V

    .line 172
    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[ REG_ID]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "registPUSH: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    sget-object v9, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[RegisterURL: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p0}, Lcom/samsung/android/rlc/util/PushUtil;->getMGRegisterURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/rlc/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-object v5

    .line 137
    .end local v5    # "reqVO":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .restart local v8    # "token":Ljava/lang/String;
    :cond_1
    const-string v9, "SPP"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 147
    :try_start_2
    const-string v9, "spp"

    invoke-virtual {v6, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 148
    :catch_0
    move-exception v3

    .line 149
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 141
    .end local v3    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v3

    .line 142
    .restart local v3    # "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 165
    .end local v3    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v3

    .line 166
    .restart local v3    # "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 163
    .end local v3    # "e":Lorg/json/JSONException;
    :catch_3
    move-exception v0

    .line 164
    .local v0, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto/16 :goto_1

    .line 161
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_4
    move-exception v1

    .line 162
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto/16 :goto_1

    .line 159
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_5
    move-exception v2

    .line 160
    .local v2, "e":Ljava/security/SignatureException;
    invoke-virtual {v2}, Ljava/security/SignatureException;->printStackTrace()V

    goto/16 :goto_1

    .line 178
    .end local v2    # "e":Ljava/security/SignatureException;
    :cond_2
    return-object v10
.end method

.method public static makeMgRegistrationBundle(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pushType"    # Ljava/lang/String;

    .prologue
    .line 123
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 124
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "body"

    invoke-static {p0, p1}, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->getMgRegistrationBody(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 125
    const-string v1, "pushType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-object v0
.end method

.method public static run(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    sget-object v17, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    const-string v18, "MgRegistrationManager run"

    invoke-static/range {v17 .. v18}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 38
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v17, "body"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    .line 39
    .local v8, "dvcVO":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    const-string v17, "pushType"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 40
    .local v11, "pushType":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/util/PushUtil;->getMGRegisterURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 42
    .local v15, "uri":Ljava/lang/String;
    new-instance v4, Lcom/samsung/android/rlc/receiver/handler/CertHandler;

    invoke-direct {v4}, Lcom/samsung/android/rlc/receiver/handler/CertHandler;-><init>()V

    .line 43
    .local v4, "cert":Lcom/samsung/android/rlc/receiver/handler/CertHandler;
    const/4 v12, 0x0

    .line 45
    .local v12, "requestBody":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v8}, Lcom/samsung/android/rlc/receiver/handler/CertHandler;->encryptData(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 52
    .end local v12    # "requestBody":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    :goto_0
    if-nez v12, :cond_1

    .line 54
    :try_start_1
    sget-object v17, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    const-string v18, "MgRegistrationManager : retry alam set "

    invoke-static/range {v17 .. v18}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v17, "SPP"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 56
    const-string v17, "spp_backoff"

    const v18, 0x44aa200

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setRetryBackoff(Landroid/content/Context;Ljava/lang/String;I)V

    .line 60
    :goto_1
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-static {v0, v1, v11, v2}, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->setRetry(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 61
    return-void

    .line 46
    .restart local v12    # "requestBody":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    :catch_0
    move-exception v9

    .line 47
    .local v9, "e":Ljava/lang/Exception;
    sget-object v17, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "MgRegistrationManager : retry long term alam set, "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-static {v0, v1, v11, v2}, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->setRetry(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Z)V

    goto :goto_0

    .line 58
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v12    # "requestBody":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    :cond_0
    :try_start_2
    const-string v17, "gcm_backoff"

    const v18, 0x44aa200

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setRetryBackoff(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 115
    :catch_1
    move-exception v9

    .line 116
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 117
    sget-object v17, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "MgRegistrationManager : retry alam set, "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v11}, Lcom/samsung/android/rlc/util/PushUtil;->retryMgBackOff(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 34
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 64
    :cond_1
    :try_start_3
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 65
    sget-object v17, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    const-string v18, "unrecognized push type!! delivery repory ignored!!"

    invoke-static/range {v17 .. v18}, Lcom/samsung/android/rlc/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void

    .line 69
    :cond_2
    move-object/from16 v0, p0

    invoke-static {v0, v12, v15}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->httpRequest(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;Ljava/lang/String;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    move-result-object v13

    .line 71
    .local v13, "response":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    sget-object v18, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, "MgRegistrationManager: "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    if-eqz v13, :cond_3

    invoke-virtual {v13}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    :goto_3
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    if-eqz v13, :cond_9

    .line 73
    invoke-virtual {v13}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v17

    const/16 v18, 0x191

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 74
    sget-object v17, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "MgRegistrationManager: DM_CLIENT_AUTH_FAIL"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-static {v0, v1, v11, v2}, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->setRetry(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Z)V

    goto :goto_2

    .line 71
    :cond_3
    const-string v17, "null"

    goto :goto_3

    .line 76
    :cond_4
    invoke-virtual {v13}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v17

    const/16 v18, 0x193

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 79
    invoke-virtual {v13}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getData()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v14

    .line 80
    .local v14, "signedData":[B
    const-string v17, "cert"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 81
    .local v10, "prefCert":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v5

    .line 82
    .local v5, "certByte":[B
    invoke-virtual {v12}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->getData()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v7

    .line 83
    .local v7, "deviceData":[B
    invoke-static {v5}, Lcom/samsung/android/rlc/util/HMACUtil;->generatePublicKey([B)Ljava/security/interfaces/RSAPublicKey;

    .line 84
    invoke-static {v7, v14}, Lcom/samsung/android/rlc/util/HMACUtil;->verify([B[B)Z

    move-result v16

    .line 85
    .local v16, "verified":Z
    sget-object v17, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "verify signed Data : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    if-eqz v16, :cond_5

    .line 88
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 89
    .local v6, "clearBundle":Landroid/os/Bundle;
    const-string v17, "clearOp"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 90
    const/16 v17, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v6, v1}, Lcom/samsung/android/rlc/service/RmmTask;->startTask(Landroid/content/Context;Landroid/os/Bundle;I)V

    .line 94
    .end local v6    # "clearBundle":Landroid/os/Bundle;
    :goto_4
    sget-object v17, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    const-string v18, "MgRegistrationManager : not supported device "

    invoke-static/range {v17 .. v18}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void

    .line 92
    :cond_5
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-static {v0, v1, v11, v2}, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->setRetry(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Z)V

    goto :goto_4

    .line 98
    .end local v5    # "certByte":[B
    .end local v7    # "deviceData":[B
    .end local v10    # "prefCert":Ljava/lang/String;
    .end local v14    # "signedData":[B
    .end local v16    # "verified":Z
    :cond_6
    invoke-virtual {v13}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v17

    const/16 v18, 0xc8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 99
    const-string v17, "SPP"

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 100
    const-string v17, "retry_13"

    const-string v18, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :goto_5
    invoke-virtual {v13}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getMgAddr()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v11, v1}, Lcom/samsung/android/rlc/util/PreferencesUtil;->markMGRegistered(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v17

    sget-object v18, Lcom/samsung/android/rlc/util/RLCUtil;->PKG_VER:Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/rlc/util/PushUtil;->getRLCClientVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/samsung/android/rlc/util/RLCUtil;->setStringInSecure(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 102
    :cond_7
    const-string v17, "retry_12"

    const-string v18, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 109
    :cond_8
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-static {v0, v1, v11, v2}, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->setRetry(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 112
    :cond_9
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-static {v0, v1, v11, v2}, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->setRetry(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2
.end method

.method static setRetry(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pushType"    # Ljava/lang/String;
    .param p3, "clearCert"    # Z

    .prologue
    .line 182
    sget-object v1, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

    const-string v2, "[setRetry]"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    if-eqz p3, :cond_0

    .line 185
    :try_start_0
    const-string v1, "cert"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/samsung/android/rlc/util/PreferencesUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/rlc/util/PushUtil;->retryMgBackOff(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/samsung/android/rlc/receiver/handler/MgRegistrationHandler;->TAG:Ljava/lang/String;

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

    .line 191
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
