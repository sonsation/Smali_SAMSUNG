.class Lcom/android/settings/accounts/AccountSettings$2;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/AccountSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/accounts/AccountSettings;

    .prologue
    .line 919
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x64

    .line 922
    iget-object v5, p0, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v5}, Lcom/android/settings/accounts/AccountSettings;->-get0(Lcom/android/settings/accounts/AccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v4

    .line 923
    .local v4, "stateId":Ljava/lang/String;
    const-string/jumbo v5, "AccountSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "stateId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 925
    .local v0, "currentProfile":Landroid/os/UserHandle;
    const/4 v1, 0x0

    .line 926
    .local v1, "enableAutoSync":Z
    iget-object v5, p0, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v5}, Lcom/android/settings/accounts/AccountSettings;->-get2(Lcom/android/settings/accounts/AccountSettings;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 928
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 927
    invoke-static {v5}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v1

    .line 929
    .local v1, "enableAutoSync":Z
    const-string/jumbo v5, "AccountSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mEmCallback: enableAutoSync = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    .end local v1    # "enableAutoSync":Z
    :cond_0
    move v2, v1

    .line 933
    .local v2, "finalEnableAutoSync":Z
    const-string/jumbo v5, "AutoSyncOn"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 934
    iget-object v5, p0, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-virtual {v5}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 935
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/android/settings/accounts/AccountSettings$2$1;

    invoke-direct {v6, p0, v2, v0, v4}, Lcom/android/settings/accounts/AccountSettings$2$1;-><init>(Lcom/android/settings/accounts/AccountSettings$2;ZLandroid/os/UserHandle;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 988
    :cond_1
    :goto_0
    return-void

    .line 955
    :cond_2
    const-string/jumbo v5, "AutoSyncOff"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 956
    iget-object v5, p0, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-virtual {v5}, Lcom/android/settings/accounts/AccountSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 957
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lcom/android/settings/accounts/AccountSettings$2$2;

    invoke-direct {v6, p0, v2, v0, v4}, Lcom/android/settings/accounts/AccountSettings$2$2;-><init>(Lcom/android/settings/accounts/AccountSettings$2;ZLandroid/os/UserHandle;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 977
    :cond_3
    const-string/jumbo v5, "AddAccount"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 978
    iget-object v5, p0, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v5}, Lcom/android/settings/accounts/AccountSettings;->-get2(Lcom/android/settings/accounts/AccountSettings;)Landroid/util/SparseArray;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accounts/AccountSettings$ProfileData;

    .line 979
    .local v3, "mProfile":Lcom/android/settings/accounts/AccountSettings$ProfileData;
    if-eqz v3, :cond_5

    iget-object v5, v3, Lcom/android/settings/accounts/AccountSettings$ProfileData;->addAccountPreference:Lcom/android/settings/DimmableIconPreference;

    if-eqz v5, :cond_5

    .line 980
    iget-object v5, v3, Lcom/android/settings/accounts/AccountSettings$ProfileData;->addAccountPreference:Lcom/android/settings/DimmableIconPreference;

    iget-object v6, p0, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-virtual {v6}, Lcom/android/settings/accounts/AccountSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/DimmableIconPreference;->performClick(Landroid/preference/PreferenceScreen;)V

    .line 981
    iget-object v5, p0, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v5}, Lcom/android/settings/accounts/AccountSettings;->-get0(Lcom/android/settings/accounts/AccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 982
    iget-object v5, p0, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v5}, Lcom/android/settings/accounts/AccountSettings;->-get0(Lcom/android/settings/accounts/AccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    .line 983
    :cond_4
    iget-object v5, p0, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v5}, Lcom/android/settings/accounts/AccountSettings;->-get0(Lcom/android/settings/accounts/AccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    .line 985
    :cond_5
    iget-object v5, p0, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v5}, Lcom/android/settings/accounts/AccountSettings;->-get0(Lcom/android/settings/accounts/AccountSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0
.end method
