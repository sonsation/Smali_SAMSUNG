.class public Lcom/android/launcher3/common/stage/StageManager;
.super Ljava/lang/Object;
.source "StageManager.java"


# static fields
.field private static final RUNTIME_STAGE_STACK:Ljava/lang/String; = "RUNTIME_STAGE_STACK"

.field private static final RUNTIME_STAGE_STAGES:Ljava/lang/String; = "RUNTIME_STAGE_STAGES"

.field private static final TAG:Ljava/lang/String; = "StageManager"


# instance fields
.field private final mActivity:Lcom/android/launcher3/Launcher;

.field private mCurrentAnimation:Landroid/animation/AnimatorSet;

.field private mDumpStack:Z

.field private mInProgressTransit:Z

.field private final mStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/launcher3/common/stage/Stage;",
            ">;"
        }
    .end annotation
.end field

.field private final mStageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/launcher3/common/stage/Stage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/launcher3/Launcher;
    .param p2, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mDumpStack:Z

    .line 52
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    .line 53
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    .line 56
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mInProgressTransit:Z

    .line 59
    iput-object p1, p0, Lcom/android/launcher3/common/stage/StageManager;->mActivity:Lcom/android/launcher3/Launcher;

    .line 60
    invoke-direct {p0, p2}, Lcom/android/launcher3/common/stage/StageManager;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v0

    .line 63
    .local v0, "proxy":Lcom/android/launcher3/proxy/LauncherProxy;
    new-instance v1, Lcom/android/launcher3/common/stage/StageManagerProxyCallBacksImpl;

    invoke-direct {v1, p1, p0}, Lcom/android/launcher3/common/stage/StageManagerProxyCallBacksImpl;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/stage/StageManager;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/proxy/LauncherProxy;->setStageManagerProxyCallbacks(Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;)V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/stage/StageManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/stage/StageManager;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->cleanupAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/stage/StageManager;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/stage/StageManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mActivity:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/common/stage/StageManager;Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/stage/StageManager;
    .param p1, "x1"    # Lcom/android/launcher3/common/stage/Stage;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/common/stage/StageManager;->transitAnimEnd(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher3/common/stage/StageManager;Lcom/android/launcher3/common/stage/Stage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/stage/StageManager;
    .param p1, "x1"    # Lcom/android/launcher3/common/stage/Stage;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/stage/StageManager;->dumpStageView(Lcom/android/launcher3/common/stage/Stage;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher3/common/stage/StageManager;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/stage/StageManager;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/common/stage/StageManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/stage/StageManager;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->dumpStack()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/launcher3/common/stage/StageManager;Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/stage/StageManager;
    .param p1, "x1"    # Lcom/android/launcher3/common/stage/Stage;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/common/stage/StageManager;->transitAnimStart(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    return-void
.end method

.method private assertTransitInProgress()V
    .locals 1

    .prologue
    .line 785
    iget-boolean v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mInProgressTransit:Z

    if-eqz v0, :cond_0

    .line 786
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->dumpStack()V

    .line 787
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 789
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mInProgressTransit:Z

    .line 790
    return-void
.end method

.method private cancelAnimation()V
    .locals 4

    .prologue
    .line 711
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    .line 712
    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 713
    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 714
    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 716
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 717
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mCurrentAnimation:Landroid/animation/AnimatorSet;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    :cond_1
    :goto_0
    return-void

    .line 719
    :catch_0
    move-exception v0

    .line 720
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "StageManager"

    const-string v2, "mCurrentAnimation is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private cleanupAnimation()V
    .locals 1

    .prologue
    .line 725
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 726
    return-void
.end method

.method private dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z
    .param p4, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 778
    instance-of v0, p1, Lcom/android/launcher3/common/base/view/LauncherTransitionable;

    if-eqz v0, :cond_0

    .line 779
    check-cast p1, Lcom/android/launcher3/common/base/view/LauncherTransitionable;

    .end local p1    # "v":Landroid/view/View;
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mActivity:Lcom/android/launcher3/Launcher;

    invoke-interface {p1, v0, p2, p3, p4}, Lcom/android/launcher3/common/base/view/LauncherTransitionable;->onLauncherTransitionEnd(Lcom/android/launcher3/Launcher;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 782
    :cond_0
    return-void
.end method

.method private dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z
    .param p4, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 758
    instance-of v0, p1, Lcom/android/launcher3/common/base/view/LauncherTransitionable;

    if-eqz v0, :cond_0

    .line 759
    check-cast p1, Lcom/android/launcher3/common/base/view/LauncherTransitionable;

    .end local p1    # "v":Landroid/view/View;
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mActivity:Lcom/android/launcher3/Launcher;

    invoke-interface {p1, v0, p2, p3, p4}, Lcom/android/launcher3/common/base/view/LauncherTransitionable;->onLauncherTransitionPrepare(Lcom/android/launcher3/Launcher;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 762
    :cond_0
    return-void
.end method

.method private dispatchOnLauncherTransitionStart(Landroid/view/View;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z
    .param p4, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 768
    instance-of v0, p1, Lcom/android/launcher3/common/base/view/LauncherTransitionable;

    if-eqz v0, :cond_0

    .line 769
    check-cast p1, Lcom/android/launcher3/common/base/view/LauncherTransitionable;

    .end local p1    # "v":Landroid/view/View;
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mActivity:Lcom/android/launcher3/Launcher;

    invoke-interface {p1, v0, p2, p3, p4}, Lcom/android/launcher3/common/base/view/LauncherTransitionable;->onLauncherTransitionStart(Lcom/android/launcher3/Launcher;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 772
    :cond_0
    return-void
.end method

.method private dumpStack()V
    .locals 4

    .prologue
    .line 793
    iget-boolean v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mDumpStack:Z

    if-eqz v2, :cond_1

    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "dump stage\n"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 795
    .local v0, "out":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/stage/Stage;

    .line 796
    .local v1, "stage":Lcom/android/launcher3/common/stage/Stage;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 797
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 799
    .end local v1    # "stage":Lcom/android/launcher3/common/stage/Stage;
    :cond_0
    const-string v2, "StageManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    .end local v0    # "out":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method private dumpStageView(Lcom/android/launcher3/common/stage/Stage;)V
    .locals 6
    .param p1, "stage"    # Lcom/android/launcher3/common/stage/Stage;

    .prologue
    .line 804
    iget-boolean v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mDumpStack:Z

    if-eqz v1, :cond_0

    .line 805
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/Stage;->getContainerView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 806
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/Stage;->getContainerView()Landroid/view/View;

    move-result-object v0

    .line 807
    .local v0, "view":Landroid/view/View;
    const-string v1, "StageManager"

    const-string v2, "dump stageview info : mode(%d), visible(%d) , alpha(%f)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 808
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    .line 807
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 810
    :cond_1
    const-string v1, "StageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dump stageview info fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getStage(IZ)Lcom/android/launcher3/common/stage/Stage;
    .locals 5
    .param p1, "stageMode"    # I
    .param p2, "initView"    # Z

    .prologue
    .line 588
    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/stage/Stage;

    .line 589
    .local v1, "stage":Lcom/android/launcher3/common/stage/Stage;
    if-nez v1, :cond_0

    .line 591
    :try_start_0
    invoke-static {p1}, Lcom/android/launcher3/common/stage/StageFactory;->buildStage(I)Lcom/android/launcher3/common/stage/Stage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 595
    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mActivity:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v2, p1}, Lcom/android/launcher3/common/stage/Stage;->initialize(Lcom/android/launcher3/Launcher;I)V

    .line 596
    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->setup()V

    .line 597
    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->keepInstance()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 598
    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    :cond_0
    if-eqz p2, :cond_1

    iget-boolean v2, v1, Lcom/android/launcher3/common/stage/Stage;->mViewInitiated:Z

    if-nez v2, :cond_1

    .line 602
    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->initStageView()V

    .line 604
    :cond_1
    return-object v1

    .line 592
    :catch_0
    move-exception v0

    .line 593
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " fail to create instance"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 417
    if-eqz p1, :cond_0

    .line 419
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/stage/StageManager;->restoreStack(Landroid/os/Bundle;Z)V

    .line 423
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->getStage(I)Lcom/android/launcher3/common/stage/Stage;

    .line 424
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 425
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->getStage(I)Lcom/android/launcher3/common/stage/Stage;

    .line 427
    :cond_1
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->getStage(I)Lcom/android/launcher3/common/stage/Stage;

    .line 428
    return-void
.end method

.method private playTransitAnimation(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/Stage;Landroid/animation/Animator;Landroid/animation/Animator;Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 15
    .param p1, "toStage"    # Lcom/android/launcher3/common/stage/Stage;
    .param p2, "fromStage"    # Lcom/android/launcher3/common/stage/Stage;
    .param p3, "enterAnim"    # Landroid/animation/Animator;
    .param p4, "exitAnim"    # Landroid/animation/Animator;
    .param p5, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 609
    const-string v3, "StageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start stageTransitionAnim : from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/common/stage/StageManager;->mActivity:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 612
    iget-object v3, p0, Lcom/android/launcher3/common/stage/StageManager;->mActivity:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView()V

    .line 615
    :cond_0
    if-nez p3, :cond_1

    if-eqz p4, :cond_6

    .line 617
    :cond_1
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v11

    .line 619
    .local v11, "animatorSet":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 620
    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 622
    iput-object v11, p0, Lcom/android/launcher3/common/stage/StageManager;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 624
    if-eqz p3, :cond_3

    const/4 v3, 0x1

    :goto_0
    move-object/from16 v0, p1

    instance-of v6, v0, Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-direct {p0, v0, v3, v6, v1}, Lcom/android/launcher3/common/stage/StageManager;->transitAnimPrepare(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 625
    if-eqz p4, :cond_4

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p1

    instance-of v6, v0, Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-direct {p0, v0, v3, v6, v1}, Lcom/android/launcher3/common/stage/StageManager;->transitAnimPrepare(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 627
    new-instance v2, Lcom/android/launcher3/common/stage/StageManager$2;

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/common/stage/StageManager$2;-><init>(Lcom/android/launcher3/common/stage/StageManager;Lcom/android/launcher3/common/stage/Stage;Landroid/animation/Animator;Lcom/android/launcher3/common/stage/StageEntry;Lcom/android/launcher3/common/stage/Stage;)V

    invoke-virtual {v11, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 650
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 651
    .local v4, "time":J
    new-instance v2, Lcom/android/launcher3/common/stage/StageManager$3;

    move-object v3, p0

    move-object v6, v11

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    invoke-direct/range {v2 .. v10}, Lcom/android/launcher3/common/stage/StageManager$3;-><init>(Lcom/android/launcher3/common/stage/StageManager;JLandroid/animation/AnimatorSet;Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/Stage;Landroid/animation/Animator;Lcom/android/launcher3/common/stage/StageEntry;)V

    .line 681
    .local v2, "startAnimRunnable":Ljava/lang/Runnable;
    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/Utilities;->getAnimationDuration(Landroid/animation/Animator;)J

    move-result-wide v12

    .line 682
    .local v12, "animDuration":J
    const-wide/16 v6, 0x0

    cmp-long v3, v12, v6

    if-gez v3, :cond_2

    .line 683
    invoke-static/range {p4 .. p4}, Lcom/android/launcher3/Utilities;->getAnimationDuration(Landroid/animation/Animator;)J

    move-result-wide v12

    .line 685
    :cond_2
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11, v12, v13}, Lcom/android/launcher3/common/stage/Stage;->updateSystemUIForState(ILandroid/animation/AnimatorSet;J)V

    .line 687
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/stage/Stage;->getContainerView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 688
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/stage/Stage;->getContainerView()Landroid/view/View;

    move-result-object v14

    .line 689
    .local v14, "postView":Landroid/view/View;
    :goto_2
    invoke-virtual {v14, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 706
    .end local v2    # "startAnimRunnable":Ljava/lang/Runnable;
    .end local v4    # "time":J
    .end local v11    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v12    # "animDuration":J
    .end local v14    # "postView":Landroid/view/View;
    :goto_3
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher3/common/stage/StageManager;->mInProgressTransit:Z

    .line 707
    return-void

    .line 624
    .restart local v11    # "animatorSet":Landroid/animation/AnimatorSet;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 625
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 688
    .restart local v2    # "startAnimRunnable":Ljava/lang/Runnable;
    .restart local v4    # "time":J
    .restart local v12    # "animDuration":J
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/common/stage/Stage;->getContainerView()Landroid/view/View;

    move-result-object v14

    goto :goto_2

    .line 691
    .end local v2    # "startAnimRunnable":Ljava/lang/Runnable;
    .end local v4    # "time":J
    .end local v11    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v12    # "animDuration":J
    :cond_6
    const/4 v3, 0x0

    move-object/from16 v0, p1

    instance-of v6, v0, Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-direct {p0, v0, v3, v6, v1}, Lcom/android/launcher3/common/stage/StageManager;->transitAnimPrepare(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 692
    const/4 v3, 0x0

    move-object/from16 v0, p1

    instance-of v6, v0, Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-direct {p0, v0, v3, v6, v1}, Lcom/android/launcher3/common/stage/StageManager;->transitAnimStart(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 693
    const/4 v3, 0x0

    move-object/from16 v0, p1

    instance-of v6, v0, Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-direct {p0, v0, v3, v6, v1}, Lcom/android/launcher3/common/stage/StageManager;->transitAnimEnd(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 695
    const/4 v3, 0x0

    move-object/from16 v0, p1

    instance-of v6, v0, Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-direct {p0, v0, v3, v6, v1}, Lcom/android/launcher3/common/stage/StageManager;->transitAnimPrepare(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 696
    const/4 v3, 0x0

    move-object/from16 v0, p1

    instance-of v6, v0, Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-direct {p0, v0, v3, v6, v1}, Lcom/android/launcher3/common/stage/StageManager;->transitAnimStart(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 697
    const/4 v3, 0x0

    move-object/from16 v0, p1

    instance-of v6, v0, Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-direct {p0, v0, v3, v6, v1}, Lcom/android/launcher3/common/stage/StageManager;->transitAnimEnd(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 699
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v3

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6, v8, v9}, Lcom/android/launcher3/common/stage/Stage;->updateSystemUIForState(ILandroid/animation/AnimatorSet;J)V

    .line 702
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher3/common/stage/StageEntry;->notifyOnCompleteRunnables()V

    .line 704
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/common/stage/StageManager;->dumpStageView(Lcom/android/launcher3/common/stage/Stage;)V

    goto :goto_3
.end method

.method private restoreStack(Landroid/os/Bundle;Z)V
    .locals 5
    .param p1, "savedState"    # Landroid/os/Bundle;
    .param p2, "initView"    # Z

    .prologue
    .line 370
    const-string v2, "RUNTIME_STAGE_STACK"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 371
    .local v1, "restoredStack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    .line 372
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 373
    .local v0, "mode":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 374
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 380
    .end local v0    # "mode":Ljava/lang/Integer;
    :cond_0
    return-void

    .line 377
    .restart local v0    # "mode":Ljava/lang/Integer;
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4, p2}, Lcom/android/launcher3/common/stage/StageManager;->getStage(IZ)Lcom/android/launcher3/common/stage/Stage;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private restoreStagesOutOfStack(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 383
    const-string v3, "RUNTIME_STAGE_STAGES"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 384
    .local v1, "restoreStages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_2

    .line 385
    const/4 v2, 0x0

    .line 386
    .local v2, "stage":Lcom/android/launcher3/common/stage/Stage;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 387
    .local v0, "mode":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 388
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 391
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/launcher3/common/stage/StageManager;->getStage(IZ)Lcom/android/launcher3/common/stage/Stage;

    move-result-object v2

    .line 392
    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Lcom/android/launcher3/common/stage/Stage;->restoreState(Landroid/os/Bundle;Z)V

    .line 393
    iget-object v4, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 396
    .end local v0    # "mode":Ljava/lang/Integer;
    .end local v2    # "stage":Lcom/android/launcher3/common/stage/Stage;
    :cond_2
    return-void
.end method

.method private transitAnimEnd(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 1
    .param p1, "stage"    # Lcom/android/launcher3/common/stage/Stage;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z
    .param p4, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 749
    if-eqz p1, :cond_0

    .line 750
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/Stage;->getContainerView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/launcher3/common/stage/StageManager;->dispatchOnLauncherTransitionEnd(Landroid/view/View;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 752
    :cond_0
    return-void
.end method

.method private transitAnimPrepare(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 1
    .param p1, "stage"    # Lcom/android/launcher3/common/stage/Stage;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z
    .param p4, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 737
    if-eqz p1, :cond_0

    .line 738
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/Stage;->getContainerView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/launcher3/common/stage/StageManager;->dispatchOnLauncherTransitionPrepare(Landroid/view/View;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 740
    :cond_0
    return-void
.end method

.method private transitAnimStart(Lcom/android/launcher3/common/stage/Stage;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 1
    .param p1, "stage"    # Lcom/android/launcher3/common/stage/Stage;
    .param p2, "animated"    # Z
    .param p3, "toWorkspace"    # Z
    .param p4, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 743
    if-eqz p1, :cond_0

    .line 744
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/Stage;->getContainerView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/launcher3/common/stage/StageManager;->dispatchOnLauncherTransitionStart(Landroid/view/View;ZZLcom/android/launcher3/common/stage/StageEntry;)V

    .line 746
    :cond_0
    return-void
.end method


# virtual methods
.method public deliverDataWithOutStageChange(ILcom/android/launcher3/common/stage/StageEntry;)V
    .locals 3
    .param p1, "stageMode"    # I
    .param p2, "entry"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 579
    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    .line 580
    .local v0, "stage":Lcom/android/launcher3/common/stage/Stage;
    invoke-virtual {v0, p2}, Lcom/android/launcher3/common/stage/Stage;->setDataWithOutStageChange(Lcom/android/launcher3/common/stage/StageEntry;)V

    .line 581
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 535
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 536
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/Stage;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 538
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 817
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/Stage;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 819
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finishAllStage(Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 7
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    const/4 v6, 0x1

    .line 245
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-gt v0, v6, :cond_0

    .line 246
    const-string v0, "StageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid finishAllStage : stack="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :goto_0
    return-void

    .line 250
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->assertTransitInProgress()V

    .line 252
    if-nez p1, :cond_1

    .line 253
    new-instance p1, Lcom/android/launcher3/common/stage/StageEntry;

    .end local p1    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    invoke-direct {p1}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 255
    .restart local p1    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v0

    iput v0, p1, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    .line 256
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v0

    iput v0, p1, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    .line 257
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    iput v0, p1, Lcom/android/launcher3/common/stage/StageEntry;->stageCountOnFinishAllStage:I

    .line 258
    const-string v0, "StageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finishAllStage : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p1, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " <--- "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p1, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " , stack="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->cancelAnimation()V

    .line 262
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/stage/Stage;

    .line 263
    .local v2, "oldStage":Lcom/android/launcher3/common/stage/Stage;
    invoke-virtual {v2, p1}, Lcom/android/launcher3/common/stage/Stage;->onStageExit(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;

    move-result-object v4

    .line 264
    .local v4, "exitAnim":Landroid/animation/Animator;
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-le v0, v6, :cond_2

    .line 265
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/Stage;->onStageMovingToInitial(Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_1

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/Stage;->onStageEnter(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;

    move-result-object v3

    .line 269
    .local v3, "enterAnim":Landroid/animation/Animator;
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/stage/Stage;

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/common/stage/StageManager;->playTransitAnimation(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/Stage;Landroid/animation/Animator;Landroid/animation/Animator;Lcom/android/launcher3/common/stage/StageEntry;)V

    .line 271
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->dumpStack()V

    goto/16 :goto_0
.end method

.method public finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V
    .locals 4
    .param p1, "stageMode"    # I
    .param p2, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 163
    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    .line 164
    .local v0, "toStage":Lcom/android/launcher3/common/stage/Stage;
    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0, v0, p2}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    const-string v1, "StageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid finishStage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public finishStage(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 7
    .param p1, "stage"    # Lcom/android/launcher3/common/stage/Stage;
    .param p2, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    if-nez p1, :cond_1

    .line 173
    :cond_0
    const-string v0, "StageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid finishStage : stack="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_5

    .line 178
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->assertTransitInProgress()V

    .line 180
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/stage/Stage;

    .line 181
    .local v6, "currentStage":Lcom/android/launcher3/common/stage/Stage;
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/stage/Stage;

    .line 182
    .local v1, "nextStage":Lcom/android/launcher3/common/stage/Stage;
    if-nez p2, :cond_2

    .line 183
    new-instance p2, Lcom/android/launcher3/common/stage/StageEntry;

    .end local p2    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    invoke-direct {p2}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 186
    .restart local p2    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    :cond_2
    invoke-virtual {v6}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v0

    iput v0, p2, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    .line 187
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v0

    :goto_1
    iput v0, p2, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    .line 188
    const-string v0, "StageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finishStage : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p2, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " <- "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p2, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->cancelAnimation()V

    .line 192
    invoke-virtual {v6, p2}, Lcom/android/launcher3/common/stage/Stage;->onStageExit(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;

    move-result-object v4

    .line 193
    .local v4, "exitAnim":Landroid/animation/Animator;
    if-eqz v1, :cond_4

    invoke-virtual {v1, p2}, Lcom/android/launcher3/common/stage/Stage;->onStageEnter(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;

    move-result-object v3

    .local v3, "enterAnim":Landroid/animation/Animator;
    :goto_2
    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    .line 195
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/common/stage/StageManager;->playTransitAnimation(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/Stage;Landroid/animation/Animator;Landroid/animation/Animator;Lcom/android/launcher3/common/stage/StageEntry;)V

    .line 197
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->dumpStack()V

    goto :goto_0

    .line 187
    .end local v3    # "enterAnim":Landroid/animation/Animator;
    .end local v4    # "exitAnim":Landroid/animation/Animator;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 193
    .restart local v4    # "exitAnim":Landroid/animation/Animator;
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 199
    .end local v1    # "nextStage":Lcom/android/launcher3/common/stage/Stage;
    .end local v4    # "exitAnim":Landroid/animation/Animator;
    .end local v6    # "currentStage":Lcom/android/launcher3/common/stage/Stage;
    :cond_5
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->dumpStack()V

    .line 200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finishStage : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " , "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSecondTopStage()Lcom/android/launcher3/common/stage/Stage;
    .locals 4

    .prologue
    .line 406
    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 408
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/stage/Stage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :goto_0
    return-object v1

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mStack.size() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 413
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStackSize()I
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    return v0
.end method

.method public getStage(I)Lcom/android/launcher3/common/stage/Stage;
    .locals 1
    .param p1, "stageMode"    # I

    .prologue
    .line 584
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/stage/StageManager;->getStage(IZ)Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    return-object v0
.end method

.method public getTopStage()Lcom/android/launcher3/common/stage/Stage;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    const/4 v0, 0x0

    .line 402
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    goto :goto_0
.end method

.method public isRunningAnimation()Z
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToOverHome(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 3
    .param p1, "stage"    # Lcom/android/launcher3/common/stage/Stage;
    .param p2, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 275
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 276
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    if-eq v0, p1, :cond_2

    .line 279
    const-string v0, "StageManager"

    const-string v1, "can not move to over Home"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 283
    :cond_2
    if-nez p2, :cond_3

    .line 284
    new-instance p2, Lcom/android/launcher3/common/stage/StageEntry;

    .end local p2    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    invoke-direct {p2}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 286
    .restart local p2    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    :cond_3
    iput-boolean v2, p2, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 287
    invoke-virtual {p2, v1}, Lcom/android/launcher3/common/stage/StageEntry;->setInternalStateTo(I)V

    .line 288
    invoke-virtual {p0, p2}, Lcom/android/launcher3/common/stage/StageManager;->finishAllStage(Lcom/android/launcher3/common/stage/StageEntry;)V

    .line 290
    new-instance p2, Lcom/android/launcher3/common/stage/StageEntry;

    .end local p2    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    invoke-direct {p2}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 291
    .restart local p2    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    iput-boolean v2, p2, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 292
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 529
    const-string v0, "StageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult : result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/common/stage/Stage;->onActivityResult(IILandroid/content/Intent;)V

    .line 532
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mActivity:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 510
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManager;->mActivity:Lcom/android/launcher3/Launcher;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertMultiSelectCancelLog(Lcom/android/launcher3/Launcher;ZZ)V

    .line 513
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0
.end method

.method public onChangeColorForBg(Z)V
    .locals 4
    .param p1, "whiteBg"    # Z

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v1

    .line 543
    .local v1, "topStage":Lcom/android/launcher3/common/stage/Stage;
    if-eqz v1, :cond_0

    .line 544
    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/stage/Stage;->onChangeColorForBg(Z)V

    .line 547
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    .line 548
    .local v0, "stage":Lcom/android/launcher3/common/stage/Stage;
    if-eq v1, v0, :cond_1

    .line 549
    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/Stage;->onChangeColorForBg(Z)V

    goto :goto_0

    .line 552
    .end local v0    # "stage":Lcom/android/launcher3/common/stage/Stage;
    :cond_2
    return-void
.end method

.method public onChangeGrid()V
    .locals 4

    .prologue
    .line 568
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 569
    .local v1, "tobeNotify":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/stage/Stage;>;"
    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    .line 570
    .local v0, "stage":Lcom/android/launcher3/common/stage/Stage;
    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->onChangeGrid()V

    .line 571
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 573
    .end local v0    # "stage":Lcom/android/launcher3/common/stage/Stage;
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    .line 574
    .restart local v0    # "stage":Lcom/android/launcher3/common/stage/Stage;
    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->onChangeGrid()V

    goto :goto_1

    .line 576
    .end local v0    # "stage":Lcom/android/launcher3/common/stage/Stage;
    :cond_1
    return-void
.end method

.method public onCheckedChanged(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isChecked"    # Z

    .prologue
    .line 561
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    .line 562
    .local v0, "topStage":Lcom/android/launcher3/common/stage/Stage;
    if-eqz v0, :cond_0

    .line 563
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/common/stage/Stage;->onCheckedChanged(Landroid/view/View;Z)V

    .line 565
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/Stage;->onClick(Landroid/view/View;)Z

    .line 558
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 297
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 298
    .local v1, "tobeNotify":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/stage/Stage;>;"
    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    .line 299
    .local v0, "stage":Lcom/android/launcher3/common/stage/Stage;
    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/Stage;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 300
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 302
    .end local v0    # "stage":Lcom/android/launcher3/common/stage/Stage;
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    .line 303
    .restart local v0    # "stage":Lcom/android/launcher3/common/stage/Stage;
    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/Stage;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_1

    .line 305
    .end local v0    # "stage":Lcom/android/launcher3/common/stage/Stage;
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v1

    .line 486
    .local v1, "topStage":Lcom/android/launcher3/common/stage/Stage;
    if-eqz v1, :cond_0

    .line 487
    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->onDestroyActivity()V

    .line 488
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    .line 489
    .local v0, "stage":Lcom/android/launcher3/common/stage/Stage;
    if-eq v1, v0, :cond_1

    .line 490
    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->onDestroyActivity()V

    goto :goto_0

    .line 493
    .end local v0    # "stage":Lcom/android/launcher3/common/stage/Stage;
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 494
    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->clear()V

    .line 495
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v1

    .line 464
    .local v1, "topStage":Lcom/android/launcher3/common/stage/Stage;
    if-eqz v1, :cond_0

    .line 465
    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->onPauseActivity()V

    .line 466
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    .line 467
    .local v0, "stage":Lcom/android/launcher3/common/stage/Stage;
    if-eq v1, v0, :cond_1

    .line 468
    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->onPauseActivity()V

    goto :goto_0

    .line 471
    .end local v0    # "stage":Lcom/android/launcher3/common/stage/Stage;
    :cond_2
    return-void
.end method

.method public onPrepareOptionMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 498
    const/4 v0, 0x0

    .line 499
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 500
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/stage/Stage;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 501
    :cond_0
    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 308
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 309
    .local v1, "tobeRestored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/stage/Stage;>;"
    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    .line 310
    .local v0, "stage":Lcom/android/launcher3/common/stage/Stage;
    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/Stage;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 311
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 313
    .end local v0    # "stage":Lcom/android/launcher3/common/stage/Stage;
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    .line 314
    .restart local v0    # "stage":Lcom/android/launcher3/common/stage/Stage;
    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/Stage;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_1

    .line 316
    .end local v0    # "stage":Lcom/android/launcher3/common/stage/Stage;
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v1

    .line 451
    .local v1, "topStage":Lcom/android/launcher3/common/stage/Stage;
    if-eqz v1, :cond_0

    .line 452
    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->onResumeActivity()V

    .line 453
    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->getInternalState()I

    move-result v2

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/launcher3/common/stage/Stage;->updateSystemUIForState(ILandroid/animation/AnimatorSet;J)V

    .line 455
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    .line 456
    .local v0, "stage":Lcom/android/launcher3/common/stage/Stage;
    if-eq v1, v0, :cond_1

    .line 457
    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->onResumeActivity()V

    goto :goto_0

    .line 460
    .end local v0    # "stage":Lcom/android/launcher3/common/stage/Stage;
    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 319
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 320
    .local v3, "tobeSaved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/stage/Stage;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v0, "inStack":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/stage/Stage;

    .line 324
    .local v2, "stage":Lcom/android/launcher3/common/stage/Stage;
    invoke-virtual {v2}, Lcom/android/launcher3/common/stage/Stage;->isRestorable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 325
    invoke-virtual {v2}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    invoke-virtual {v2, p1}, Lcom/android/launcher3/common/stage/Stage;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 327
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 329
    :cond_0
    const-string v4, "StageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "does not restore remain-stages in stack : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    .end local v2    # "stage":Lcom/android/launcher3/common/stage/Stage;
    :cond_1
    const-string v4, "RUNTIME_STAGE_STACK"

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 336
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .local v1, "outStages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/stage/Stage;

    .line 338
    .restart local v2    # "stage":Lcom/android/launcher3/common/stage/Stage;
    invoke-virtual {v2}, Lcom/android/launcher3/common/stage/Stage;->isRestorable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 339
    invoke-virtual {v2}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    invoke-virtual {v2, p1}, Lcom/android/launcher3/common/stage/Stage;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_1

    .line 343
    .end local v2    # "stage":Lcom/android/launcher3/common/stage/Stage;
    :cond_3
    const-string v4, "RUNTIME_STAGE_STAGES"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 344
    const-string v4, "StageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saved stages : inStack "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , outStack"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v1

    .line 440
    .local v1, "topStage":Lcom/android/launcher3/common/stage/Stage;
    if-eqz v1, :cond_0

    .line 441
    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->onStartActivity()V

    .line 442
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    .line 443
    .local v0, "stage":Lcom/android/launcher3/common/stage/Stage;
    if-eq v1, v0, :cond_1

    .line 444
    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->onStartActivity()V

    goto :goto_0

    .line 447
    .end local v0    # "stage":Lcom/android/launcher3/common/stage/Stage;
    :cond_2
    return-void
.end method

.method public onStartForResult(I)V
    .locals 3
    .param p1, "requestCode"    # I

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    const-string v0, "StageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartForResult : result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/stage/Stage;->onStartForResult(I)V

    .line 523
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v1

    .line 475
    .local v1, "topStage":Lcom/android/launcher3/common/stage/Stage;
    if-eqz v1, :cond_0

    .line 476
    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->onStopActivity()V

    .line 477
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    .line 478
    .local v0, "stage":Lcom/android/launcher3/common/stage/Stage;
    if-eq v1, v0, :cond_1

    .line 479
    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->onStopActivity()V

    goto :goto_0

    .line 482
    .end local v0    # "stage":Lcom/android/launcher3/common/stage/Stage;
    :cond_2
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 349
    iget-object v3, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 350
    invoke-direct {p0, p1, v4}, Lcom/android/launcher3/common/stage/StageManager;->restoreStack(Landroid/os/Bundle;Z)V

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v2

    .line 353
    .local v2, "topMode":I
    iget-object v3, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/stage/Stage;

    .line 354
    .local v1, "stage":Lcom/android/launcher3/common/stage/Stage;
    iget-boolean v3, v1, Lcom/android/launcher3/common/stage/Stage;->mViewInitiated:Z

    if-nez v3, :cond_1

    .line 355
    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->initStageView()V

    .line 357
    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v3

    if-ne v2, v3, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v1, p1, v3}, Lcom/android/launcher3/common/stage/Stage;->restoreState(Landroid/os/Bundle;Z)V

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1

    .line 361
    .end local v1    # "stage":Lcom/android/launcher3/common/stage/Stage;
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/stage/StageManager;->restoreStagesOutOfStack(Landroid/os/Bundle;)V

    .line 363
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 364
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    iput-boolean v5, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 366
    iget-object v3, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/stage/Stage;

    invoke-virtual {v3}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v3

    invoke-virtual {p0, v3, v0}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    .line 367
    return-void
.end method

.method public setupStartupViews()V
    .locals 1

    .prologue
    .line 432
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->getStage(I)Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->initStageView()V

    .line 433
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->getStage(I)Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->initStageView()V

    .line 436
    :cond_0
    return-void
.end method

.method public startStage(ILcom/android/launcher3/common/stage/StageEntry;)V
    .locals 8
    .param p1, "stageMode"    # I
    .param p2, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v6

    .line 69
    .local v6, "topStage":Lcom/android/launcher3/common/stage/Stage;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 70
    const-string v0, "StageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startStage : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " is already on top"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->assertTransitInProgress()V

    .line 76
    if-nez p2, :cond_1

    .line 77
    new-instance p2, Lcom/android/launcher3/common/stage/StageEntry;

    .end local p2    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    invoke-direct {p2}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 80
    .restart local p2    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_1
    iput v0, p2, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    .line 81
    iput p1, p2, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    .line 82
    const-string v0, "StageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startStage : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p2, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " -> "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p2, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v3, 0x0

    .line 85
    .local v3, "enterAnim":Landroid/animation/Animator;
    const/4 v4, 0x0

    .line 86
    .local v4, "exitAnim":Landroid/animation/Animator;
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/stage/Stage;

    .line 87
    .local v1, "toStage":Lcom/android/launcher3/common/stage/Stage;
    if-nez v1, :cond_2

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/stage/StageManager;->getStage(I)Lcom/android/launcher3/common/stage/Stage;

    move-result-object v1

    .line 90
    :cond_2
    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->isViewInitiated()Z

    move-result v0

    if-nez v0, :cond_3

    .line 91
    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->initStageView()V

    .line 94
    :cond_3
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->cancelAnimation()V

    .line 96
    const/4 v2, 0x0

    .line 97
    .local v2, "fromStage":Lcom/android/launcher3/common/stage/Stage;
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 98
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "fromStage":Lcom/android/launcher3/common/stage/Stage;
    check-cast v2, Lcom/android/launcher3/common/stage/Stage;

    .line 99
    .restart local v2    # "fromStage":Lcom/android/launcher3/common/stage/Stage;
    invoke-virtual {v2, p2}, Lcom/android/launcher3/common/stage/Stage;->onStageExit(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;

    move-result-object v4

    .line 101
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-virtual {v1, p2}, Lcom/android/launcher3/common/stage/Stage;->onStageEnter(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;

    move-result-object v3

    move-object v0, p0

    move-object v5, p2

    .line 104
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/common/stage/StageManager;->playTransitAnimation(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/Stage;Landroid/animation/Animator;Landroid/animation/Animator;Lcom/android/launcher3/common/stage/StageEntry;)V

    .line 106
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->dumpStack()V

    goto/16 :goto_0

    .line 80
    .end local v1    # "toStage":Lcom/android/launcher3/common/stage/Stage;
    .end local v2    # "fromStage":Lcom/android/launcher3/common/stage/Stage;
    .end local v3    # "enterAnim":Landroid/animation/Animator;
    .end local v4    # "exitAnim":Landroid/animation/Animator;
    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/stage/Stage;

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v0

    goto :goto_1
.end method

.method public startStageByTray(I)V
    .locals 9
    .param p1, "stageMode"    # I

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v5

    .line 111
    .local v5, "topStage":Lcom/android/launcher3/common/stage/Stage;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v6

    if-ne v6, p1, :cond_0

    .line 112
    const-string v6, "StageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startStageByTray : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is already on top"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->assertTransitInProgress()V

    .line 117
    const/4 v1, 0x0

    .line 118
    .local v1, "enterAnim":Landroid/animation/Animator;
    const/4 v2, 0x0

    .line 119
    .local v2, "exitAnim":Landroid/animation/Animator;
    iget-object v6, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/stage/Stage;

    .line 120
    .local v4, "toStage":Lcom/android/launcher3/common/stage/Stage;
    if-nez v4, :cond_1

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/stage/StageManager;->getStage(I)Lcom/android/launcher3/common/stage/Stage;

    move-result-object v4

    .line 123
    :cond_1
    invoke-virtual {v4}, Lcom/android/launcher3/common/stage/Stage;->isViewInitiated()Z

    move-result v6

    if-nez v6, :cond_2

    .line 124
    invoke-virtual {v4}, Lcom/android/launcher3/common/stage/Stage;->initStageView()V

    .line 127
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->cancelAnimation()V

    .line 130
    iget-object v6, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 131
    iget-object v6, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/stage/Stage;

    .line 132
    .local v3, "fromStage":Lcom/android/launcher3/common/stage/Stage;
    invoke-virtual {v3}, Lcom/android/launcher3/common/stage/Stage;->onStageExitByTray()Landroid/animation/Animator;

    move-result-object v2

    .line 134
    .end local v3    # "fromStage":Lcom/android/launcher3/common/stage/Stage;
    :cond_3
    const/4 v6, 0x1

    if-ne p1, v6, :cond_6

    .line 135
    iget-object v6, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 139
    :goto_1
    invoke-virtual {v4}, Lcom/android/launcher3/common/stage/Stage;->onStageEnterByTray()Landroid/animation/Animator;

    move-result-object v1

    .line 141
    if-nez v1, :cond_4

    if-eqz v2, :cond_5

    .line 142
    :cond_4
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 144
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 145
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 146
    iput-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mCurrentAnimation:Landroid/animation/AnimatorSet;

    .line 148
    new-instance v6, Lcom/android/launcher3/common/stage/StageManager$1;

    invoke-direct {v6, p0, p1}, Lcom/android/launcher3/common/stage/StageManager$1;-><init>(Lcom/android/launcher3/common/stage/StageManager;I)V

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 157
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 159
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    :cond_5
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/launcher3/common/stage/StageManager;->mInProgressTransit:Z

    goto :goto_0

    .line 137
    :cond_6
    iget-object v6, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v6, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public switchInternalState(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0
    .param p1, "stage"    # Lcom/android/launcher3/common/stage/Stage;
    .param p2, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 241
    invoke-virtual {p1, p2}, Lcom/android/launcher3/common/stage/Stage;->switchState(Lcom/android/launcher3/common/stage/StageEntry;)V

    .line 242
    return-void
.end method

.method public switchStage(ILcom/android/launcher3/common/stage/StageEntry;)V
    .locals 7
    .param p1, "stageMode"    # I
    .param p2, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v5, 0x1

    if-gt v0, v5, :cond_0

    .line 206
    const-string v0, "StageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid switchStage : stack="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :goto_0
    return-void

    .line 210
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->assertTransitInProgress()V

    .line 212
    if-nez p2, :cond_1

    .line 213
    new-instance p2, Lcom/android/launcher3/common/stage/StageEntry;

    .end local p2    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    invoke-direct {p2}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 216
    .restart local p2    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v0

    iput v0, p2, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    .line 217
    iput p1, p2, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    .line 218
    const-string v0, "StageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "switchStage : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " <-> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStageMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/stage/Stage;

    .line 222
    .local v1, "toStage":Lcom/android/launcher3/common/stage/Stage;
    if-nez v1, :cond_2

    .line 223
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/stage/StageManager;->getStage(I)Lcom/android/launcher3/common/stage/Stage;

    move-result-object v1

    .line 225
    :cond_2
    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->isViewInitiated()Z

    move-result v0

    if-nez v0, :cond_3

    .line 226
    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/Stage;->initStageView()V

    .line 228
    :cond_3
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->cancelAnimation()V

    .line 230
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/stage/Stage;

    .line 231
    .local v2, "fromStage":Lcom/android/launcher3/common/stage/Stage;
    invoke-virtual {v2, p2}, Lcom/android/launcher3/common/stage/Stage;->onStageExit(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;

    move-result-object v4

    .line 232
    .local v4, "exitAnim":Landroid/animation/Animator;
    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager;->mStack:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-virtual {v1, p2}, Lcom/android/launcher3/common/stage/Stage;->onStageEnter(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;

    move-result-object v3

    .local v3, "enterAnim":Landroid/animation/Animator;
    move-object v0, p0

    move-object v5, p2

    .line 235
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/common/stage/StageManager;->playTransitAnimation(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/Stage;Landroid/animation/Animator;Landroid/animation/Animator;Lcom/android/launcher3/common/stage/StageEntry;)V

    .line 237
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/StageManager;->dumpStack()V

    goto :goto_0
.end method
