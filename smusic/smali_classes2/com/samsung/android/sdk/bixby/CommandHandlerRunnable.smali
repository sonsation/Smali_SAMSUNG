.class Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;
.super Ljava/lang/Object;
.source "CommandHandlerRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final CMD_ALL_STATES:Ljava/lang/String; = "emes_all_states"

.field static final CMD_CHATTY_MODE:Ljava/lang/String; = "emes_chatty_mode"

.field static final CMD_CONTEXT:Ljava/lang/String; = "emes_request_context"

.field static final CMD_FILLING:Ljava/lang/String; = "emes_request_param_filling"

.field static final CMD_NLG_RESULT:Ljava/lang/String; = "emes_nlg_end_result"

.field static final CMD_PARTIAL_LANDING_STATE:Ljava/lang/String; = "emes_partial_landing_state"

.field static final CMD_PATH_RULE_INFO:Ljava/lang/String; = "emes_pathrule_info"

.field static final CMD_SPLIT_STATE:Ljava/lang/String; = "emes_split_state"

.field static final CMD_STATE:Ljava/lang/String; = "emes_state"

.field static final CMD_TTS_RESULT:Ljava/lang/String; = "emes_tts_result"

.field static final CMD_USER_CONFIRM:Ljava/lang/String; = "emes_user_confirm"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private final mJsonCommand:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_0.2.7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "jsonCommand"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->mJsonCommand:Ljava/lang/String;

    .line 31
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    .line 32
    return-void
.end method

.method private getContent(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    .param p1, "jsonObj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 88
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 37
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    iget-object v12, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->mJsonCommand:Ljava/lang/String;

    invoke-direct {v6, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 38
    .local v6, "jsonObj":Lorg/json/JSONObject;
    const-string v12, "command"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "command":Ljava/lang/String;
    sget-object v12, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Command from EM: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const-string v12, "emes_request_context"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 43
    iget-object v12, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v12}, Lcom/samsung/android/sdk/bixby/BixbyApi;->requestContext()V

    .line 85
    .end local v2    # "command":Ljava/lang/String;
    .end local v6    # "jsonObj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 47
    .restart local v2    # "command":Ljava/lang/String;
    .restart local v6    # "jsonObj":Lorg/json/JSONObject;
    :cond_0
    invoke-direct {p0, v6}, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->getContent(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    .line 49
    .local v5, "jsonContent":Lorg/json/JSONObject;
    const-string v12, "emes_state"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 50
    iget-object v12, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v13, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->mJsonCommand:Ljava/lang/String;

    iput-object v13, v12, Lcom/samsung/android/sdk/bixby/BixbyApi;->mStateCommandJsonFromBa:Ljava/lang/String;

    .line 51
    const-string/jumbo v12, "state"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 52
    .local v7, "jsonState":Ljava/lang/String;
    iget-object v12, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v12, v7}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendState(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    .end local v2    # "command":Ljava/lang/String;
    .end local v5    # "jsonContent":Lorg/json/JSONObject;
    .end local v6    # "jsonObj":Lorg/json/JSONObject;
    .end local v7    # "jsonState":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 83
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 53
    .end local v4    # "e":Lorg/json/JSONException;
    .restart local v2    # "command":Ljava/lang/String;
    .restart local v5    # "jsonContent":Lorg/json/JSONObject;
    .restart local v6    # "jsonObj":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    const-string v12, "emes_request_param_filling"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 54
    const-string/jumbo v12, "slotFillingResult"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 55
    .local v11, "strFillingResult":Ljava/lang/String;
    invoke-static {v11}, Lcom/samsung/android/sdk/bixby/ParamFillingReader;->read(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/ParamFilling;

    move-result-object v9

    .line 56
    .local v9, "pf":Lcom/samsung/android/sdk/bixby/data/ParamFilling;
    iget-object v12, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v12, v9}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendParamFilling(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)V

    goto :goto_0

    .line 57
    .end local v9    # "pf":Lcom/samsung/android/sdk/bixby/data/ParamFilling;
    .end local v11    # "strFillingResult":Ljava/lang/String;
    :cond_2
    const-string v12, "emes_pathrule_info"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 58
    const-string v12, "pathRuleInfo"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 59
    .local v8, "pathRuleInfo":Ljava/lang/String;
    invoke-static {v8}, Lcom/samsung/android/sdk/bixby/PathRuleInfoReader;->read(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;

    move-result-object v10

    .line 60
    .local v10, "pri":Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;
    iget-object v12, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v12, v10}, Lcom/samsung/android/sdk/bixby/BixbyApi;->handlePathRuleInfo(Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;)V

    goto :goto_0

    .line 61
    .end local v8    # "pathRuleInfo":Ljava/lang/String;
    .end local v10    # "pri":Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;
    :cond_3
    const-string v12, "emes_chatty_mode"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 62
    const-string/jumbo v12, "utterance"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "chatText":Ljava/lang/String;
    const-string v12, "directSend"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 64
    .local v3, "directSend":Z
    iget-object v12, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v12, v1, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendChatText(Ljava/lang/String;Z)V

    goto :goto_0

    .line 65
    .end local v1    # "chatText":Ljava/lang/String;
    .end local v3    # "directSend":Z
    :cond_4
    const-string v12, "emes_split_state"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 66
    iget-object v12, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v13, "stateIds"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendMultiStates(Lorg/json/JSONArray;)V

    goto/16 :goto_0

    .line 67
    :cond_5
    const-string v12, "emes_all_states"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 68
    iget-object v12, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v13, "states"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendAllStates(Lorg/json/JSONArray;)V

    goto/16 :goto_0

    .line 69
    :cond_6
    const-string v12, "emes_partial_landing_state"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 70
    const-string v12, "isLanded"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 71
    .local v0, "bLanded":Z
    iget-object v12, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v12, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setPartiallyLanded(Z)V

    goto/16 :goto_0

    .line 72
    .end local v0    # "bLanded":Z
    :cond_7
    const-string v12, "emes_user_confirm"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 73
    iget-object v12, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string v13, "appName"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "result"

    .line 74
    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 73
    invoke-virtual {v12, v13, v14}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendUserConfirm(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 75
    :cond_8
    const-string v12, "emes_tts_result"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 76
    iget-object v12, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v13, "result"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendTtsResult(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 77
    :cond_9
    const-string v12, "emes_nlg_end_result"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 78
    iget-object v12, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v12}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendNlgEnd()V

    goto/16 :goto_0

    .line 80
    :cond_a
    sget-object v12, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown command arrived : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
