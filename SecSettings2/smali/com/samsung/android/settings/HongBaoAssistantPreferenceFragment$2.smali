.class Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;
.super Ljava/lang/Object;
.source "HongBaoAssistantPreferenceFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 266
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "stateId":Ljava/lang/String;
    const-string/jumbo v1, "EnableHongbaoAssistant"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 269
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->-wrap1(Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 270
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "HongbaoAssistant"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "HongbaoAssistant"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->-get2(Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 275
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 360
    :cond_1
    :goto_0
    return-void

    .line 278
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "HongbaoAssistant"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "HongbaoAssistant"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 282
    :cond_3
    const-string/jumbo v1, "DisableHongbaoAssistant"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 283
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->-wrap1(Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 284
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 285
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "HongbaoAssistant"

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "HongbaoAssistant"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 288
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->-get2(Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 289
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 292
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "HongbaoAssistant"

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "HongbaoAssistant"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 296
    :cond_6
    const-string/jumbo v1, "EnableHongbaoAssistantAlertTone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 297
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->-wrap2(Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 298
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 299
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "HongbaoAssistantAlertTone"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "HongbaoAssistant"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 302
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->-get1(Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 303
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    invoke-virtual {v1}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hongbao_notification_sound"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 304
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 307
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "HongbaoAssistantAlertTone"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "HongbaoAssistant"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 309
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 311
    :cond_9
    const-string/jumbo v1, "DisableHongbaoAssistantAlertTone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 312
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->-wrap2(Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 313
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 314
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "HongbaoAssistantAlertTone"

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "HongbaoAssistant"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 317
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->-get1(Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 318
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    invoke-virtual {v1}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hongbao_notification_sound"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 319
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 322
    :cond_b
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "HongbaoAssistantAlertTone"

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "HongbaoAssistant"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 324
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 326
    :cond_c
    const-string/jumbo v1, "EnableHongbaoAssistantOpenWechat"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 327
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->-wrap0(Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 328
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 329
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "HongbaoAssistantOpenWechat"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "HongbaoAssistant"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 332
    :cond_d
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->-get0(Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 333
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    invoke-virtual {v1}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hongbao_launch_app"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 334
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 337
    :cond_e
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "HongbaoAssistantOpenWechat"

    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "HongbaoAssistant"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 339
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 341
    :cond_f
    const-string/jumbo v1, "DisableHongbaoAssistantOpenWechat"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 342
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->-wrap0(Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 343
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 344
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "HongbaoAssistantOpenWechat"

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "No"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "HongbaoAssistant"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 347
    :cond_10
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->-get0(Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 348
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    invoke-virtual {v1}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hongbao_launch_app"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 349
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 352
    :cond_11
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "HongbaoAssistantOpenWechat"

    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "Yes"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "HongbaoAssistant"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 354
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 356
    :cond_12
    const-string/jumbo v1, "HongbaoAssisantAlertTone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 357
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->-get1(Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    invoke-virtual {v2}, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 358
    iget-object v1, p0, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;

    iget-object v1, v1, Lcom/samsung/android/settings/HongBaoAssistantPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0
.end method
