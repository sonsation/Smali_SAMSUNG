.class Lcom/android/settings/tts/TextToSpeechSettings$6;
.super Ljava/lang/Object;
.source "TextToSpeechSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/tts/TextToSpeechSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tts/TextToSpeechSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/TextToSpeechSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/tts/TextToSpeechSettings;

    .prologue
    .line 903
    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 22

    .prologue
    .line 907
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v21

    .line 909
    .local v21, "stateId":Ljava/lang/String;
    const/16 v20, 0x0

    .line 911
    .local v20, "progress":I
    const-string/jumbo v2, "TextToSpeechSet"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 912
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v2

    if-lez v2, :cond_2

    .line 914
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I

    move-result v17

    .line 915
    .local v17, "newInt":I
    if-ltz v17, :cond_1

    const/16 v2, 0x64

    move/from16 v0, v17

    if-gt v0, v2, :cond_1

    .line 916
    mul-int/lit8 v2, v17, 0x6

    add-int/lit8 v20, v2, 0xa

    .line 917
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const-string/jumbo v4, "tts_default_rate"

    move/from16 v0, v20

    invoke-static {v2, v4, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap1(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;I)I

    move-result v18

    .line 918
    .local v18, "newSpeechRate":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get3(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/android/settings/SeekBarPreference;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    .line 919
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    move/from16 v0, v18

    invoke-static {v2, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap4(Lcom/android/settings/tts/TextToSpeechSettings;I)V

    .line 920
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap2(Lcom/android/settings/tts/TextToSpeechSettings;)V

    .line 927
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 906
    .end local v17    # "newInt":I
    .end local v18    # "newSpeechRate":I
    :cond_0
    :goto_0
    return-void

    .line 929
    .restart local v17    # "newInt":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeechSet"

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "No"

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 931
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 933
    .end local v17    # "newInt":I
    :catch_0
    move-exception v11

    .line 934
    .local v11, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v2, "TextToSpeechSettings"

    const-string/jumbo v4, "failed to get param for bixby. "

    invoke-static {v2, v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 935
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeechSet"

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "No"

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 937
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 940
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeechSet"

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "No"

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 942
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 944
    :cond_3
    const-string/jumbo v2, "TextToSpeechUpByPercentage"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 945
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v2

    if-lez v2, :cond_6

    .line 947
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I

    move-result v17

    .line 948
    .restart local v17    # "newInt":I
    if-ltz v17, :cond_5

    const/16 v2, 0x64

    move/from16 v0, v17

    if-gt v0, v2, :cond_5

    .line 949
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get3(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/android/settings/SeekBarPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SeekBarPreference;->getProgress()I

    move-result v10

    .line 950
    .local v10, "curSpeechRate":I
    div-int/lit8 v8, v10, 0x6

    .line 952
    .local v8, "curInt":I
    add-int v17, v17, v8

    .line 953
    const/16 v2, 0x64

    move/from16 v0, v17

    if-le v0, v2, :cond_4

    .line 954
    const/16 v17, 0x64

    .line 956
    :cond_4
    mul-int/lit8 v2, v17, 0x6

    add-int/lit8 v20, v2, 0xa

    .line 958
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const-string/jumbo v4, "tts_default_rate"

    move/from16 v0, v20

    invoke-static {v2, v4, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap1(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;I)I

    move-result v18

    .line 960
    .restart local v18    # "newSpeechRate":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get3(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/android/settings/SeekBarPreference;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    .line 961
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    move/from16 v0, v18

    invoke-static {v2, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap4(Lcom/android/settings/tts/TextToSpeechSettings;I)V

    .line 962
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap2(Lcom/android/settings/tts/TextToSpeechSettings;)V

    .line 964
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeechSet"

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeechSet"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 967
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 973
    .end local v8    # "curInt":I
    .end local v10    # "curSpeechRate":I
    .end local v17    # "newInt":I
    .end local v18    # "newSpeechRate":I
    :catch_1
    move-exception v11

    .line 974
    .restart local v11    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v2, "TextToSpeechSettings"

    const-string/jumbo v4, "failed to get param for bixby. "

    invoke-static {v2, v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 975
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeechSet"

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "No"

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 977
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 969
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .restart local v17    # "newInt":I
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeechSet"

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "No"

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 971
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 980
    .end local v17    # "newInt":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeechSet"

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "No"

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 982
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 984
    :cond_7
    const-string/jumbo v2, "TextToSpeechDownByPercentage"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 985
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v2

    if-lez v2, :cond_a

    .line 987
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I

    move-result v17

    .line 988
    .restart local v17    # "newInt":I
    if-ltz v17, :cond_9

    const/16 v2, 0x64

    move/from16 v0, v17

    if-gt v0, v2, :cond_9

    .line 989
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get3(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/android/settings/SeekBarPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SeekBarPreference;->getProgress()I

    move-result v10

    .line 990
    .restart local v10    # "curSpeechRate":I
    div-int/lit8 v8, v10, 0x6

    .line 992
    .restart local v8    # "curInt":I
    sub-int v17, v8, v17

    .line 993
    if-gez v17, :cond_8

    .line 994
    const/16 v17, 0x0

    .line 996
    :cond_8
    mul-int/lit8 v2, v17, 0x6

    add-int/lit8 v20, v2, 0xa

    .line 998
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const-string/jumbo v4, "tts_default_rate"

    move/from16 v0, v20

    invoke-static {v2, v4, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap1(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;I)I

    move-result v18

    .line 1000
    .restart local v18    # "newSpeechRate":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get3(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/android/settings/SeekBarPreference;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    .line 1001
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    move/from16 v0, v18

    invoke-static {v2, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap4(Lcom/android/settings/tts/TextToSpeechSettings;I)V

    .line 1002
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap2(Lcom/android/settings/tts/TextToSpeechSettings;)V

    .line 1004
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeechSet"

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeechSet"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1007
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 1013
    .end local v8    # "curInt":I
    .end local v10    # "curSpeechRate":I
    .end local v17    # "newInt":I
    .end local v18    # "newSpeechRate":I
    :catch_2
    move-exception v11

    .line 1014
    .restart local v11    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v2, "TextToSpeechSettings"

    const-string/jumbo v4, "failed to get param for bixby. "

    invoke-static {v2, v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1015
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeechSet"

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "No"

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1017
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1009
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .restart local v17    # "newInt":I
    :cond_9
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeechSet"

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "No"

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1011
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 1020
    .end local v17    # "newInt":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeechSet"

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "No"

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1022
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1024
    :cond_b
    const-string/jumbo v2, "TextToSpeechUp"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string/jumbo v2, "TextToSpeechMax"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1025
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v2

    const/16 v4, 0x258

    if-ne v2, v4, :cond_d

    .line 1026
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "SpeechRate"

    const-string/jumbo v5, "AlreadyMax"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1028
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1030
    :cond_d
    const-string/jumbo v2, "TextToSpeechUp"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1031
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v2

    add-int/lit8 v20, v2, 0x14

    .line 1035
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const-string/jumbo v4, "tts_default_rate"

    move/from16 v0, v20

    invoke-static {v2, v4, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap1(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;I)I

    move-result v18

    .line 1036
    .restart local v18    # "newSpeechRate":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get3(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/android/settings/SeekBarPreference;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    .line 1037
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    move/from16 v0, v18

    invoke-static {v2, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap4(Lcom/android/settings/tts/TextToSpeechSettings;I)V

    .line 1038
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap2(Lcom/android/settings/tts/TextToSpeechSettings;)V

    .line 1044
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1033
    .end local v18    # "newSpeechRate":I
    :cond_e
    const/16 v20, 0x258

    goto :goto_1

    .line 1046
    :cond_f
    const-string/jumbo v2, "TextToSpeechDown"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string/jumbo v2, "TextToSpeechMin"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1047
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v2

    const/16 v4, 0xa

    if-ne v2, v4, :cond_11

    .line 1048
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "SpeechRate"

    const-string/jumbo v5, "AlreadyMin"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1050
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1052
    :cond_11
    const-string/jumbo v2, "TextToSpeechDown"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1053
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get2(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v2

    add-int/lit8 v20, v2, -0x14

    .line 1057
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const-string/jumbo v4, "tts_default_rate"

    move/from16 v0, v20

    invoke-static {v2, v4, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap1(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;I)I

    move-result v18

    .line 1058
    .restart local v18    # "newSpeechRate":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get3(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/android/settings/SeekBarPreference;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    .line 1059
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    move/from16 v0, v18

    invoke-static {v2, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap4(Lcom/android/settings/tts/TextToSpeechSettings;I)V

    .line 1060
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap2(Lcom/android/settings/tts/TextToSpeechSettings;)V

    .line 1066
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1055
    .end local v18    # "newSpeechRate":I
    :cond_12
    const/16 v20, 0xa

    goto :goto_2

    .line 1068
    :cond_13
    const-string/jumbo v2, "SamsungTextToSpeechSettings"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string/jumbo v2, "SamsungTextToSpeechEngine"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1069
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get6(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/speech/tts/TtsEngines;

    move-result-object v2

    invoke-virtual {v2}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v14

    .line 1070
    .local v14, "engines":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/TextToSpeech$EngineInfo;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get5(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/preference/PreferenceCategory;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v12

    .line 1071
    .local v12, "engineCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_3
    if-ge v15, v12, :cond_19

    .line 1072
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get5(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/preference/PreferenceCategory;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v19

    .line 1073
    .local v19, "p":Landroid/preference/Preference;
    move-object/from16 v0, v19

    instance-of v2, v0, Lcom/android/settings/tts/TtsEnginePreference;

    if-eqz v2, :cond_18

    move-object/from16 v13, v19

    .line 1074
    check-cast v13, Lcom/android/settings/tts/TtsEnginePreference;

    .line 1075
    .local v13, "enginePref":Lcom/android/settings/tts/TtsEnginePreference;
    invoke-virtual {v13}, Lcom/android/settings/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "SMT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1076
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-virtual {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->getCurrentKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Lcom/android/settings/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 1077
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Lcom/android/settings/tts/TtsEnginePreference;->setChecked(Z)V

    .line 1080
    :cond_15
    invoke-virtual {v13}, Lcom/android/settings/tts/TtsEnginePreference;->getIntent()Landroid/content/Intent;

    move-result-object v16

    .line 1082
    .local v16, "mVoiceCheckData":Landroid/content/Intent;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1083
    .local v3, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "name"

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v2, v2, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    const-string/jumbo v4, "label"

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v2, v2, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    if-eqz v16, :cond_16

    .line 1086
    const-string/jumbo v2, "voices"

    move-object/from16 v0, v16

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1089
    :cond_16
    const/4 v1, 0x0

    .line 1090
    .local v1, "activity":Lcom/android/settings/SettingsActivity;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-virtual {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/android/settings/SettingsActivity;

    if-eqz v2, :cond_18

    .line 1091
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-virtual {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .end local v1    # "activity":Lcom/android/settings/SettingsActivity;
    check-cast v1, Lcom/android/settings/SettingsActivity;

    .line 1093
    .local v1, "activity":Lcom/android/settings/SettingsActivity;
    const-class v2, Lcom/android/settings/tts/TtsEngineSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1094
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v5, v4, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1092
    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1095
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1096
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1098
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 1099
    return-void

    .line 1071
    .end local v1    # "activity":Lcom/android/settings/SettingsActivity;
    .end local v3    # "args":Landroid/os/Bundle;
    .end local v13    # "enginePref":Lcom/android/settings/tts/TtsEnginePreference;
    .end local v16    # "mVoiceCheckData":Landroid/content/Intent;
    :cond_18
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .line 1105
    .end local v19    # "p":Landroid/preference/Preference;
    :cond_19
    const-string/jumbo v2, "TextToSpeechSettings"

    const-string/jumbo v4, "There is no samsung tts"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1109
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1110
    .end local v12    # "engineCount":I
    .end local v14    # "engines":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/TextToSpeech$EngineInfo;>;"
    .end local v15    # "i":I
    :cond_1b
    const-string/jumbo v2, "SamsungTextToSpeech"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get5(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/preference/PreferenceCategory;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v12

    .line 1112
    .restart local v12    # "engineCount":I
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_4
    if-ge v15, v12, :cond_20

    .line 1113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get5(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/preference/PreferenceCategory;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v19

    .line 1114
    .restart local v19    # "p":Landroid/preference/Preference;
    move-object/from16 v0, v19

    instance-of v2, v0, Lcom/android/settings/tts/TtsEnginePreference;

    if-eqz v2, :cond_1f

    move-object/from16 v13, v19

    .line 1115
    check-cast v13, Lcom/android/settings/tts/TtsEnginePreference;

    .line 1116
    .restart local v13    # "enginePref":Lcom/android/settings/tts/TtsEnginePreference;
    invoke-virtual {v13}, Lcom/android/settings/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "SMT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-virtual {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->getCurrentKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Lcom/android/settings/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "SamsungTextToSpeech"

    const-string/jumbo v5, "AlreadySet"

    const-string/jumbo v6, "yes"

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1122
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 1131
    :goto_5
    return-void

    .line 1124
    :cond_1d
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Lcom/android/settings/tts/TtsEnginePreference;->setChecked(Z)V

    .line 1125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "SamsungTextToSpeech"

    const-string/jumbo v5, "AlreadySet"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1129
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_5

    .line 1112
    .end local v13    # "enginePref":Lcom/android/settings/tts/TtsEnginePreference;
    :cond_1f
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_4

    .line 1136
    .end local v19    # "p":Landroid/preference/Preference;
    :cond_20
    const-string/jumbo v2, "TextToSpeechSettings"

    const-string/jumbo v4, "There is no samsung tts"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1140
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1141
    .end local v12    # "engineCount":I
    .end local v15    # "i":I
    :cond_22
    const-string/jumbo v2, "GoogleTextToSpeech"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get5(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/preference/PreferenceCategory;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v12

    .line 1143
    .restart local v12    # "engineCount":I
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_6
    if-ge v15, v12, :cond_27

    .line 1144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get5(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/preference/PreferenceCategory;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v19

    .line 1145
    .restart local v19    # "p":Landroid/preference/Preference;
    move-object/from16 v0, v19

    instance-of v2, v0, Lcom/android/settings/tts/TtsEnginePreference;

    if-eqz v2, :cond_26

    move-object/from16 v13, v19

    .line 1146
    check-cast v13, Lcom/android/settings/tts/TtsEnginePreference;

    .line 1147
    .restart local v13    # "enginePref":Lcom/android/settings/tts/TtsEnginePreference;
    invoke-virtual {v13}, Lcom/android/settings/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "google"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-virtual {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->getCurrentKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Lcom/android/settings/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "GoogleTextToSpeech"

    const-string/jumbo v5, "AlreadySet"

    const-string/jumbo v6, "yes"

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1153
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 1162
    :goto_7
    return-void

    .line 1155
    :cond_24
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Lcom/android/settings/tts/TtsEnginePreference;->setChecked(Z)V

    .line 1156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "GoogleTextToSpeech"

    const-string/jumbo v5, "AlreadySet"

    const-string/jumbo v6, "no"

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1160
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_7

    .line 1143
    .end local v13    # "enginePref":Lcom/android/settings/tts/TtsEnginePreference;
    :cond_26
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_6

    .line 1167
    .end local v19    # "p":Landroid/preference/Preference;
    :cond_27
    const-string/jumbo v2, "TextToSpeechSettings"

    const-string/jumbo v4, "There is no google tts"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1171
    :cond_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1172
    .end local v12    # "engineCount":I
    .end local v15    # "i":I
    :cond_29
    const-string/jumbo v2, "IncreasePitch"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2a

    const-string/jumbo v2, "MaximizePitch"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1173
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get0(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v2

    const/16 v4, 0x190

    if-ne v2, v4, :cond_2b

    .line 1174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "AlreadyMax"

    const-string/jumbo v5, "Yes"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1178
    :cond_2b
    const-string/jumbo v2, "IncreasePitch"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get0(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v2

    add-int/lit8 v20, v2, 0x14

    .line 1183
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const-string/jumbo v4, "tts_default_pitch"

    move/from16 v0, v20

    invoke-static {v2, v4, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap1(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;I)I

    move-result v18

    .line 1184
    .restart local v18    # "newSpeechRate":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get1(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/android/settings/SeekBarPreference;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    .line 1185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    move/from16 v0, v18

    invoke-static {v2, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap3(Lcom/android/settings/tts/TextToSpeechSettings;I)V

    .line 1186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap2(Lcom/android/settings/tts/TextToSpeechSettings;)V

    .line 1192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1181
    .end local v18    # "newSpeechRate":I
    :cond_2c
    const/16 v20, 0x190

    goto :goto_8

    .line 1194
    :cond_2d
    const-string/jumbo v2, "MinimizePitch"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e

    const-string/jumbo v2, "DecreasePitch"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1195
    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get0(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v2

    const/16 v4, 0x19

    if-ne v2, v4, :cond_2f

    .line 1196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "AlreadyMin"

    const-string/jumbo v5, "Yes"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1200
    :cond_2f
    const-string/jumbo v2, "DecreasePitch"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get0(Lcom/android/settings/tts/TextToSpeechSettings;)I

    move-result v2

    add-int/lit8 v20, v2, -0x14

    .line 1205
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const-string/jumbo v4, "tts_default_pitch"

    move/from16 v0, v20

    invoke-static {v2, v4, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap1(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;I)I

    move-result v18

    .line 1206
    .restart local v18    # "newSpeechRate":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get1(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/android/settings/SeekBarPreference;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    .line 1207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    move/from16 v0, v18

    invoke-static {v2, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap3(Lcom/android/settings/tts/TextToSpeechSettings;I)V

    .line 1208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap2(Lcom/android/settings/tts/TextToSpeechSettings;)V

    .line 1214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1203
    .end local v18    # "newSpeechRate":I
    :cond_30
    const/16 v20, 0x19

    goto :goto_9

    .line 1216
    :cond_31
    const-string/jumbo v2, "SetPitch"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v2

    if-lez v2, :cond_33

    .line 1219
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I

    move-result v17

    .line 1220
    .restart local v17    # "newInt":I
    if-ltz v17, :cond_32

    const/16 v2, 0x64

    move/from16 v0, v17

    if-gt v0, v2, :cond_32

    .line 1221
    mul-int/lit8 v2, v17, 0x4

    add-int/lit8 v20, v2, 0x19

    .line 1223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const-string/jumbo v4, "tts_default_pitch"

    move/from16 v0, v20

    invoke-static {v2, v4, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap1(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;I)I

    move-result v18

    .line 1224
    .restart local v18    # "newSpeechRate":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get1(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/android/settings/SeekBarPreference;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    .line 1225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    move/from16 v0, v18

    invoke-static {v2, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap3(Lcom/android/settings/tts/TextToSpeechSettings;I)V

    .line 1226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap2(Lcom/android/settings/tts/TextToSpeechSettings;)V

    .line 1228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeechSet"

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeechSet"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 1237
    .end local v17    # "newInt":I
    .end local v18    # "newSpeechRate":I
    :catch_3
    move-exception v11

    .line 1238
    .restart local v11    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v2, "TextToSpeechSettings"

    const-string/jumbo v4, "failed to get param for bixby. "

    invoke-static {v2, v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeechSet"

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "No"

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1233
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .restart local v17    # "newInt":I
    :cond_32
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeechSet"

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "No"

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 1244
    .end local v17    # "newInt":I
    :cond_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeechSet"

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "No"

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1248
    :cond_34
    const-string/jumbo v2, "IncreasePitchByPercentage"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v2

    if-lez v2, :cond_37

    .line 1251
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I

    move-result v17

    .line 1252
    .restart local v17    # "newInt":I
    if-ltz v17, :cond_36

    const/16 v2, 0x64

    move/from16 v0, v17

    if-gt v0, v2, :cond_36

    .line 1253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get1(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/android/settings/SeekBarPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SeekBarPreference;->getProgress()I

    move-result v9

    .line 1254
    .local v9, "curSpeechPitch":I
    div-int/lit8 v8, v9, 0x4

    .line 1256
    .restart local v8    # "curInt":I
    add-int v17, v17, v8

    .line 1257
    const/16 v2, 0x64

    move/from16 v0, v17

    if-le v0, v2, :cond_35

    .line 1258
    const/16 v17, 0x64

    .line 1260
    :cond_35
    mul-int/lit8 v2, v17, 0x4

    add-int/lit8 v20, v2, 0x19

    .line 1262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const-string/jumbo v4, "tts_default_pitch"

    move/from16 v0, v20

    invoke-static {v2, v4, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap1(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;I)I

    move-result v18

    .line 1263
    .restart local v18    # "newSpeechRate":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get1(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/android/settings/SeekBarPreference;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    .line 1264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    move/from16 v0, v18

    invoke-static {v2, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap3(Lcom/android/settings/tts/TextToSpeechSettings;I)V

    .line 1265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap2(Lcom/android/settings/tts/TextToSpeechSettings;)V

    .line 1267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeechSet"

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeechSet"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    .line 1276
    .end local v8    # "curInt":I
    .end local v9    # "curSpeechPitch":I
    .end local v17    # "newInt":I
    .end local v18    # "newSpeechRate":I
    :catch_4
    move-exception v11

    .line 1277
    .restart local v11    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v2, "TextToSpeechSettings"

    const-string/jumbo v4, "failed to get param for bixby. "

    invoke-static {v2, v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeechSet"

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "No"

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1272
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .restart local v17    # "newInt":I
    :cond_36
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeechSet"

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "No"

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    .line 1283
    .end local v17    # "newInt":I
    :cond_37
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeechSet"

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "No"

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1287
    :cond_38
    const-string/jumbo v2, "DecreasePitchByPercentage"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 1288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v2

    if-lez v2, :cond_3b

    .line 1290
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamInt(I)I

    move-result v17

    .line 1291
    .restart local v17    # "newInt":I
    if-ltz v17, :cond_3a

    const/16 v2, 0x64

    move/from16 v0, v17

    if-gt v0, v2, :cond_3a

    .line 1292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get1(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/android/settings/SeekBarPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/SeekBarPreference;->getProgress()I

    move-result v9

    .line 1293
    .restart local v9    # "curSpeechPitch":I
    div-int/lit8 v8, v9, 0x4

    .line 1295
    .restart local v8    # "curInt":I
    sub-int v17, v8, v17

    .line 1296
    if-gez v17, :cond_39

    .line 1297
    const/16 v17, 0x0

    .line 1299
    :cond_39
    mul-int/lit8 v2, v17, 0x4

    add-int/lit8 v20, v2, 0x19

    .line 1301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    const-string/jumbo v4, "tts_default_pitch"

    move/from16 v0, v20

    invoke-static {v2, v4, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap1(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;I)I

    move-result v18

    .line 1302
    .restart local v18    # "newSpeechRate":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get1(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/android/settings/SeekBarPreference;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/settings/SeekBarPreference;->setProgress(I)V

    .line 1303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    move/from16 v0, v18

    invoke-static {v2, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap3(Lcom/android/settings/tts/TextToSpeechSettings;I)V

    .line 1304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap2(Lcom/android/settings/tts/TextToSpeechSettings;)V

    .line 1306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeechSet"

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "Yes"

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeechSet"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgResultParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_0

    .line 1315
    .end local v8    # "curInt":I
    .end local v9    # "curSpeechPitch":I
    .end local v17    # "newInt":I
    .end local v18    # "newSpeechRate":I
    :catch_5
    move-exception v11

    .line 1316
    .restart local v11    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v2, "TextToSpeechSettings"

    const-string/jumbo v4, "failed to get param for bixby. "

    invoke-static {v2, v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeechSet"

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "No"

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1311
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .restart local v17    # "newInt":I
    :cond_3a
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeechSet"

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "No"

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_0

    .line 1322
    .end local v17    # "newInt":I
    :cond_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeechSet"

    const-string/jumbo v5, "Valid"

    const-string/jumbo v6, "No"

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    .line 1326
    :cond_3c
    const-string/jumbo v2, "ResetSpeechRate"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 1328
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "ResetSpeechRate"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1330
    :cond_3d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 1331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get9(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/preference/Preference;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-virtual {v4}, Lcom/android/settings/tts/TextToSpeechSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_0

    .line 1332
    :cond_3e
    const-string/jumbo v2, "ResetPitch"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 1334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "ResetPitch"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1336
    :cond_3f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 1337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get8(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/preference/Preference;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-virtual {v4}, Lcom/android/settings/tts/TextToSpeechSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_0

    .line 1338
    :cond_40
    const-string/jumbo v2, "ListenToAnExample"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get7(Lcom/android/settings/tts/TextToSpeechSettings;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 1345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 1346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-wrap2(Lcom/android/settings/tts/TextToSpeechSettings;)V

    goto/16 :goto_0

    .line 1348
    :cond_41
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "Available"

    const-string/jumbo v5, "No"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v4, "TextToSpeech"

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 1350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/tts/TextToSpeechSettings$6;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    invoke-static {v2}, Lcom/android/settings/tts/TextToSpeechSettings;->-get4(Lcom/android/settings/tts/TextToSpeechSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
