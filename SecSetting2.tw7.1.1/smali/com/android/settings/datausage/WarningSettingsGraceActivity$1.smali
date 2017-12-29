.class Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;
.super Ljava/lang/Object;
.source "WarningSettingsGraceActivity.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/WarningSettingsGraceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 19

    .prologue
    .line 315
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v13

    .line 316
    .local v13, "stateId":Ljava/lang/String;
    sget-boolean v8, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->sIsEnable:Z

    .line 318
    .local v8, "isDataWarningEnable":Z
    const-string/jumbo v15, "DataWarningOn"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 319
    if-nez v8, :cond_3

    .line 320
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 321
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v15

    const-string/jumbo v16, "DataWarning"

    const-string/jumbo v17, "AlreadyON"

    const-string/jumbo v18, "No"

    invoke-virtual/range {v15 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v15

    const-string/jumbo v16, "DataWarning"

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 324
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get6(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v16

    if-eqz v8, :cond_2

    const/4 v15, 0x0

    :goto_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 325
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 404
    :cond_1
    :goto_1
    return-void

    .line 324
    :cond_2
    const/4 v15, 0x1

    goto :goto_0

    .line 328
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v15

    const-string/jumbo v16, "DataWarning"

    const-string/jumbo v17, "AlreadyON"

    const-string/jumbo v18, "Yes"

    invoke-virtual/range {v15 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v15

    const-string/jumbo v16, "DataWarning"

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 330
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_1

    .line 332
    :cond_4
    const-string/jumbo v15, "DataWarningOff"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 333
    if-eqz v8, :cond_7

    .line 334
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 335
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v15

    const-string/jumbo v16, "DataWarning"

    const-string/jumbo v17, "AlreadyOff"

    const-string/jumbo v18, "No"

    invoke-virtual/range {v15 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v15

    const-string/jumbo v16, "DataWarning"

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 338
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get6(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v16

    if-eqz v8, :cond_6

    const/4 v15, 0x0

    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 339
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    .line 338
    :cond_6
    const/4 v15, 0x1

    goto :goto_2

    .line 342
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v15

    const-string/jumbo v16, "DataWarning"

    const-string/jumbo v17, "AlreadyOff"

    const-string/jumbo v18, "Yes"

    invoke-virtual/range {v15 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v15

    const-string/jumbo v16, "DataWarning"

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 344
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    .line 346
    :cond_8
    const-string/jumbo v15, "SetDataWarningPercent"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 347
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v15

    if-nez v15, :cond_9

    .line 348
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v15

    const-string/jumbo v16, "DataWarningPercent"

    const-string/jumbo v17, "Exist"

    const-string/jumbo v18, "No"

    invoke-virtual/range {v15 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v15

    const-string/jumbo v16, "DataWarning"

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    .line 352
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v15

    const-string/jumbo v16, "DataWarningPercent"

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 353
    .local v10, "method":Ljava/lang/String;
    if-nez v10, :cond_a

    .line 354
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v15

    const-string/jumbo v16, "DataWarningPercent"

    const-string/jumbo v17, "Exist"

    const-string/jumbo v18, "No"

    invoke-virtual/range {v15 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v15

    const-string/jumbo v16, "DataWarning"

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 356
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    .line 358
    :cond_a
    if-nez v8, :cond_b

    .line 359
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get6(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v16

    if-eqz v8, :cond_d

    const/4 v15, 0x0

    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 362
    :cond_b
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    add-int/lit8 v16, v16, -0x28

    invoke-static/range {v15 .. v16}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-set0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;I)I

    .line 363
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-virtual {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 364
    .local v7, "editor":Landroid/content/SharedPreferences$Editor;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get3(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Landroid/widget/SeekBar;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get2(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 365
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-virtual {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 366
    .local v12, "sharedpre":Landroid/content/SharedPreferences;
    const/4 v9, 0x0

    .line 367
    .local v9, "mTotal":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "set_data_limit"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get5(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "max"

    move-object/from16 v0, v16

    invoke-interface {v12, v15, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 368
    .local v9, "mTotal":Ljava/lang/String;
    const-string/jumbo v15, "max"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    if-eqz v15, :cond_c

    .line 370
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-virtual {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 371
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "set_data_limit"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get5(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    .line 370
    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .line 376
    :cond_c
    :goto_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get2(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x42200000    # 40.0f

    add-float v15, v15, v16

    const/high16 v16, 0x42c80000    # 100.0f

    div-float v15, v15, v16

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v16

    mul-float v3, v15, v16

    .line 377
    .local v3, "dataUsagePercent":F
    new-instance v4, Ljava/text/DecimalFormat;

    const-string/jumbo v15, "0.00"

    invoke-direct {v4, v15}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 378
    .local v4, "decimalFormat":Ljava/text/DecimalFormat;
    float-to-double v0, v3

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, "dataStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get2(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)I

    move-result v15

    add-int/lit8 v11, v15, 0x28

    .line 380
    .local v11, "percent":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get7(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Landroid/widget/TextView;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "%"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get4(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Landroid/widget/TextView;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0d00f7

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setTextColor(I)V

    .line 382
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get1(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Landroid/widget/TextView;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0d00f7

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setTextColor(I)V

    .line 383
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get8(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Landroid/widget/TextView;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    move-object/from16 v17, v0

    const v18, 0x7f0b05b6

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->KEY_WARNING_PROGRESS:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get5(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get2(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v7, v15, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 385
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get2(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)I

    move-result v16

    add-int/lit8 v16, v16, 0x28

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 386
    .local v14, "warningValue":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "data_warning_set"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get5(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v7, v15, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 387
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 388
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-virtual {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v17, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->KEY_WARNING_PROGRESS:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get5(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get2(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)I

    move-result v17

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 389
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-virtual {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "data_warning_set"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get5(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 390
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-wrap0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)V

    .line 392
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v15

    const-string/jumbo v16, "DataWarningPercent"

    const-string/jumbo v17, "Already set"

    const-string/jumbo v18, "No"

    invoke-virtual/range {v15 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v15

    const-string/jumbo v16, "DataUsageLimitSettings"

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 394
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 395
    .end local v2    # "dataStr":Ljava/lang/String;
    .end local v3    # "dataUsagePercent":F
    .end local v4    # "decimalFormat":Ljava/text/DecimalFormat;
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v9    # "mTotal":Ljava/lang/String;
    .end local v11    # "percent":I
    .end local v12    # "sharedpre":Landroid/content/SharedPreferences;
    .end local v14    # "warningValue":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 396
    .local v6, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v15, "WarningSettingsGraceActivity"

    const-string/jumbo v16, "NumberFormatException in SetDataWarningPercent"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v15

    const-string/jumbo v16, "DataWarningPercent"

    const-string/jumbo v17, "Valid"

    const-string/jumbo v18, "No"

    invoke-virtual/range {v15 .. v18}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v15

    const-string/jumbo v16, "DataWarning"

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/datausage/WarningSettingsGraceActivity$1;->this$0:Lcom/android/settings/datausage/WarningSettingsGraceActivity;

    invoke-static {v15}, Lcom/android/settings/datausage/WarningSettingsGraceActivity;->-get0(Lcom/android/settings/datausage/WarningSettingsGraceActivity;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_1

    .line 359
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_d
    const/4 v15, 0x1

    goto/16 :goto_3

    .line 372
    .restart local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v9    # "mTotal":Ljava/lang/String;
    .restart local v12    # "sharedpre":Landroid/content/SharedPreferences;
    :catch_1
    move-exception v5

    .line 373
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v9, "max"
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_4
.end method
