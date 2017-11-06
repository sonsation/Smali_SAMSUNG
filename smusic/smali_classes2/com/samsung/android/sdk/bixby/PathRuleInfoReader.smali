.class Lcom/samsung/android/sdk/bixby/PathRuleInfoReader;
.super Ljava/lang/Object;
.source "PathRuleInfoReader.java"


# static fields
.field private static final APPS:Ljava/lang/String; = "apps"

.field private static final EXECUTION_TYPE:Ljava/lang/String; = "executionType"

.field private static final INTENT:Ljava/lang/String; = "intent"

.field private static final IS_CALLEE_PATH_RULE:Ljava/lang/String; = "isCalleePathRule"

.field private static final IS_FROM_SIMULATOR:Ljava/lang/String; = "isFromSimulator"

.field private static final IS_ROOT:Ljava/lang/String; = "isRoot"

.field private static final PATH_RULE_ID:Ljava/lang/String; = "pathRuleId"

.field private static final PATH_RULE_NAME:Ljava/lang/String; = "pathRuleName"

.field private static final PATH_RULE_STATES:Ljava/lang/String; = "states"

.field private static final SAMPLE_UTTERANCE:Ljava/lang/String; = "sampleUtterance"

.field private static final UTTERANCE:Ljava/lang/String; = "utterance"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;
    .locals 22
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 35
    const/4 v9, 0x0

    .line 37
    .local v9, "executionType":Ljava/lang/String;
    const/4 v11, 0x0

    .line 38
    .local v11, "isCalleePathRule":Z
    const/4 v12, 0x0

    .line 39
    .local v12, "isFromSimulator":Z
    const/4 v13, 0x0

    .line 42
    .local v13, "stateList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/bixby/data/State;>;"
    :try_start_0
    new-instance v17, Lorg/json/JSONObject;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 44
    .local v17, "obj":Lorg/json/JSONObject;
    const-string v2, "pathRuleId"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, "pathRuleId":Ljava/lang/String;
    const-string v2, "pathRuleName"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 46
    .local v4, "pathRuleName":Ljava/lang/String;
    const-string v2, "intent"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 47
    .local v5, "intent":Ljava/lang/String;
    const-string/jumbo v2, "utterance"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 48
    .local v6, "utterance":Ljava/lang/String;
    const-string/jumbo v2, "sampleUtterance"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 49
    .local v7, "sampleUtterance":Ljava/lang/String;
    const-string v2, "apps"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 50
    .local v16, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v8, v2, [Ljava/lang/String;

    .line 51
    .local v8, "apps":[Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, "idx":I
    :goto_0
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v15, v2, :cond_0

    .line 52
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v15

    .line 51
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 54
    :cond_0
    const-string v2, "executionType"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    const-string v2, "executionType"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 57
    :cond_1
    const-string v2, "isRoot"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 58
    .local v10, "isRoot":Z
    const-string v2, "isCalleePathRule"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 59
    const-string v2, "isCalleePathRule"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 61
    :cond_2
    const-string v2, "isFromSimulator"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 62
    const-string v2, "isFromSimulator"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 64
    :cond_3
    const-string/jumbo v2, "states"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 65
    const-string/jumbo v2, "states"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v19

    .line 66
    .local v19, "stateArr":Lorg/json/JSONArray;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v13    # "stateList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/bixby/data/State;>;"
    .local v20, "stateList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/bixby/data/State;>;"
    const/4 v15, 0x0

    :goto_1
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v15, v2, :cond_4

    .line 68
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/bixby/StateReader;->read(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/State;

    move-result-object v18

    .line 69
    .local v18, "state":Lcom/samsung/android/sdk/bixby/data/State;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 72
    .end local v18    # "state":Lcom/samsung/android/sdk/bixby/data/State;
    :cond_4
    new-instance v2, Lcom/samsung/android/sdk/bixby/PathRuleInfoReader$1;

    invoke-direct {v2}, Lcom/samsung/android/sdk/bixby/PathRuleInfoReader$1;-><init>()V

    move-object/from16 v0, v20

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v13, v20

    .line 79
    .end local v19    # "stateArr":Lorg/json/JSONArray;
    .end local v20    # "stateList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/bixby/data/State;>;"
    .restart local v13    # "stateList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/bixby/data/State;>;"
    :cond_5
    :try_start_2
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;

    invoke-direct/range {v2 .. v13}, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZZLjava/util/List;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    .line 82
    .end local v3    # "pathRuleId":Ljava/lang/String;
    .end local v4    # "pathRuleName":Ljava/lang/String;
    .end local v5    # "intent":Ljava/lang/String;
    .end local v6    # "utterance":Ljava/lang/String;
    .end local v7    # "sampleUtterance":Ljava/lang/String;
    .end local v8    # "apps":[Ljava/lang/String;
    .end local v10    # "isRoot":Z
    .end local v15    # "idx":I
    .end local v16    # "jsonArray":Lorg/json/JSONArray;
    .end local v17    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v14

    .line 83
    .local v14, "e":Lorg/json/JSONException;
    :goto_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v14}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    .end local v13    # "stateList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/bixby/data/State;>;"
    .end local v14    # "e":Lorg/json/JSONException;
    .restart local v3    # "pathRuleId":Ljava/lang/String;
    .restart local v4    # "pathRuleName":Ljava/lang/String;
    .restart local v5    # "intent":Ljava/lang/String;
    .restart local v6    # "utterance":Ljava/lang/String;
    .restart local v7    # "sampleUtterance":Ljava/lang/String;
    .restart local v8    # "apps":[Ljava/lang/String;
    .restart local v10    # "isRoot":Z
    .restart local v15    # "idx":I
    .restart local v16    # "jsonArray":Lorg/json/JSONArray;
    .restart local v17    # "obj":Lorg/json/JSONObject;
    .restart local v19    # "stateArr":Lorg/json/JSONArray;
    .restart local v20    # "stateList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/bixby/data/State;>;"
    :catch_1
    move-exception v14

    move-object/from16 v13, v20

    .end local v20    # "stateList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/bixby/data/State;>;"
    .restart local v13    # "stateList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/bixby/data/State;>;"
    goto :goto_2
.end method
