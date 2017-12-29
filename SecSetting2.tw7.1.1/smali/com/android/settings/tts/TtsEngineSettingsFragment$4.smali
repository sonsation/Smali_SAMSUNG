.class Lcom/android/settings/tts/TtsEngineSettingsFragment$4;
.super Landroid/os/Handler;
.source "TtsEngineSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/tts/TtsEngineSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/TtsEngineSettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/tts/TtsEngineSettingsFragment;

    .prologue
    .line 449
    iput-object p1, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment$4;->this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 452
    iget-object v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment$4;->this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;

    invoke-virtual {v2}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 453
    return-void

    .line 454
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 456
    .local v1, "stateId":Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 451
    :goto_0
    return-void

    .line 458
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment$4;->this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;

    invoke-static {v2}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->-get3(Lcom/android/settings/tts/TtsEngineSettingsFragment;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 459
    const-string/jumbo v2, "Language"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 460
    iget-object v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment$4;->this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;

    invoke-static {v2}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->-get5(Lcom/android/settings/tts/TtsEngineSettingsFragment;)Landroid/preference/ListPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment$4;->this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;

    invoke-virtual {v3}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 461
    iget-object v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment$4;->this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;

    invoke-static {v2}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->-get1(Lcom/android/settings/tts/TtsEngineSettingsFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 462
    iget-object v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment$4;->this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;

    invoke-static {v2}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->-get1(Lcom/android/settings/tts/TtsEngineSettingsFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "SamsungTextToSpeechSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 464
    :cond_1
    iget-object v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment$4;->this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;

    invoke-static {v2}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->-get1(Lcom/android/settings/tts/TtsEngineSettingsFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    .line 465
    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 464
    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    .line 467
    :cond_2
    iget-object v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment$4;->this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;

    invoke-static {v2}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->-get0(Lcom/android/settings/tts/TtsEngineSettingsFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 469
    :cond_3
    iget-object v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment$4;->this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;

    invoke-static {v2}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->-get0(Lcom/android/settings/tts/TtsEngineSettingsFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 471
    .local v0, "message":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/settings/tts/TtsEngineSettingsFragment$4;->this$0:Lcom/android/settings/tts/TtsEngineSettingsFragment;

    invoke-static {v2}, Lcom/android/settings/tts/TtsEngineSettingsFragment;->-get0(Lcom/android/settings/tts/TtsEngineSettingsFragment;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 456
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
