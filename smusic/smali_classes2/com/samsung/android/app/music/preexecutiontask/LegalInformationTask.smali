.class Lcom/samsung/android/app/music/preexecutiontask/LegalInformationTask;
.super Ljava/lang/Object;
.source "LegalInformationTask.java"

# interfaces
.implements Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;


# instance fields
.field private final mActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/samsung/android/app/music/preexecutiontask/LegalInformationTask;->mActivity:Landroid/app/Activity;

    .line 25
    return-void
.end method


# virtual methods
.method public performTask()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 29
    iget-object v5, p0, Lcom/samsung/android/app/music/preexecutiontask/LegalInformationTask;->mActivity:Landroid/app/Activity;

    const-string v6, "music_player_pref"

    .line 30
    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 31
    .local v4, "uiPreference":Landroid/content/SharedPreferences;
    const-string v5, "legal_information_agreed"

    .line 32
    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 34
    .local v0, "agreed":Z
    if-eqz v0, :cond_1

    .line 35
    iget-object v5, p0, Lcom/samsung/android/app/music/preexecutiontask/LegalInformationTask;->mActivity:Landroid/app/Activity;

    check-cast v5, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;

    invoke-interface {v5}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;->onPreExecutionTaskCompleted()V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v5, "NLG_PRECONDITION"

    invoke-direct {v3, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 38
    .local v3, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v5, "SamsungMusic"

    const-string v6, "TermsAndConditions"

    const-string/jumbo v7, "yes"

    invoke-virtual {v3, v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v5, p0, Lcom/samsung/android/app/music/preexecutiontask/LegalInformationTask;->mActivity:Landroid/app/Activity;

    check-cast v5, Lcom/samsung/android/app/music/bixby/nlg/PreconditionNlg;

    invoke-interface {v5, v3}, Lcom/samsung/android/app/music/bixby/nlg/PreconditionNlg;->sendPreconditionNlg(Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    .line 42
    iget-object v5, p0, Lcom/samsung/android/app/music/preexecutiontask/LegalInformationTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 44
    .local v1, "fm":Landroid/app/FragmentManager;
    iget-object v2, p0, Lcom/samsung/android/app/music/preexecutiontask/LegalInformationTask;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/samsung/android/app/music/network/NetworkManager;

    .line 45
    .local v2, "networkManager":Lcom/samsung/android/app/music/network/NetworkManager;
    invoke-interface {v2}, Lcom/samsung/android/app/music/network/NetworkManager;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/samsung/android/app/music/network/NetworkInfo;->all:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v5, v5, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->connected:Z

    if-eqz v5, :cond_2

    .line 46
    sget-object v5, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    if-nez v5, :cond_0

    .line 47
    new-instance v5, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;

    invoke-direct {v5}, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;-><init>()V

    sget-object v6, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v1, v6}, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_2
    sget-object v5, Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    if-nez v5, :cond_0

    .line 51
    new-instance v5, Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;

    invoke-direct {v5}, Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;-><init>()V

    sget-object v6, Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;->TAG:Ljava/lang/String;

    .line 52
    invoke-virtual {v5, v1, v6}, Lcom/samsung/android/app/music/common/dialog/LegalInformationNoNetworkDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
