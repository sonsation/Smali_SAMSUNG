.class Lcom/samsung/android/app/music/preexecutiontask/MobileDataUsageNoticeTask;
.super Ljava/lang/Object;
.source "MobileDataUsageNoticeTask.java"

# interfaces
.implements Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;


# instance fields
.field private final mActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/samsung/android/app/music/preexecutiontask/MobileDataUsageNoticeTask;->mActivity:Landroid/app/Activity;

    .line 21
    return-void
.end method


# virtual methods
.method public performTask()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 25
    iget-object v6, p0, Lcom/samsung/android/app/music/preexecutiontask/MobileDataUsageNoticeTask;->mActivity:Landroid/app/Activity;

    const-string v7, "music_player_pref"

    .line 26
    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 27
    .local v4, "uiPreferences":Landroid/content/SharedPreferences;
    const-string v6, "mobile_data_usage_notice"

    .line 28
    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 29
    .local v5, "wasNoticed":Z
    if-eqz v5, :cond_1

    .line 30
    iget-object v6, p0, Lcom/samsung/android/app/music/preexecutiontask/MobileDataUsageNoticeTask;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;

    invoke-interface {v6}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;->onPreExecutionTaskCompleted()V

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/preexecutiontask/MobileDataUsageNoticeTask;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/samsung/android/app/music/network/NetworkManager;

    .line 33
    .local v2, "networkManager":Lcom/samsung/android/app/music/network/NetworkManager;
    invoke-interface {v2}, Lcom/samsung/android/app/music/network/NetworkManager;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/samsung/android/app/music/network/NetworkInfo;->wifi:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v6, v6, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->connected:Z

    if-nez v6, :cond_2

    .line 34
    const-string v3, "mobile_data_usage_dialog"

    .line 35
    .local v3, "tag":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/app/music/preexecutiontask/MobileDataUsageNoticeTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 36
    .local v1, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v6

    if-nez v6, :cond_0

    .line 37
    new-instance v0, Lcom/samsung/android/app/music/common/dialog/MobileDataUsageNoticeDialog;

    invoke-direct {v0}, Lcom/samsung/android/app/music/common/dialog/MobileDataUsageNoticeDialog;-><init>()V

    .line 38
    .local v0, "dialogFragment":Landroid/app/DialogFragment;
    invoke-virtual {v0, v1, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 41
    .end local v0    # "dialogFragment":Landroid/app/DialogFragment;
    .end local v1    # "fm":Landroid/app/FragmentManager;
    .end local v3    # "tag":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/app/music/preexecutiontask/MobileDataUsageNoticeTask;->mActivity:Landroid/app/Activity;

    check-cast v6, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;

    invoke-interface {v6}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;->onPreExecutionTaskCompleted()V

    goto :goto_0
.end method
