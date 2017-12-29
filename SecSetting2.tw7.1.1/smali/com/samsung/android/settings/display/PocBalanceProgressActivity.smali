.class public Lcom/samsung/android/settings/display/PocBalanceProgressActivity;
.super Lcom/android/settings/InstrumentedActivity;
.source "PocBalanceProgressActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/PocBalanceProgressActivity$1;,
        Lcom/samsung/android/settings/display/PocBalanceProgressActivity$2;,
        Lcom/samsung/android/settings/display/PocBalanceProgressActivity$3;,
        Lcom/samsung/android/settings/display/PocBalanceProgressActivity$UIThreadPOC;
    }
.end annotation


# static fields
.field private static COMMAND_FILE:Ljava/io/File;

.field private static final RECOVERY_DIR:Ljava/io/File;


# instance fields
.field private bIsCallFirst:Z

.field private bIsForceWatingForShortModel:Z

.field private backgroundThread:Ljava/lang/Runnable;

.field currentPos:I

.field private isPocRunning:Z

.field public mEstimatedTime:J

.field public mIsProgressStop:Z

.field private mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

.field private mPercentageTextView:Landroid/widget/TextView;

.field private mPocCancelDialog:Landroid/app/AlertDialog;

.field private final mPocObserver:Landroid/database/ContentObserver;

.field private mPocProgressStatus:I

.field private mPocTask:Lcom/samsung/android/settings/display/PocBalanceProgressActivity$UIThreadPOC;

.field private mPocWasStoppedDialog:Landroid/app/AlertDialog;

.field private mPocWriteValue:I

.field mProgressBar:Landroid/widget/ProgressBar;

.field private volatile mProgressBarThread:Ljava/lang/Thread;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field pgBarHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->bIsForceWatingForShortModel:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->isPocRunning:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)Lcom/samsung/android/hardware/display/SemMdnieManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPercentageTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocProgressStatus:I

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocWriteValue:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocProgressStatus:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->insertProgressReadErrorLog()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->removeEfsPocErrorOccurredOnBoot()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->stopPoc()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->writeCommandForRecovery()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;II)V
    .locals 0
    .param p1, "userValue"    # I
    .param p2, "seekIndex"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->writeEfsApplyVersion(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 568
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/cache/recovery"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->RECOVERY_DIR:Ljava/io/File;

    .line 569
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v2, "command"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->COMMAND_FILE:Ljava/io/File;

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Lcom/android/settings/InstrumentedActivity;-><init>()V

    .line 65
    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 73
    iput v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->currentPos:I

    .line 74
    iput v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocProgressStatus:I

    .line 76
    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocCancelDialog:Landroid/app/AlertDialog;

    .line 78
    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocWasStoppedDialog:Landroid/app/AlertDialog;

    .line 80
    iput-boolean v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->isPocRunning:Z

    .line 82
    iput-boolean v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->bIsForceWatingForShortModel:Z

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->bIsCallFirst:Z

    .line 86
    iput v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocWriteValue:I

    .line 90
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mEstimatedTime:J

    .line 92
    iput-boolean v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mIsProgressStop:Z

    .line 94
    new-instance v0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$1;-><init>(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocObserver:Landroid/database/ContentObserver;

    .line 115
    new-instance v0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$2;-><init>(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->backgroundThread:Ljava/lang/Runnable;

    .line 139
    new-instance v0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$3;-><init>(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->pgBarHandler:Landroid/os/Handler;

    .line 55
    return-void
.end method

.method private blockHWkey()V
    .locals 5

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 304
    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 306
    .local v1, "mWindowManager":Landroid/view/IWindowManager;
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    .line 307
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x43a

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    .line 308
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    .line 309
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0xa4

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    .line 310
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x18

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    .line 311
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x19

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    .line 312
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x1a

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    .line 313
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x24

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    .line 314
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x25

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    .line 315
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0xbb

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    .line 316
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x3e9

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_0
    return-void

    .line 318
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private initUI()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 221
    const v4, 0x7f110618

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 222
    .local v2, "pocDescription":Landroid/widget/TextView;
    if-eqz v2, :cond_0

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 224
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-wide v4, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mEstimatedTime:J

    const-wide/32 v6, 0x668a0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 225
    iput-boolean v8, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->bIsForceWatingForShortModel:Z

    .line 229
    :goto_0
    const v4, 0x7f0b0666

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 234
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 235
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getPocUserIndexTemp(Landroid/content/Context;)I

    move-result v1

    .line 236
    .local v1, "pocCurrentIndex":I
    add-int/lit8 v4, v1, -0x1

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getPocPreview(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 220
    .end local v1    # "pocCurrentIndex":I
    :cond_1
    return-void

    .line 227
    .end local v0    # "decorView":Landroid/view/View;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    iput-boolean v9, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->bIsForceWatingForShortModel:Z

    goto :goto_0
.end method

.method private insertProgressReadErrorLog()V
    .locals 3

    .prologue
    .line 633
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_0

    .line 634
    return-void

    .line 635
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f019f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 637
    .local v0, "eventId":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getMetrics()I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 636
    invoke-static {p0, v1, v0, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    .line 632
    return-void
.end method

.method private removeEfsPocErrorOccurredOnBoot()V
    .locals 5

    .prologue
    .line 618
    const-string/jumbo v2, "/efs/etc/poc/failcount"

    .line 621
    .local v2, "lFileName":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 622
    .local v1, "eFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 623
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 625
    :cond_0
    const-string/jumbo v3, "PocBalanceProgressActivity"

    const-string/jumbo v4, "[stpoc] removeEfsPocErrorOccurredOnBoot"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    .end local v1    # "eFile":Ljava/io/File;
    :goto_0
    return-void

    .line 627
    :catch_0
    move-exception v0

    .line 628
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private showPocCancelDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 492
    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocCancelDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocCancelDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 493
    return-void

    .line 494
    :cond_0
    iput-object v4, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocCancelDialog:Landroid/app/AlertDialog;

    .line 495
    new-instance v1, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$5;-><init>(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V

    .line 501
    .local v1, "cancelListner":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$6;-><init>(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V

    .line 520
    .local v2, "positiveButtonListner":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$7;-><init>(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V

    .line 526
    .local v0, "cancelDlgListner":Landroid/content/DialogInterface$OnCancelListener;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 527
    const v4, 0x7f0b066c

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 526
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 528
    const v4, 0x7f0b066d

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 526
    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 529
    const v4, 0x7f0b053a

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 526
    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocCancelDialog:Landroid/app/AlertDialog;

    .line 532
    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocCancelDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 491
    return-void
.end method

.method private showPocWasStoppedDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 536
    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocWasStoppedDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocWasStoppedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 537
    return-void

    .line 538
    :cond_0
    iput-object v4, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocWasStoppedDialog:Landroid/app/AlertDialog;

    .line 540
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f019f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 542
    .local v1, "eventId":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getMetrics()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, v3, v1, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    .line 544
    new-instance v2, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$8;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$8;-><init>(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V

    .line 552
    .local v2, "okListner":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$9;-><init>(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V

    .line 560
    .local v0, "cancelDlgListner":Landroid/content/DialogInterface$OnCancelListener;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 561
    const v4, 0x7f0b0672

    .line 560
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 562
    const v4, 0x7f0b0671

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 560
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 563
    const v4, 0x7f0b0512

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 560
    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocWasStoppedDialog:Landroid/app/AlertDialog;

    .line 565
    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocWasStoppedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 535
    return-void
.end method

.method private startPoc()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 455
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getUserPocValue(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocWriteValue:I

    .line 456
    const-string/jumbo v0, "PocBalanceProgressActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[stpoc] startPoc, previous state : Running - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->isPocRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-string/jumbo v0, "PocBalanceProgressActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[stpoc] startPoc, reqeust userPoc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocWriteValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->isPocRunning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->bIsCallFirst:Z

    if-eqz v0, :cond_0

    .line 459
    new-instance v0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$UIThreadPOC;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$UIThreadPOC;-><init>(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocTask:Lcom/samsung/android/settings/display/PocBalanceProgressActivity$UIThreadPOC;

    .line 460
    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocTask:Lcom/samsung/android/settings/display/PocBalanceProgressActivity$UIThreadPOC;

    new-array v1, v4, [Ljava/lang/Integer;

    iget v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocWriteValue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$UIThreadPOC;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 462
    :cond_0
    iput-boolean v4, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->isPocRunning:Z

    .line 463
    const-string/jumbo v0, "PocBalanceProgressActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[stpoc] startPoc, isPocRunning : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->isPocRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method private stopPoc()V
    .locals 3

    .prologue
    .line 468
    const-string/jumbo v0, "PocBalanceProgressActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[stpoc] stopPoc, previous state : Running - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->isPocRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->isPocRunning:Z

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->stopReadPoc(Lcom/samsung/android/hardware/display/SemMdnieManager;)V

    .line 472
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->isPocRunning:Z

    .line 467
    return-void
.end method

.method private writeCommandForRecovery()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 572
    new-instance v1, Ljava/io/RandomAccessFile;

    sget-object v2, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->COMMAND_FILE:Ljava/io/File;

    const-string/jumbo v3, "rwd"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 573
    .local v1, "command":Ljava/io/RandomAccessFile;
    const-string/jumbo v0, "--copy_poc_file"

    .line 576
    .local v0, "args":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 578
    const-string/jumbo v2, "PocBalanceProgressActivity"

    const-string/jumbo v3, "[stpoc] !@RecoverySystem before fsync syscall!!"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V

    .line 580
    const-string/jumbo v2, "PocBalanceProgressActivity"

    const-string/jumbo v3, "[stpoc] !@RecoverySystem after fsync syscall!!"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 585
    sget-object v2, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 586
    const-string/jumbo v2, "PocBalanceProgressActivity"

    const-string/jumbo v3, "[stpoc] COMMAND_FILE is already exist!!"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    :cond_0
    return-void

    .line 581
    :catchall_0
    move-exception v2

    .line 582
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 581
    throw v2
.end method

.method private writeEfsApplyVersion(II)V
    .locals 9
    .param p1, "userValue"    # I
    .param p2, "seekIndex"    # I

    .prologue
    .line 591
    const-string/jumbo v4, "/efs/FactoryApp/apply_version"

    .line 592
    .local v4, "filename":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 594
    .local v0, "data":Ljava/lang/String;
    const/4 v5, 0x0

    .line 597
    .local v5, "fw":Ljava/io/FileWriter;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 599
    .local v3, "eFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 600
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 602
    :cond_0
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 603
    .local v6, "fw":Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v6, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 607
    .end local v5    # "fw":Ljava/io/FileWriter;
    if-eqz v6, :cond_1

    .line 609
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    move-object v5, v6

    .line 590
    .end local v3    # "eFile":Ljava/io/File;
    .end local v6    # "fw":Ljava/io/FileWriter;
    :cond_2
    :goto_1
    return-void

    .line 610
    .restart local v3    # "eFile":Ljava/io/File;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_0
    move-exception v1

    .line 611
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 604
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "eFile":Ljava/io/File;
    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    :catch_1
    move-exception v2

    .line 605
    .end local v5    # "fw":Ljava/io/FileWriter;
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 607
    if-eqz v5, :cond_2

    .line 609
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 610
    :catch_2
    move-exception v1

    .line 611
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 606
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 607
    :goto_3
    if-eqz v5, :cond_3

    .line 609
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 606
    :cond_3
    :goto_4
    throw v7

    .line 610
    :catch_3
    move-exception v1

    .line 611
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 606
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "eFile":Ljava/io/File;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .local v5, "fw":Ljava/io/FileWriter;
    goto :goto_3

    .line 604
    .end local v5    # "fw":Ljava/io/FileWriter;
    .restart local v6    # "fw":Ljava/io/FileWriter;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v5, v6

    .end local v6    # "fw":Ljava/io/FileWriter;
    .restart local v5    # "fw":Ljava/io/FileWriter;
    goto :goto_2
.end method


# virtual methods
.method public disableStatusBar()V
    .locals 5

    .prologue
    .line 418
    iget-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v2, :cond_0

    .line 419
    const-string/jumbo v2, "statusbar"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 422
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v2, :cond_2

    .line 423
    const-string/jumbo v2, "PocBalanceProgressActivity"

    const-string/jumbo v3, "[stpoc] disableNotifications - mStatusBarManager is not null"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const/high16 v1, 0x3210000

    .line 429
    .local v1, "statusBarFlag":I
    const/4 v0, 0x0

    .line 425
    .local v0, "flagCheckresult":I
    const/high16 v2, 0x3210000

    .line 432
    if-eqz v2, :cond_1

    .line 433
    const-string/jumbo v2, "PocBalanceProgressActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[stpoc] disableNotifications disable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v2, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 412
    .end local v0    # "flagCheckresult":I
    .end local v1    # "statusBarFlag":I
    :goto_0
    return-void

    .line 436
    .restart local v0    # "flagCheckresult":I
    .restart local v1    # "statusBarFlag":I
    :cond_1
    const-string/jumbo v2, "PocBalanceProgressActivity"

    const-string/jumbo v3, "[stpoc] disableNotifications already disabled"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 440
    .end local v0    # "flagCheckresult":I
    .end local v1    # "statusBarFlag":I
    :cond_2
    const-string/jumbo v2, "PocBalanceProgressActivity"

    const-string/jumbo v3, "[stpoc] disableNotifications - mStatusBarManager is null"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enableStatusBar()V
    .locals 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 446
    const-string/jumbo v0, "PocBalanceProgressActivity"

    const-string/jumbo v1, "[stpoc] enableNotifications :  footerview"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 444
    :goto_0
    return-void

    .line 449
    :cond_0
    const-string/jumbo v0, "PocBalanceProgressActivity"

    const-string/jumbo v1, "[stpoc] enableNotifications - mStatusBarManager is null"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized finishReadPoc()V
    .locals 4

    .prologue
    monitor-enter p0

    .line 351
    :try_start_0
    const-string/jumbo v0, "PocBalanceProgressActivity"

    const-string/jumbo v1, "[stpoc] finishReadPoc"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mProgressBarThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 353
    const-string/jumbo v0, "PocBalanceProgressActivity"

    const-string/jumbo v1, "[stpoc] stop progressbar"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mProgressBarThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 355
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mProgressBarThread:Ljava/lang/Thread;

    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mIsProgressStop:Z

    .line 358
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->isPocRunning:Z

    .line 361
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->restoreDefaultScreenBrightnessMode(Landroid/content/Context;)V

    .line 363
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$4;-><init>(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V

    .line 395
    const-wide/16 v2, 0x3e8

    .line 363
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 350
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f019d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 184
    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "mDNIe"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/hardware/display/SemMdnieManager;

    iput-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 188
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->hide()V

    .line 189
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 190
    .local v0, "decorView":Landroid/view/View;
    const/16 v2, 0x1504

    .line 194
    .local v2, "uiOptions":I
    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 196
    const v3, 0x7f0401f1

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->setContentView(I)V

    .line 198
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 199
    const-string/jumbo v4, "sec_display_poc_application_complete"

    .line 198
    invoke-static {v3, v4, v5, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 202
    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->blockHWkey()V

    .line 204
    const-string/jumbo v3, "power"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 206
    .local v1, "pm":Landroid/os/PowerManager;
    const-string/jumbo v3, "PocBalanceProgressActivity"

    .line 205
    const v4, 0x3000001a

    invoke-virtual {v1, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 207
    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 209
    const v3, 0x7f110009

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 210
    const v3, 0x7f11061a

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPercentageTextView:Landroid/widget/TextView;

    .line 212
    iput-boolean v5, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mIsProgressStop:Z

    .line 214
    iget-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-static {v3}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getPocEstimatedTime(Lcom/samsung/android/hardware/display/SemMdnieManager;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mEstimatedTime:J

    .line 216
    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->initUI()V

    .line 217
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->startProgressBar()V

    .line 183
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 325
    sparse-switch p1, :sswitch_data_0

    .line 341
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/InstrumentedActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 336
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 338
    :sswitch_1
    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->showPocCancelDialog()V

    goto :goto_0

    .line 325
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_0
        0x24 -> :sswitch_0
        0x25 -> :sswitch_0
        0xa4 -> :sswitch_0
        0xbb -> :sswitch_0
        0x3e9 -> :sswitch_0
        0x43a -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 258
    invoke-super {p0}, Lcom/android/settings/InstrumentedActivity;->onPause()V

    .line 259
    const-string/jumbo v0, "PocBalanceProgressActivity"

    const-string/jumbo v1, "[stpoc] onPause()"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->enableStatusBar()V

    .line 263
    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 268
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->restoreDefaultScreenBrightnessMode(Landroid/content/Context;)V

    .line 270
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->stopPocAndProgressThread()V

    .line 257
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 242
    invoke-super {p0}, Lcom/android/settings/InstrumentedActivity;->onResume()V

    .line 243
    const-string/jumbo v0, "PocBalanceProgressActivity"

    const-string/jumbo v1, "[stpoc] onResume()"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->disableStatusBar()V

    .line 246
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_display_poc_application_complete"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 247
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->bIsCallFirst:Z

    if-eqz v0, :cond_0

    .line 248
    const-string/jumbo v0, "PocBalanceProgressActivity"

    const-string/jumbo v1, "[stpoc] onResume() startPoc"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->startPoc()V

    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->bIsCallFirst:Z

    .line 241
    :goto_0
    return-void

    .line 252
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->showPocWasStoppedDialog()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 276
    invoke-super {p0}, Lcom/android/settings/InstrumentedActivity;->onStop()V

    .line 277
    const-string/jumbo v0, "PocBalanceProgressActivity"

    const-string/jumbo v1, "[stpoc] onStop()"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->stopPocAndProgressThread()V

    .line 274
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 401
    if-eqz p1, :cond_0

    .line 402
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 403
    .local v0, "decorView":Landroid/view/View;
    const/16 v1, 0x1504

    .line 407
    .local v1, "uiOptions":I
    if-eqz v0, :cond_0

    .line 408
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 400
    .end local v0    # "decorView":Landroid/view/View;
    .end local v1    # "uiOptions":I
    :cond_0
    return-void
.end method

.method public declared-synchronized startProgressBar()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 345
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->backgroundThread:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mProgressBarThread:Ljava/lang/Thread;

    .line 346
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->currentPos:I

    .line 347
    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mProgressBarThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 344
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopPocAndProgressThread()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 282
    invoke-direct {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->stopPoc()V

    .line 284
    iget-object v1, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocTask:Lcom/samsung/android/settings/display/PocBalanceProgressActivity$UIThreadPOC;

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocTask:Lcom/samsung/android/settings/display/PocBalanceProgressActivity$UIThreadPOC;

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$UIThreadPOC;->cancel(Z)Z

    .line 286
    iput-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocTask:Lcom/samsung/android/settings/display/PocBalanceProgressActivity$UIThreadPOC;

    .line 289
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mPocObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mProgressBarThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    .line 295
    const-string/jumbo v1, "PocBalanceProgressActivity"

    const-string/jumbo v2, "[stpoc] stop progressbar"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mProgressBarThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 297
    iput-object v3, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mProgressBarThread:Ljava/lang/Thread;

    .line 298
    iput-boolean v4, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->mIsProgressStop:Z

    .line 281
    :cond_1
    return-void

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 292
    const-string/jumbo v1, "PocBalanceProgressActivity"

    const-string/jumbo v2, "[stpoc] no mPocObserver"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
