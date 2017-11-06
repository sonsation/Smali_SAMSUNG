.class public Lcom/samsung/android/app/music/common/update/AppUpdateChecker;
.super Ljava/lang/Object;
.source "AppUpdateChecker.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/update/AppUpdateCheckObservable;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mContext:Landroid/content/Context;

.field private mCurrentStatus:I

.field private mExecutionListener:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;

.field private mForceUpdate:Z

.field private final mResultListener:Lcom/samsung/android/app/music/common/update/SamsungAppsManager$ResultListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v0, p0, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;->mCurrentStatus:I

    .line 37
    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;->mForceUpdate:Z

    .line 49
    new-instance v0, Lcom/samsung/android/app/music/common/update/AppUpdateChecker$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/update/AppUpdateChecker$1;-><init>(Lcom/samsung/android/app/music/common/update/AppUpdateChecker;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;->mResultListener:Lcom/samsung/android/app/music/common/update/SamsungAppsManager$ResultListener;

    .line 40
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;->mContext:Landroid/content/Context;

    .line 41
    iput-object p1, p0, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;->mActivity:Landroid/app/Activity;

    .line 42
    check-cast p1, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;->mExecutionListener:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;

    .line 43
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/update/AppUpdateChecker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/update/AppUpdateChecker;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/music/common/update/AppUpdateChecker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/update/AppUpdateChecker;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;->mForceUpdate:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/update/AppUpdateChecker;)Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/update/AppUpdateChecker;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;->mExecutionListener:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;

    return-object v0
.end method


# virtual methods
.method public getAppUpdateStatus()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;->mCurrentStatus:I

    return v0
.end method

.method public setAppUpdateStatus(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 101
    iget v1, p0, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;->mCurrentStatus:I

    or-int/2addr v1, p1

    iput v1, p0, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;->mCurrentStatus:I

    .line 102
    sget-object v1, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAppUpdateStatus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " currentStatus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;->mCurrentStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget v1, p0, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;->mCurrentStatus:I

    invoke-static {v1}, Lcom/samsung/android/app/music/common/update/AppUpdateCheckObservable$Masking;->needSkip(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;->mExecutionListener:Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;

    invoke-interface {v1}, Lcom/samsung/android/app/music/preexecutiontask/PreExecutionTaskManager$OnPreExecutionTaskCompletionListener;->onPreExecutionTaskCompleted()V

    .line 107
    :cond_0
    iget v1, p0, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;->mCurrentStatus:I

    invoke-static {v1}, Lcom/samsung/android/app/music/common/update/AppUpdateCheckObservable$Masking;->needShowDialog(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v1, "NLG_PRECONDITION"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v1, "SamsungMusic"

    const-string v2, "Update"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;->mActivity:Landroid/app/Activity;

    check-cast v1, Lcom/samsung/android/app/music/bixby/nlg/PreconditionNlg;

    invoke-interface {v1, v0}, Lcom/samsung/android/app/music/bixby/nlg/PreconditionNlg;->sendPreconditionNlg(Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    .line 113
    iget-boolean v1, p0, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;->mForceUpdate:Z

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;->showAppUpdatePopup(Z)V

    .line 115
    .end local v0    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :cond_1
    return-void
.end method

.method public showAppUpdatePopup(Z)V
    .locals 3
    .param p1, "force"    # Z

    .prologue
    .line 118
    iget-object v1, p0, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 120
    if-nez p1, :cond_0

    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_APP_UPDATE_BADGE:Z

    if-nez v1, :cond_1

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog$AppUpdateDialogLauncher;->create(Landroid/app/Activity;Z)Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;

    move-result-object v0

    .line 123
    .local v0, "dialog":Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;
    new-instance v1, Lcom/samsung/android/app/music/common/update/AppUpdateChecker$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/common/update/AppUpdateChecker$2;-><init>(Lcom/samsung/android/app/music/common/update/AppUpdateChecker;Z)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->setOnPostiveButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 132
    new-instance v1, Lcom/samsung/android/app/music/common/update/AppUpdateChecker$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/common/update/AppUpdateChecker$3;-><init>(Lcom/samsung/android/app/music/common/update/AppUpdateChecker;Z)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->setOnMarketClickListener(Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog$OnMarketClickListener;)V

    .line 141
    iget-object v1, p0, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "appUpdateDialog"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 144
    .end local v0    # "dialog":Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;
    :cond_1
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 46
    invoke-static {}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager;->getInstance()Lcom/samsung/android/app/music/common/update/SamsungAppsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.app.music"

    iget-object v3, p0, Lcom/samsung/android/app/music/common/update/AppUpdateChecker;->mResultListener:Lcom/samsung/android/app/music/common/update/SamsungAppsManager$ResultListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager;->checkUpdate(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/common/update/SamsungAppsManager$ResultListener;)V

    .line 47
    return-void
.end method
