.class Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$3;
.super Landroid/os/Handler;
.source "DeviceVisibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$3;->this$0:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 252
    iget-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$3;->this$0:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 253
    return-void

    .line 254
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 255
    .local v0, "stateId":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 251
    :cond_1
    :goto_0
    return-void

    .line 257
    :pswitch_0
    const-string/jumbo v1, "DeviceVisibilitySetOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 258
    iget-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$3;->this$0:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->-wrap0(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 259
    iget-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$3;->this$0:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DeviceVisibilitySet"

    .line 260
    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "Yes"

    .line 259
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$3;->this$0:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DeviceVisibility"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$3;->this$0:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 263
    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 262
    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 265
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$3;->this$0:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->setDBInt(Landroid/content/Context;I)V

    .line 266
    iget-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$3;->this$0:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 267
    iget-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$3;->this$0:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DeviceVisibilitySet"

    .line 268
    const-string/jumbo v3, "AlreadyON"

    const-string/jumbo v4, "No"

    .line 267
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$3;->this$0:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DeviceVisibility"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 271
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$3;->this$0:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 272
    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 271
    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto :goto_0

    .line 274
    :cond_4
    const-string/jumbo v1, "DeviceVisibilitySetOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 275
    iget-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$3;->this$0:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;

    invoke-static {v1}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->-wrap0(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->getDBInt(Landroid/content/ContentResolver;)I

    move-result v1

    if-nez v1, :cond_5

    .line 276
    iget-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$3;->this$0:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DeviceVisibilitySet"

    .line 277
    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "Yes"

    .line 276
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$3;->this$0:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DeviceVisibility"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$3;->this$0:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 280
    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 279
    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 282
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$3;->this$0:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilityUtils;->setDBInt(Landroid/content/Context;I)V

    .line 283
    iget-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$3;->this$0:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 284
    iget-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$3;->this$0:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DeviceVisibilitySet"

    .line 285
    const-string/jumbo v3, "AlreadyOFF"

    const-string/jumbo v4, "No"

    .line 284
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$3;->this$0:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "DeviceVisibility"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 288
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$3;->this$0:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;

    iget-object v1, v1, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 289
    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    .line 288
    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
