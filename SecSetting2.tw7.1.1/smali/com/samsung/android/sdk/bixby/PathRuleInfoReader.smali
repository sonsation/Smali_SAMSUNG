.class Lcom/samsung/android/sdk/bixby/PathRuleInfoReader;
.super Ljava/lang/Object;
.source "PathRuleInfoReader.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;
    .locals 15
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 18
    const/4 v8, 0x0

    .line 19
    .local v8, "isCalleePathRule":Z
    const/4 v9, 0x0

    .line 22
    .local v9, "isFromSimulator":Z
    :try_start_0
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .local v13, "obj":Lorg/json/JSONObject;
    const-string/jumbo v0, "pathRuleId"

    .line 24
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "pathRuleId":Ljava/lang/String;
    const-string/jumbo v0, "pathRuleName"

    .line 25
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "pathRuleName":Ljava/lang/String;
    const-string/jumbo v0, "intent"

    .line 26
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "intent":Ljava/lang/String;
    const-string/jumbo v0, "utterance"

    .line 27
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "utterance":Ljava/lang/String;
    const-string/jumbo v0, "sampleUtterance"

    .line 28
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "sampleUtterance":Ljava/lang/String;
    const-string/jumbo v0, "apps"

    .line 29
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 30
    .local v12, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v6, v0, [Ljava/lang/String;

    .local v6, "apps":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 31
    .local v11, "idx":I
    :goto_0
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v11, v0, :cond_0

    const-string/jumbo v0, "isRoot"

    .line 34
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .local v7, "isRoot":Z
    const-string/jumbo v0, "isCalleePathRule"

    .line 35
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .end local v8    # "isCalleePathRule":Z
    :goto_1
    const-string/jumbo v0, "isFromSimulator"

    .line 38
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 42
    .end local v9    # "isFromSimulator":Z
    :goto_2
    new-instance v0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZZ)V

    return-object v0

    .line 32
    .end local v7    # "isRoot":Z
    .restart local v8    # "isCalleePathRule":Z
    .restart local v9    # "isFromSimulator":Z
    :cond_0
    invoke-virtual {v12, v11}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v11

    .line 31
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .restart local v7    # "isRoot":Z
    :cond_1
    const-string/jumbo v0, "isCalleePathRule"

    .line 36
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .local v8, "isCalleePathRule":Z
    goto :goto_1

    .end local v8    # "isCalleePathRule":Z
    :cond_2
    const-string/jumbo v0, "isFromSimulator"

    .line 39
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .local v9, "isFromSimulator":Z
    goto :goto_2

    .line 42
    .end local v1    # "pathRuleId":Ljava/lang/String;
    .end local v2    # "pathRuleName":Ljava/lang/String;
    .end local v3    # "intent":Ljava/lang/String;
    .end local v4    # "utterance":Ljava/lang/String;
    .end local v5    # "sampleUtterance":Ljava/lang/String;
    .end local v6    # "apps":[Ljava/lang/String;
    .end local v7    # "isRoot":Z
    .end local v9    # "isFromSimulator":Z
    .end local v11    # "idx":I
    .end local v12    # "jsonArray":Lorg/json/JSONArray;
    .end local v13    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v10

    .line 46
    .local v10, "e":Lorg/json/JSONException;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v10}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
