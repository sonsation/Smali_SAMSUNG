.class public Lcom/samsung/android/rlc/receiver/handler/PrepareHandler;
.super Ljava/lang/Object;
.source "PrepareHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/samsung/android/rlc/receiver/handler/PrepareHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/rlc/receiver/handler/PrepareHandler;->TAG:Ljava/lang/String;

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

.method private static getPrepareBody(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .locals 4
    .param p0, "msgId"    # Ljava/lang/String;
    .param p1, "oprtId"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    sget-object v1, Lcom/samsung/android/rlc/receiver/handler/PrepareHandler;->TAG:Ljava/lang/String;

    const-string v2, "[getPrepareBody]"

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v0, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    invoke-direct {v0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;-><init>()V

    .line 74
    .local v0, "reqVO":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    invoke-static {p2}, Lcom/samsung/android/rlc/util/RLCUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/rlc/util/RLCUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/rlc/util/RLCUtil;->getRLCID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setRlcId(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0, p1}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setOprtId(Ljava/lang/String;)V

    .line 76
    sget-object v1, Lcom/samsung/android/rlc/receiver/handler/PrepareHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getPrepareBody]msgId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0, p0}, Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;->setMsgId(Ljava/lang/String;)V

    .line 79
    return-object v0
.end method

.method public static makePrepareBundle(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/os/Bundle;
    .locals 3
    .param p0, "msgId"    # Ljava/lang/String;
    .param p1, "oprtId"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 66
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "body"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/rlc/receiver/handler/PrepareHandler;->getPrepareBody(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 67
    return-object v0
.end method

.method public static run(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v13, 0x0

    .line 25
    sget-object v10, Lcom/samsung/android/rlc/receiver/handler/PrepareHandler;->TAG:Ljava/lang/String;

    const-string v11, "RLC_PrepareHandler run"

    invoke-static {v10, v11}, Lcom/samsung/android/rlc/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 29
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v10, "MID"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 30
    .local v5, "msgId":Ljava/lang/String;
    const-string v10, "OID"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 31
    .local v6, "oprtId":Ljava/lang/String;
    invoke-static {v5, v6, p0}, Lcom/samsung/android/rlc/receiver/handler/PrepareHandler;->getPrepareBody(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;

    move-result-object v0

    .line 32
    .local v0, "body":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    const-string v10, "https://%s/dm/v1/dev/getCmd"

    invoke-static {p0, v10}, Lcom/samsung/android/rlc/util/PushUtil;->getDMURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 34
    .local v9, "uri":Ljava/lang/String;
    invoke-static {p0, v0, v9}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler;->httpRequest(Landroid/content/Context;Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;Ljava/lang/String;)Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;

    move-result-object v8

    .line 36
    .local v8, "response":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    if-eqz v8, :cond_0

    .line 40
    invoke-virtual {v8}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getHttpStatusCode()I

    move-result v10

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_0

    .line 41
    invoke-virtual {v8}, Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;->getResponseBean()Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;

    move-result-object v7

    .line 42
    .local v7, "resVO":Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 43
    .local v3, "completeBody":Lorg/json/JSONObject;
    const-string v10, "cmd"

    invoke-virtual {v7}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getCmd()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    const-string v10, "oprtId"

    invoke-virtual {v7}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getOprtId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string v10, "cert"

    invoke-virtual {v7}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getCert()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    const-string v10, "nonceSvr"

    invoke-virtual {v7}, Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;->getNonceSvr()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    invoke-static {v3, p0}, Lcom/samsung/android/rlc/receiver/handler/CompleteHandler;->makeCompleteBundle(Lorg/json/JSONObject;Landroid/content/Context;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 49
    .local v2, "comBundle":Landroid/os/Bundle;
    return-object v2

    .line 58
    .end local v0    # "body":Lcom/samsung/android/rlc/vo/DeviceApiRequestVO;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "comBundle":Landroid/os/Bundle;
    .end local v3    # "completeBody":Lorg/json/JSONObject;
    .end local v5    # "msgId":Ljava/lang/String;
    .end local v6    # "oprtId":Ljava/lang/String;
    .end local v7    # "resVO":Lcom/samsung/android/rlc/vo/DeviceApiResponseVO;
    .end local v8    # "response":Lcom/samsung/android/rlc/receiver/handler/HttpRequestHandler$RESPONSE;
    .end local v9    # "uri":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 59
    .local v4, "e":Ljava/lang/Exception;
    sget-object v10, Lcom/samsung/android/rlc/receiver/handler/PrepareHandler;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/rlc/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v13
.end method
