.class Lcom/android/settings/deviceinfo/StorageSettings$4;
.super Ljava/lang/Object;
.source "StorageSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/StorageSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/StorageSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/deviceinfo/StorageSettings;

    .prologue
    .line 682
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageSettings$4;->this$0:Lcom/android/settings/deviceinfo/StorageSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 685
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageSettings$4;->this$0:Lcom/android/settings/deviceinfo/StorageSettings;

    invoke-static {v3}, Lcom/android/settings/deviceinfo/StorageSettings;->-get0(Lcom/android/settings/deviceinfo/StorageSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v2

    .line 686
    .local v2, "stateId":Ljava/lang/String;
    const-string/jumbo v3, "InternalStorage"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 687
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageSettings$4;->this$0:Lcom/android/settings/deviceinfo/StorageSettings;

    invoke-static {v3}, Lcom/android/settings/deviceinfo/StorageSettings;->-get0(Lcom/android/settings/deviceinfo/StorageSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 688
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageSettings$4;->this$0:Lcom/android/settings/deviceinfo/StorageSettings;

    invoke-static {v3}, Lcom/android/settings/deviceinfo/StorageSettings;->-get0(Lcom/android/settings/deviceinfo/StorageSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 689
    :cond_0
    const/4 v1, 0x1

    .line 690
    .local v1, "isSinglePane":Z
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageSettings$4;->this$0:Lcom/android/settings/deviceinfo/StorageSettings;

    invoke-virtual {v3}, Lcom/android/settings/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/settings/SettingsActivity;

    if-eqz v3, :cond_1

    .line 691
    const/4 v1, 0x0

    .line 694
    :cond_1
    invoke-static {v5}, Lcom/android/settings/deviceinfo/StorageSettings;->-set0(Z)Z

    .line 695
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 696
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "android.os.storage.extra.VOLUME_ID"

    const-string/jumbo v4, "private"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    if-nez v1, :cond_2

    .line 699
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageSettings$4;->this$0:Lcom/android/settings/deviceinfo/StorageSettings;

    invoke-virtual {v3}, Lcom/android/settings/deviceinfo/StorageSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, ":settings:prefs"

    invoke-virtual {v3, v4, v5}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 702
    :cond_2
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageSettings$4;->this$0:Lcom/android/settings/deviceinfo/StorageSettings;

    const-class v4, Lcom/android/settings/deviceinfo/PrivateVolumeSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    .line 703
    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 702
    invoke-static {v3, v4, v5, v6, v0}, Lcom/android/settings/deviceinfo/StorageSettings;->-wrap2(Lcom/android/settings/deviceinfo/StorageSettings;Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 704
    if-eqz v1, :cond_3

    .line 705
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageSettings$4;->this$0:Lcom/android/settings/deviceinfo/StorageSettings;

    invoke-virtual {v3}, Lcom/android/settings/deviceinfo/StorageSettings;->finish()V

    .line 706
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageSettings$4;->this$0:Lcom/android/settings/deviceinfo/StorageSettings;

    invoke-virtual {v3}, Lcom/android/settings/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/settings/Settings$StorageSettingsActivity;

    if-eqz v3, :cond_3

    .line 707
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageSettings$4;->this$0:Lcom/android/settings/deviceinfo/StorageSettings;

    invoke-virtual {v3}, Lcom/android/settings/deviceinfo/StorageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 710
    :cond_3
    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageSettings$4;->this$0:Lcom/android/settings/deviceinfo/StorageSettings;

    invoke-static {v3}, Lcom/android/settings/deviceinfo/StorageSettings;->-get0(Lcom/android/settings/deviceinfo/StorageSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    .line 712
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "isSinglePane":Z
    :cond_4
    return-void
.end method
