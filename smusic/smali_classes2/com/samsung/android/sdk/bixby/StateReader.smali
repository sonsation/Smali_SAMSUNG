.class Lcom/samsung/android/sdk/bixby/StateReader;
.super Ljava/lang/Object;
.source "StateReader.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/State;
    .locals 26
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 29
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v13, "parameterList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/bixby/data/Parameter;>;"
    :try_start_0
    new-instance v21, Lorg/json/JSONObject;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 34
    .local v21, "obj":Lorg/json/JSONObject;
    const-string/jumbo v2, "specVer"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    const-string/jumbo v2, "specVer"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "specVer":Ljava/lang/String;
    :goto_0
    const-string/jumbo v2, "seqNum"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 40
    .local v4, "stepNum":Ljava/lang/Integer;
    const-string v2, "isExecuted"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 41
    .local v5, "isExecuted":Ljava/lang/Boolean;
    const-string v2, "appName"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 42
    .local v6, "appName":Ljava/lang/String;
    const-string/jumbo v2, "stateId"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 43
    .local v8, "stateId":Ljava/lang/String;
    const-string/jumbo v2, "ruleId"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 44
    .local v7, "ruleId":Ljava/lang/String;
    const-string v2, "isResent"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "isResent"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 45
    .local v9, "isResent":Ljava/lang/Boolean;
    const-string v2, "isLandingState"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 46
    .local v10, "isLandingState":Ljava/lang/Boolean;
    const-string v2, "isLastState"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 47
    const-string v2, "isLastState"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 52
    .local v11, "isLastState":Ljava/lang/Boolean;
    :goto_2
    const-string/jumbo v2, "subIntent"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 53
    const-string/jumbo v2, "subIntent"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 58
    .local v12, "subIntent":Ljava/lang/String;
    :goto_3
    const-string v2, "parameters"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    .line 60
    .local v24, "parameters":Lorg/json/JSONArray;
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_4
    invoke-virtual/range {v24 .. v24}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_11

    .line 61
    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v23

    .line 63
    .local v23, "parameterObj":Lorg/json/JSONObject;
    new-instance v22, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-direct/range {v22 .. v22}, Lcom/samsung/android/sdk/bixby/data/Parameter;-><init>()V

    .line 65
    .local v22, "parameter":Lcom/samsung/android/sdk/bixby/data/Parameter;
    const-string/jumbo v2, "slotType"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 66
    const-string/jumbo v2, "slotType"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setSlotType(Ljava/lang/String;)V

    .line 71
    :goto_5
    const-string/jumbo v2, "slotName"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 72
    const-string/jumbo v2, "slotName"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setSlotName(Ljava/lang/String;)V

    .line 77
    :goto_6
    const-string/jumbo v2, "slotValue"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 78
    const-string/jumbo v2, "slotValue"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setSlotValue(Ljava/lang/String;)V

    .line 83
    :goto_7
    const-string/jumbo v2, "slotValueType"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 84
    const-string/jumbo v2, "slotValueType"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setSlotValueType(Ljava/lang/String;)V

    .line 89
    :goto_8
    const-string v2, "CH_ObjectType"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 90
    const-string v2, "CH_ObjectType"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setCHObjectType(Ljava/lang/String;)V

    .line 95
    :goto_9
    const-string v2, "CH_Objects"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 96
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v16, "CHObjectsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/bixby/data/CHObject;>;"
    const-string v2, "CH_Objects"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 99
    .local v15, "CHObjects":Lorg/json/JSONArray;
    const/16 v20, 0x0

    .local v20, "j":I
    :goto_a
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_c

    .line 100
    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 101
    .local v14, "CHObjectObj":Lorg/json/JSONObject;
    new-instance v17, Lcom/samsung/android/sdk/bixby/data/CHObject;

    invoke-direct/range {v17 .. v17}, Lcom/samsung/android/sdk/bixby/data/CHObject;-><init>()V

    .line 103
    .local v17, "chObject":Lcom/samsung/android/sdk/bixby/data/CHObject;
    const-string v2, "CH_Type"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 104
    const-string v2, "CH_Type"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/CHObject;->setCHType(Ljava/lang/String;)V

    .line 109
    :goto_b
    const-string v2, "CH_Value"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 110
    const-string v2, "CH_Value"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/CHObject;->setCHValue(Ljava/lang/String;)V

    .line 115
    :goto_c
    const-string v2, "CH_ValueType"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 116
    const-string v2, "CH_ValueType"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/CHObject;->setCHValueType(Ljava/lang/String;)V

    .line 121
    :goto_d
    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v20, v20, 0x1

    goto :goto_a

    .line 37
    .end local v3    # "specVer":Ljava/lang/String;
    .end local v4    # "stepNum":Ljava/lang/Integer;
    .end local v5    # "isExecuted":Ljava/lang/Boolean;
    .end local v6    # "appName":Ljava/lang/String;
    .end local v7    # "ruleId":Ljava/lang/String;
    .end local v8    # "stateId":Ljava/lang/String;
    .end local v9    # "isResent":Ljava/lang/Boolean;
    .end local v10    # "isLandingState":Ljava/lang/Boolean;
    .end local v11    # "isLastState":Ljava/lang/Boolean;
    .end local v12    # "subIntent":Ljava/lang/String;
    .end local v14    # "CHObjectObj":Lorg/json/JSONObject;
    .end local v15    # "CHObjects":Lorg/json/JSONArray;
    .end local v16    # "CHObjectsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/bixby/data/CHObject;>;"
    .end local v17    # "chObject":Lcom/samsung/android/sdk/bixby/data/CHObject;
    .end local v19    # "i":I
    .end local v20    # "j":I
    .end local v22    # "parameter":Lcom/samsung/android/sdk/bixby/data/Parameter;
    .end local v23    # "parameterObj":Lorg/json/JSONObject;
    .end local v24    # "parameters":Lorg/json/JSONArray;
    :cond_0
    const-string v3, "1.0"

    .restart local v3    # "specVer":Ljava/lang/String;
    goto/16 :goto_0

    .line 44
    .restart local v4    # "stepNum":Ljava/lang/Integer;
    .restart local v5    # "isExecuted":Ljava/lang/Boolean;
    .restart local v6    # "appName":Ljava/lang/String;
    .restart local v7    # "ruleId":Ljava/lang/String;
    .restart local v8    # "stateId":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 49
    .restart local v9    # "isResent":Ljava/lang/Boolean;
    .restart local v10    # "isLandingState":Ljava/lang/Boolean;
    :cond_2
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .restart local v11    # "isLastState":Ljava/lang/Boolean;
    goto/16 :goto_2

    .line 55
    :cond_3
    const-string v12, ""

    .restart local v12    # "subIntent":Ljava/lang/String;
    goto/16 :goto_3

    .line 68
    .restart local v19    # "i":I
    .restart local v22    # "parameter":Lcom/samsung/android/sdk/bixby/data/Parameter;
    .restart local v23    # "parameterObj":Lorg/json/JSONObject;
    .restart local v24    # "parameters":Lorg/json/JSONArray;
    :cond_4
    const-string v2, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setSlotType(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 152
    .end local v3    # "specVer":Ljava/lang/String;
    .end local v4    # "stepNum":Ljava/lang/Integer;
    .end local v5    # "isExecuted":Ljava/lang/Boolean;
    .end local v6    # "appName":Ljava/lang/String;
    .end local v7    # "ruleId":Ljava/lang/String;
    .end local v8    # "stateId":Ljava/lang/String;
    .end local v9    # "isResent":Ljava/lang/Boolean;
    .end local v10    # "isLandingState":Ljava/lang/Boolean;
    .end local v11    # "isLastState":Ljava/lang/Boolean;
    .end local v12    # "subIntent":Ljava/lang/String;
    .end local v19    # "i":I
    .end local v21    # "obj":Lorg/json/JSONObject;
    .end local v22    # "parameter":Lcom/samsung/android/sdk/bixby/data/Parameter;
    .end local v23    # "parameterObj":Lorg/json/JSONObject;
    .end local v24    # "parameters":Lorg/json/JSONArray;
    :catch_0
    move-exception v18

    .line 153
    .local v18, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    .end local v18    # "e":Lorg/json/JSONException;
    .restart local v3    # "specVer":Ljava/lang/String;
    .restart local v4    # "stepNum":Ljava/lang/Integer;
    .restart local v5    # "isExecuted":Ljava/lang/Boolean;
    .restart local v6    # "appName":Ljava/lang/String;
    .restart local v7    # "ruleId":Ljava/lang/String;
    .restart local v8    # "stateId":Ljava/lang/String;
    .restart local v9    # "isResent":Ljava/lang/Boolean;
    .restart local v10    # "isLandingState":Ljava/lang/Boolean;
    .restart local v11    # "isLastState":Ljava/lang/Boolean;
    .restart local v12    # "subIntent":Ljava/lang/String;
    .restart local v19    # "i":I
    .restart local v21    # "obj":Lorg/json/JSONObject;
    .restart local v22    # "parameter":Lcom/samsung/android/sdk/bixby/data/Parameter;
    .restart local v23    # "parameterObj":Lorg/json/JSONObject;
    .restart local v24    # "parameters":Lorg/json/JSONArray;
    :cond_5
    :try_start_1
    const-string v2, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setSlotName(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 80
    :cond_6
    const-string v2, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setSlotValue(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 86
    :cond_7
    const-string v2, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setSlotValueType(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 92
    :cond_8
    const-string v2, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setCHObjectType(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 106
    .restart local v14    # "CHObjectObj":Lorg/json/JSONObject;
    .restart local v15    # "CHObjects":Lorg/json/JSONArray;
    .restart local v16    # "CHObjectsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/bixby/data/CHObject;>;"
    .restart local v17    # "chObject":Lcom/samsung/android/sdk/bixby/data/CHObject;
    .restart local v20    # "j":I
    :cond_9
    const-string v2, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/CHObject;->setCHType(Ljava/lang/String;)V

    goto :goto_b

    .line 112
    :cond_a
    const-string v2, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/CHObject;->setCHValue(Ljava/lang/String;)V

    goto :goto_c

    .line 118
    :cond_b
    const-string v2, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/CHObject;->setCHValueType(Ljava/lang/String;)V

    goto :goto_d

    .line 123
    .end local v14    # "CHObjectObj":Lorg/json/JSONObject;
    .end local v17    # "chObject":Lcom/samsung/android/sdk/bixby/data/CHObject;
    :cond_c
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setCHObjects(Ljava/util/List;)V

    .line 128
    .end local v15    # "CHObjects":Lorg/json/JSONArray;
    .end local v16    # "CHObjectsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/bixby/data/CHObject;>;"
    .end local v20    # "j":I
    :goto_e
    const-string v2, "parameterName"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 129
    const-string v2, "parameterName"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setParameterName(Ljava/lang/String;)V

    .line 134
    :goto_f
    const-string v2, "parameterType"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 135
    const-string v2, "parameterType"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setParameterType(Ljava/lang/String;)V

    .line 140
    :goto_10
    const-string v2, "isMandatory"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 141
    const-string v2, "isMandatory"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setIsMandatory(Ljava/lang/Boolean;)V

    .line 146
    :goto_11
    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_4

    .line 125
    :cond_d
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setCHObjects(Ljava/util/List;)V

    goto :goto_e

    .line 131
    :cond_e
    const-string v2, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setParameterName(Ljava/lang/String;)V

    goto :goto_f

    .line 137
    :cond_f
    const-string v2, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setParameterType(Ljava/lang/String;)V

    goto :goto_10

    .line 143
    :cond_10
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby/data/Parameter;->setIsMandatory(Ljava/lang/Boolean;)V

    goto :goto_11

    .line 149
    .end local v22    # "parameter":Lcom/samsung/android/sdk/bixby/data/Parameter;
    .end local v23    # "parameterObj":Lorg/json/JSONObject;
    :cond_11
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/State;

    invoke-direct/range {v2 .. v13}, Lcom/samsung/android/sdk/bixby/data/State;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2
.end method
