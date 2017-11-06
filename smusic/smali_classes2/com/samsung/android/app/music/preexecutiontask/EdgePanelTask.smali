.class Lcom/samsung/android/app/music/preexecutiontask/EdgePanelTask;
.super Ljava/lang/Object;
.source "EdgePanelTask.java"

# interfaces
.implements Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$PreExecutionTask;


# instance fields
.field private final mActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/samsung/android/app/music/preexecutiontask/EdgePanelTask;->mActivity:Landroid/app/Activity;

    .line 28
    return-void
.end method


# virtual methods
.method public performTask()V
    .locals 15

    .prologue
    .line 32
    iget-object v1, p0, Lcom/samsung/android/app/music/preexecutiontask/EdgePanelTask;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;

    .line 35
    .local v1, "completionListener":Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;
    sget-boolean v12, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_EDGE_PANEL:Z

    if-eqz v12, :cond_0

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->isOwnerUser()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 36
    invoke-static {}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 37
    :cond_0
    invoke-interface {v1}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;->onPreExecutionTaskCompleted()V

    .line 89
    :cond_1
    :goto_0
    return-void

    .line 41
    :cond_2
    iget-object v12, p0, Lcom/samsung/android/app/music/preexecutiontask/EdgePanelTask;->mActivity:Landroid/app/Activity;

    const-string v13, "music_player_pref"

    const/4 v14, 0x0

    .line 42
    invoke-virtual {v12, v13, v14}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 43
    .local v11, "uiPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v12, "show_edge_enable_popup"

    const/4 v13, 0x1

    .line 44
    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 45
    .local v10, "showPopup":Z
    if-nez v10, :cond_3

    .line 46
    const-string v12, "Ui"

    const-string/jumbo v13, "showEdgePanelEnableDialog() - showPopup: false"

    invoke-static {v12, v13}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-interface {v1}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;->onPreExecutionTaskCompleted()V

    goto :goto_0

    .line 51
    :cond_3
    iget-object v12, p0, Lcom/samsung/android/app/music/preexecutiontask/EdgePanelTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 52
    .local v3, "context":Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;

    move-result-object v0

    .line 53
    .local v0, "cocktailManager":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    if-nez v0, :cond_4

    .line 54
    const-string v12, "Ui"

    const-string/jumbo v13, "showEdgePanelEnableDialog() - cocktailManager is null"

    invoke-static {v12, v13}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-interface {v1}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;->onPreExecutionTaskCompleted()V

    goto :goto_0

    .line 58
    :cond_4
    const/4 v9, 0x1

    .line 60
    .local v9, "isEnabled":Z
    :try_start_0
    new-instance v12, Landroid/content/ComponentName;

    const-class v13, Lcom/sec/android/app/music/edgepanel/MusicEdgePanelProvider;

    invoke-direct {v12, v3, v13}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    invoke-virtual {v0, v12}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->isEnabledCocktail(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 66
    :goto_1
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 67
    .local v6, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz v9, :cond_5

    .line 68
    const-string v12, "Ui"

    const-string/jumbo v13, "showEdgePanelEnableDialog() - isEnable: true"

    invoke-static {v12, v13}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string/jumbo v12, "show_edge_enable_popup"

    const/4 v13, 0x0

    invoke-interface {v6, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 70
    invoke-interface {v1}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;->onPreExecutionTaskCompleted()V

    goto :goto_0

    .line 62
    .end local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v5

    .line 63
    .local v5, "e":Ljava/lang/NoSuchMethodError;
    const-string v12, "Ui"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "showEdgePanelEnableDialog() isEnabledCocktail NoSuchMethodError:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 64
    invoke-virtual {v5}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 63
    invoke-static {v12, v13}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 74
    .end local v5    # "e":Ljava/lang/NoSuchMethodError;
    .restart local v6    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_5
    new-instance v8, Landroid/content/Intent;

    const-string v12, "intent.action.EDGE_PANELS"

    invoke-direct {v8, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v8, "intent":Landroid/content/Intent;
    iget-object v12, p0, Lcom/samsung/android/app/music/preexecutiontask/EdgePanelTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    .line 77
    .local v2, "componentName":Landroid/content/ComponentName;
    iget-object v12, p0, Lcom/samsung/android/app/music/preexecutiontask/EdgePanelTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->isDestroyed()Z

    move-result v12

    if-nez v12, :cond_6

    iget-object v12, p0, Lcom/samsung/android/app/music/preexecutiontask/EdgePanelTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->isFinishing()Z

    move-result v12

    if-nez v12, :cond_6

    if-nez v2, :cond_7

    .line 78
    :cond_6
    const-string v12, "Ui"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "showEdgePanelEnableDialog() componentName:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-interface {v1}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;->onPreExecutionTaskCompleted()V

    goto/16 :goto_0

    .line 83
    :cond_7
    iget-object v12, p0, Lcom/samsung/android/app/music/preexecutiontask/EdgePanelTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    .line 84
    .local v7, "fm":Landroid/app/FragmentManager;
    sget-object v12, Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v12}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v12

    if-nez v12, :cond_1

    .line 85
    new-instance v4, Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog;

    invoke-direct {v4}, Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog;-><init>()V

    .line 86
    .local v4, "dialog":Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog;
    sget-object v12, Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v7, v12}, Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 87
    const-string/jumbo v12, "show_edge_enable_popup"

    const/4 v13, 0x0

    invoke-interface {v6, v12, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method
