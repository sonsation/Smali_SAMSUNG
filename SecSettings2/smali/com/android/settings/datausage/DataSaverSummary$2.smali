.class Lcom/android/settings/datausage/DataSaverSummary$2;
.super Ljava/lang/Object;
.source "DataSaverSummary.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataSaverSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataSaverSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataSaverSummary;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/datausage/DataSaverSummary;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary$2;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 6

    .prologue
    .line 290
    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverSummary$2;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataSaverSummary;->-get2(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "stateId":Ljava/lang/String;
    const-string/jumbo v2, "DataSaverOn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "DataSaverOff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 292
    :cond_0
    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverSummary$2;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataSaverSummary;->-get0(Lcom/android/settings/datausage/DataSaverSummary;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 293
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverSummary$2;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataSaverSummary;->-get0(Lcom/android/settings/datausage/DataSaverSummary;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 294
    return-void

    .line 295
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    const-string/jumbo v2, "AllowUnrestrictedDataUsage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 296
    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverSummary$2;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataSaverSummary;->-get3(Lcom/android/settings/datausage/DataSaverSummary;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/DataSaverSummary$2;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-virtual {v3}, Lcom/android/settings/datausage/DataSaverSummary;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 297
    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverSummary$2;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataSaverSummary;->-get2(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 298
    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverSummary$2;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataSaverSummary;->-get2(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    const-string/jumbo v3, "DataSaver"

    const-string/jumbo v4, "AlreadyOn"

    const-string/jumbo v5, "yes"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverSummary$2;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataSaverSummary;->-get2(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 301
    :cond_2
    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverSummary$2;->this$0:Lcom/android/settings/datausage/DataSaverSummary;

    invoke-static {v2}, Lcom/android/settings/datausage/DataSaverSummary;->-get2(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 303
    :cond_3
    return-void
.end method
