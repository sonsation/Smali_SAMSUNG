.class Lcom/samsung/android/share/executor/StateReader;
.super Ljava/lang/Object;
.source "StateReader.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ljava/lang/String;)Lcom/samsung/android/share/executor/data/State;
    .locals 25
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 27
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .local v12, "parameterList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/share/executor/data/Parameter;>;"
    :try_start_0
    new-instance v20, Lorg/json/JSONObject;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 32
    .local v20, "obj":Lorg/json/JSONObject;
    const-string/jumbo v2, "specVer"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    const-string/jumbo v2, "specVer"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, "specVer":Ljava/lang/String;
    :goto_0
    const-string/jumbo v2, "seqNum"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 38
    .local v4, "stepNum":Ljava/lang/Integer;
    const-string/jumbo v2, "isExecuted"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 39
    .local v5, "isExecuted":Ljava/lang/Boolean;
    const-string/jumbo v2, "appName"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 40
    .local v6, "appName":Ljava/lang/String;
    const-string/jumbo v2, "stateId"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 41
    .local v8, "stateId":Ljava/lang/String;
    const-string/jumbo v2, "ruleId"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 42
    .local v7, "ruleId":Ljava/lang/String;
    const-string/jumbo v2, "isLandingState"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 43
    .local v9, "isLandingState":Ljava/lang/Boolean;
    const-string/jumbo v2, "isLastState"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    const-string/jumbo v2, "isLastState"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 49
    .local v10, "isLastState":Ljava/lang/Boolean;
    :goto_1
    const-string/jumbo v2, "subIntent"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 50
    const-string/jumbo v2, "subIntent"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 55
    .local v11, "subIntent":Ljava/lang/String;
    :goto_2
    const-string/jumbo v2, "parameters"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v23

    .line 57
    .local v23, "parameters":Lorg/json/JSONArray;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_3
    invoke-virtual/range {v23 .. v23}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_10

    .line 58
    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v22

    .line 60
    .local v22, "parameterObj":Lorg/json/JSONObject;
    new-instance v21, Lcom/samsung/android/share/executor/data/Parameter;

    invoke-direct/range {v21 .. v21}, Lcom/samsung/android/share/executor/data/Parameter;-><init>()V

    .line 62
    .local v21, "parameter":Lcom/samsung/android/share/executor/data/Parameter;
    const-string/jumbo v2, "slotType"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 63
    const-string/jumbo v2, "slotType"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/Parameter;->setSlotType(Ljava/lang/String;)V

    .line 68
    :goto_4
    const-string/jumbo v2, "slotName"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 69
    const-string/jumbo v2, "slotName"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/Parameter;->setSlotName(Ljava/lang/String;)V

    .line 74
    :goto_5
    const-string/jumbo v2, "slotValue"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 75
    const-string/jumbo v2, "slotValue"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/Parameter;->setSlotValue(Ljava/lang/String;)V

    .line 80
    :goto_6
    const-string/jumbo v2, "slotValueType"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 81
    const-string/jumbo v2, "slotValueType"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/Parameter;->setSlotValueType(Ljava/lang/String;)V

    .line 86
    :goto_7
    const-string/jumbo v2, "CH_ObjectType"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 87
    const-string/jumbo v2, "CH_ObjectType"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/Parameter;->setCHObjectType(Ljava/lang/String;)V

    .line 92
    :goto_8
    const-string/jumbo v2, "CH_Objects"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 93
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v15, "CHObjectsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/share/executor/data/CHObject;>;"
    const-string/jumbo v2, "CH_Objects"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 96
    .local v14, "CHObjects":Lorg/json/JSONArray;
    const/16 v19, 0x0

    .local v19, "j":I
    :goto_9
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_b

    .line 97
    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 98
    .local v13, "CHObjectObj":Lorg/json/JSONObject;
    new-instance v16, Lcom/samsung/android/share/executor/data/CHObject;

    invoke-direct/range {v16 .. v16}, Lcom/samsung/android/share/executor/data/CHObject;-><init>()V

    .line 100
    .local v16, "chObject":Lcom/samsung/android/share/executor/data/CHObject;
    const-string/jumbo v2, "CH_Type"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 101
    const-string/jumbo v2, "CH_Type"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/CHObject;->setCHType(Ljava/lang/String;)V

    .line 106
    :goto_a
    const-string/jumbo v2, "CH_Value"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 107
    const-string/jumbo v2, "CH_Value"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/CHObject;->setCHValue(Ljava/lang/String;)V

    .line 112
    :goto_b
    const-string/jumbo v2, "CH_ValueType"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 113
    const-string/jumbo v2, "CH_ValueType"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/CHObject;->setCHValueType(Ljava/lang/String;)V

    .line 118
    :goto_c
    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v19, v19, 0x1

    goto :goto_9

    .line 35
    .end local v3    # "specVer":Ljava/lang/String;
    .end local v4    # "stepNum":Ljava/lang/Integer;
    .end local v5    # "isExecuted":Ljava/lang/Boolean;
    .end local v6    # "appName":Ljava/lang/String;
    .end local v7    # "ruleId":Ljava/lang/String;
    .end local v8    # "stateId":Ljava/lang/String;
    .end local v9    # "isLandingState":Ljava/lang/Boolean;
    .end local v10    # "isLastState":Ljava/lang/Boolean;
    .end local v11    # "subIntent":Ljava/lang/String;
    .end local v13    # "CHObjectObj":Lorg/json/JSONObject;
    .end local v14    # "CHObjects":Lorg/json/JSONArray;
    .end local v15    # "CHObjectsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/share/executor/data/CHObject;>;"
    .end local v16    # "chObject":Lcom/samsung/android/share/executor/data/CHObject;
    .end local v18    # "i":I
    .end local v19    # "j":I
    .end local v21    # "parameter":Lcom/samsung/android/share/executor/data/Parameter;
    .end local v22    # "parameterObj":Lorg/json/JSONObject;
    .end local v23    # "parameters":Lorg/json/JSONArray;
    :cond_0
    const-string/jumbo v3, "1.0"

    .restart local v3    # "specVer":Ljava/lang/String;
    goto/16 :goto_0

    .line 46
    .restart local v4    # "stepNum":Ljava/lang/Integer;
    .restart local v5    # "isExecuted":Ljava/lang/Boolean;
    .restart local v6    # "appName":Ljava/lang/String;
    .restart local v7    # "ruleId":Ljava/lang/String;
    .restart local v8    # "stateId":Ljava/lang/String;
    .restart local v9    # "isLandingState":Ljava/lang/Boolean;
    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .restart local v10    # "isLastState":Ljava/lang/Boolean;
    goto/16 :goto_1

    .line 52
    :cond_2
    const-string/jumbo v11, ""

    .restart local v11    # "subIntent":Ljava/lang/String;
    goto/16 :goto_2

    .line 65
    .restart local v18    # "i":I
    .restart local v21    # "parameter":Lcom/samsung/android/share/executor/data/Parameter;
    .restart local v22    # "parameterObj":Lorg/json/JSONObject;
    .restart local v23    # "parameters":Lorg/json/JSONArray;
    :cond_3
    const-string/jumbo v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/Parameter;->setSlotType(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 149
    .end local v3    # "specVer":Ljava/lang/String;
    .end local v4    # "stepNum":Ljava/lang/Integer;
    .end local v5    # "isExecuted":Ljava/lang/Boolean;
    .end local v6    # "appName":Ljava/lang/String;
    .end local v7    # "ruleId":Ljava/lang/String;
    .end local v8    # "stateId":Ljava/lang/String;
    .end local v9    # "isLandingState":Ljava/lang/Boolean;
    .end local v10    # "isLastState":Ljava/lang/Boolean;
    .end local v11    # "subIntent":Ljava/lang/String;
    .end local v18    # "i":I
    .end local v20    # "obj":Lorg/json/JSONObject;
    .end local v21    # "parameter":Lcom/samsung/android/share/executor/data/Parameter;
    .end local v22    # "parameterObj":Lorg/json/JSONObject;
    .end local v23    # "parameters":Lorg/json/JSONArray;
    :catch_0
    move-exception v17

    .line 150
    .local v17, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    .end local v17    # "e":Lorg/json/JSONException;
    .restart local v3    # "specVer":Ljava/lang/String;
    .restart local v4    # "stepNum":Ljava/lang/Integer;
    .restart local v5    # "isExecuted":Ljava/lang/Boolean;
    .restart local v6    # "appName":Ljava/lang/String;
    .restart local v7    # "ruleId":Ljava/lang/String;
    .restart local v8    # "stateId":Ljava/lang/String;
    .restart local v9    # "isLandingState":Ljava/lang/Boolean;
    .restart local v10    # "isLastState":Ljava/lang/Boolean;
    .restart local v11    # "subIntent":Ljava/lang/String;
    .restart local v18    # "i":I
    .restart local v20    # "obj":Lorg/json/JSONObject;
    .restart local v21    # "parameter":Lcom/samsung/android/share/executor/data/Parameter;
    .restart local v22    # "parameterObj":Lorg/json/JSONObject;
    .restart local v23    # "parameters":Lorg/json/JSONArray;
    :cond_4
    :try_start_1
    const-string/jumbo v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/Parameter;->setSlotName(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 77
    :cond_5
    const-string/jumbo v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/Parameter;->setSlotValue(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 83
    :cond_6
    const-string/jumbo v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/Parameter;->setSlotValueType(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 89
    :cond_7
    const-string/jumbo v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/Parameter;->setCHObjectType(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 103
    .restart local v13    # "CHObjectObj":Lorg/json/JSONObject;
    .restart local v14    # "CHObjects":Lorg/json/JSONArray;
    .restart local v15    # "CHObjectsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/share/executor/data/CHObject;>;"
    .restart local v16    # "chObject":Lcom/samsung/android/share/executor/data/CHObject;
    .restart local v19    # "j":I
    :cond_8
    const-string/jumbo v2, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/CHObject;->setCHType(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 109
    :cond_9
    const-string/jumbo v2, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/CHObject;->setCHValue(Ljava/lang/String;)V

    goto :goto_b

    .line 115
    :cond_a
    const-string/jumbo v2, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/CHObject;->setCHValueType(Ljava/lang/String;)V

    goto :goto_c

    .line 120
    .end local v13    # "CHObjectObj":Lorg/json/JSONObject;
    .end local v16    # "chObject":Lcom/samsung/android/share/executor/data/CHObject;
    :cond_b
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Lcom/samsung/android/share/executor/data/Parameter;->setCHObjects(Ljava/util/List;)V

    .line 125
    .end local v14    # "CHObjects":Lorg/json/JSONArray;
    .end local v15    # "CHObjectsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/share/executor/data/CHObject;>;"
    .end local v19    # "j":I
    :goto_d
    const-string/jumbo v2, "parameterName"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 126
    const-string/jumbo v2, "parameterName"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/Parameter;->setParameterName(Ljava/lang/String;)V

    .line 131
    :goto_e
    const-string/jumbo v2, "parameterType"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 132
    const-string/jumbo v2, "parameterType"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/Parameter;->setParameterType(Ljava/lang/String;)V

    .line 137
    :goto_f
    const-string/jumbo v2, "isMandatory"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 138
    const-string/jumbo v2, "isMandatory"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/Parameter;->setIsMandatory(Ljava/lang/Boolean;)V

    .line 143
    :goto_10
    move-object/from16 v0, v21

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    .line 122
    :cond_c
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/Parameter;->setCHObjects(Ljava/util/List;)V

    goto :goto_d

    .line 128
    :cond_d
    const-string/jumbo v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/Parameter;->setParameterName(Ljava/lang/String;)V

    goto :goto_e

    .line 134
    :cond_e
    const-string/jumbo v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/Parameter;->setParameterType(Ljava/lang/String;)V

    goto :goto_f

    .line 140
    :cond_f
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/samsung/android/share/executor/data/Parameter;->setIsMandatory(Ljava/lang/Boolean;)V

    goto :goto_10

    .line 146
    .end local v21    # "parameter":Lcom/samsung/android/share/executor/data/Parameter;
    .end local v22    # "parameterObj":Lorg/json/JSONObject;
    :cond_10
    new-instance v2, Lcom/samsung/android/share/executor/data/State;

    invoke-direct/range {v2 .. v12}, Lcom/samsung/android/share/executor/data/State;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2
.end method
