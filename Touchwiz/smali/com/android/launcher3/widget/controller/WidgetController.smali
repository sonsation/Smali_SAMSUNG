.class public Lcom/android/launcher3/widget/controller/WidgetController;
.super Lcom/android/launcher3/common/stage/Stage;
.source "WidgetController.java"

# interfaces
.implements Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/controller/WidgetController$FolderManager;
    }
.end annotation


# static fields
.field public static final KEY_WIDGET_FOLDER_ICON:Ljava/lang/String; = "KEY_WIDGET_FOLDER_ICON"

.field public static final KEY_WIDGET_FOLDER_MANAGER:Ljava/lang/String; = "KEY_WIDGET_FOLDER_MANAGER"

.field public static final KEY_WIDGET_FROM_SETTING:Ljava/lang/String; = "KEY_WIDGET_FROM_SETTING"

.field public static final REQUEST_CODE_VOICE_RECOGNITION:I = 0x12d

.field private static final RUNTIME_WIDGET_CURRENT_SCREEN:Ljava/lang/String; = "RUNTIME_WIDGET_CURRENT_SCREEN"

.field private static final RUNTIME_WIDGET_STATE:Ljava/lang/String; = "RUNTIME_WIDGET_STATE"

.field private static final TAG:Ljava/lang/String; = "WidgetController"


# instance fields
.field private mBgBlurAmount:F

.field private mBgDarkenAlpha:F

.field private mDataVersion:J

.field private mDragController:Lcom/android/launcher3/widget/controller/WidgetDragController;

.field private mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

.field private mFromHomeSetting:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsOnStage:Z

.field private mLoadingListener:Lcom/android/launcher3/widget/model/WidgetLoader$LoadListener;

.field private mNoResultText:Landroid/widget/TextView;

.field private mNoResultView:Landroid/widget/LinearLayout;

.field private mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mPagedView:Lcom/android/launcher3/widget/view/WidgetPagedView;

.field private mSearchTextViewKeyListener:Landroid/view/View$OnKeyListener;

.field private mSearchTextViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mStateActionListener:Lcom/android/launcher3/widget/controller/WidgetState$StateActionListener;

.field private mTransitAnimation:Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;

.field private mWhiteWallpaper:Z

.field private mWidgetLoader:Lcom/android/launcher3/widget/model/WidgetLoader;

.field private mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

.field private mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

.field private final mWidgetStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/launcher3/widget/controller/WidgetState$State;",
            "Lcom/android/launcher3/widget/controller/WidgetState;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Lcom/android/launcher3/common/stage/Stage;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetStateMap:Ljava/util/HashMap;

    .line 93
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mDataVersion:J

    .line 94
    iput-boolean v2, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mIsOnStage:Z

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mHandler:Landroid/os/Handler;

    .line 101
    iput-boolean v2, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWhiteWallpaper:Z

    .line 102
    iput-boolean v2, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mFromHomeSetting:Z

    .line 104
    new-instance v0, Lcom/android/launcher3/widget/controller/WidgetController$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/controller/WidgetController$1;-><init>(Lcom/android/launcher3/widget/controller/WidgetController;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mStateActionListener:Lcom/android/launcher3/widget/controller/WidgetState$StateActionListener;

    .line 144
    new-instance v0, Lcom/android/launcher3/widget/controller/WidgetController$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/controller/WidgetController$2;-><init>(Lcom/android/launcher3/widget/controller/WidgetController;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLoadingListener:Lcom/android/launcher3/widget/model/WidgetLoader$LoadListener;

    .line 334
    new-instance v0, Lcom/android/launcher3/widget/controller/WidgetController$4;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/controller/WidgetController$4;-><init>(Lcom/android/launcher3/widget/controller/WidgetController;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mSearchTextViewTouchListener:Landroid/view/View$OnTouchListener;

    .line 344
    new-instance v0, Lcom/android/launcher3/widget/controller/WidgetController$5;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/controller/WidgetController$5;-><init>(Lcom/android/launcher3/widget/controller/WidgetController;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mSearchTextViewKeyListener:Landroid/view/View$OnKeyListener;

    .line 527
    new-instance v0, Lcom/android/launcher3/widget/controller/WidgetController$7;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/controller/WidgetController$7;-><init>(Lcom/android/launcher3/widget/controller/WidgetController;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/widget/controller/WidgetController;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/widget/controller/WidgetController;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/controller/WidgetController;->openFolder(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/widget/controller/WidgetController;Lcom/android/launcher3/widget/controller/WidgetState$State;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/widget/controller/WidgetController;
    .param p1, "x1"    # Lcom/android/launcher3/widget/controller/WidgetState$State;
    .param p2, "x2"    # Z

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/controller/WidgetController;->changeState(Lcom/android/launcher3/widget/controller/WidgetState$State;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/controller/WidgetController;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/controller/WidgetController;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/widget/model/WidgetLoader;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/controller/WidgetController;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetLoader:Lcom/android/launcher3/widget/model/WidgetLoader;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/widget/view/WidgetSearchbar;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/controller/WidgetController;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/launcher3/widget/controller/WidgetController;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/controller/WidgetController;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/launcher3/widget/controller/WidgetController;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/controller/WidgetController;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mNoResultView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/widget/controller/WidgetDragController;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/controller/WidgetController;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mDragController:Lcom/android/launcher3/widget/controller/WidgetDragController;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/launcher3/widget/controller/WidgetController;Lcom/android/launcher3/widget/controller/WidgetDragController;)Lcom/android/launcher3/widget/controller/WidgetDragController;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/widget/controller/WidgetController;
    .param p1, "x1"    # Lcom/android/launcher3/widget/controller/WidgetDragController;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mDragController:Lcom/android/launcher3/widget/controller/WidgetDragController;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/Launcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/controller/WidgetController;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/widget/view/WidgetPagedView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/controller/WidgetController;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mPagedView:Lcom/android/launcher3/widget/view/WidgetPagedView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/widget/controller/WidgetController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/controller/WidgetController;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mIsOnStage:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/widget/controller/WidgetController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/controller/WidgetController;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/launcher3/widget/controller/WidgetController;->updateWidgetItems()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/launcher3/widget/controller/WidgetController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/controller/WidgetController;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/widget/controller/WidgetState$StateActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/controller/WidgetController;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mStateActionListener:Lcom/android/launcher3/widget/controller/WidgetState$StateActionListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher3/widget/controller/WidgetController;)Lcom/android/launcher3/widget/controller/WidgetState;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/controller/WidgetController;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    return-object v0
.end method

.method private changeColorForBg(Z)V
    .locals 2
    .param p1, "whiteBg"    # Z

    .prologue
    .line 643
    iput-boolean p1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWhiteWallpaper:Z

    .line 644
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    iget-boolean v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWhiteWallpaper:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/controller/WidgetState;->changeColorForBg(Z)V

    .line 645
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mPagedView:Lcom/android/launcher3/widget/view/WidgetPagedView;

    iget-boolean v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWhiteWallpaper:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->changeColorForBg(Z)V

    .line 646
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mNoResultText:Landroid/widget/TextView;

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 647
    return-void
.end method

.method private changeState(Lcom/android/launcher3/widget/controller/WidgetState$State;Z)V
    .locals 6
    .param p1, "toState"    # Lcom/android/launcher3/widget/controller/WidgetState$State;
    .param p2, "animate"    # Z

    .prologue
    .line 650
    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    invoke-virtual {v3}, Lcom/android/launcher3/widget/controller/WidgetState;->getState()Lcom/android/launcher3/widget/controller/WidgetState$State;

    move-result-object v3

    if-ne v3, p1, :cond_1

    .line 679
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    .line 655
    .local v1, "oldWidgetState":Lcom/android/launcher3/widget/controller/WidgetState;
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/controller/WidgetController;->getWidgetState(Lcom/android/launcher3/widget/controller/WidgetState$State;)Lcom/android/launcher3/widget/controller/WidgetState;

    move-result-object v2

    .line 657
    .local v2, "toWidgetState":Lcom/android/launcher3/widget/controller/WidgetState;
    const/4 v0, 0x0

    .line 658
    .local v0, "animSet":Landroid/animation/AnimatorSet;
    if-eqz p2, :cond_2

    .line 659
    new-instance v0, Landroid/animation/AnimatorSet;

    .end local v0    # "animSet":Landroid/animation/AnimatorSet;
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 662
    .restart local v0    # "animSet":Landroid/animation/AnimatorSet;
    :cond_2
    if-eqz v1, :cond_3

    .line 663
    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/widget/controller/WidgetState;->exit(Lcom/android/launcher3/widget/controller/WidgetState;Landroid/animation/AnimatorSet;)V

    .line 665
    :cond_3
    invoke-virtual {v2, v1, v0}, Lcom/android/launcher3/widget/controller/WidgetState;->enter(Lcom/android/launcher3/widget/controller/WidgetState;Landroid/animation/AnimatorSet;)V

    .line 666
    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mPagedView:Lcom/android/launcher3/widget/view/WidgetPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/widget/controller/WidgetState;->getState()Lcom/android/launcher3/widget/controller/WidgetState$State;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/widget/view/WidgetPagedView;->notifyChangeState(Lcom/android/launcher3/widget/controller/WidgetState$State;Lcom/android/launcher3/widget/controller/WidgetState$State;)V

    .line 667
    iput-object v2, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    .line 668
    if-eqz v0, :cond_4

    .line 669
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 672
    :cond_4
    sget-object v3, Lcom/android/launcher3/widget/controller/WidgetState$State;->SEARCH:Lcom/android/launcher3/widget/controller/WidgetState$State;

    if-ne p1, v3, :cond_5

    .line 673
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v3

    const/16 v4, 0x10

    .line 674
    invoke-virtual {v3, v4}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    goto :goto_0

    .line 675
    :cond_5
    sget-object v3, Lcom/android/launcher3/widget/controller/WidgetState$State;->NORMAL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    if-ne p1, v3, :cond_0

    .line 676
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v3

    const/4 v4, 0x7

    .line 677
    invoke-virtual {v3, v4}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    goto :goto_0
.end method

.method private createAnimationOnEnter(ZLcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 3
    .param p1, "animated"    # Z
    .param p2, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 705
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetView:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/android/launcher3/widget/controller/WidgetController$8;

    invoke-direct {v2, p0}, Lcom/android/launcher3/widget/controller/WidgetController$8;-><init>(Lcom/android/launcher3/widget/controller/WidgetController;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 711
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mTransitAnimation:Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->getEnterWidgetAnimation(ZLcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 712
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {p0}, Lcom/android/launcher3/widget/controller/WidgetController;->getContainerView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    .line 713
    return-object v0
.end method

.method private createAnimationOnExit(ZLcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 1
    .param p1, "animated"    # Z
    .param p2, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mTransitAnimation:Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;->getExitWidgetAnimation(ZLcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method private getWidgetState(Lcom/android/launcher3/widget/controller/WidgetState$State;)Lcom/android/launcher3/widget/controller/WidgetState;
    .locals 5
    .param p1, "state"    # Lcom/android/launcher3/widget/controller/WidgetState$State;

    .prologue
    const v4, 0x7f1100fa

    .line 682
    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetStateMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/controller/WidgetState;

    .line 683
    .local v1, "widgetState":Lcom/android/launcher3/widget/controller/WidgetState;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    if-eqz v3, :cond_0

    move-object v2, v1

    .line 701
    .end local v1    # "widgetState":Lcom/android/launcher3/widget/controller/WidgetState;
    .local v2, "widgetState":Lcom/android/launcher3/widget/controller/WidgetState;
    :goto_0
    return-object v2

    .line 685
    .end local v2    # "widgetState":Lcom/android/launcher3/widget/controller/WidgetState;
    .restart local v1    # "widgetState":Lcom/android/launcher3/widget/controller/WidgetState;
    :cond_0
    const/4 v0, 0x0

    .line 686
    .local v0, "titleBar":Landroid/view/View;
    sget-object v3, Lcom/android/launcher3/widget/controller/WidgetState$State;->SEARCH:Lcom/android/launcher3/widget/controller/WidgetState$State;

    if-ne p1, v3, :cond_2

    .line 687
    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 688
    new-instance v1, Lcom/android/launcher3/widget/controller/WidgetStateSearch;

    .end local v1    # "widgetState":Lcom/android/launcher3/widget/controller/WidgetState;
    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v1, v3, v0}, Lcom/android/launcher3/widget/controller/WidgetStateSearch;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 696
    .restart local v1    # "widgetState":Lcom/android/launcher3/widget/controller/WidgetState;
    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    if-nez v3, :cond_1

    instance-of v3, v0, Lcom/android/launcher3/widget/view/WidgetSearchbar;

    if-eqz v3, :cond_1

    .line 697
    check-cast v0, Lcom/android/launcher3/widget/view/WidgetSearchbar;

    .end local v0    # "titleBar":Landroid/view/View;
    iput-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    .line 699
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mStateActionListener:Lcom/android/launcher3/widget/controller/WidgetState$StateActionListener;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/widget/controller/WidgetState;->setActionListener(Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;)V

    .line 700
    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetStateMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 701
    .end local v1    # "widgetState":Lcom/android/launcher3/widget/controller/WidgetState;
    .restart local v2    # "widgetState":Lcom/android/launcher3/widget/controller/WidgetState;
    goto :goto_0

    .line 689
    .end local v2    # "widgetState":Lcom/android/launcher3/widget/controller/WidgetState;
    .restart local v0    # "titleBar":Landroid/view/View;
    .restart local v1    # "widgetState":Lcom/android/launcher3/widget/controller/WidgetState;
    :cond_2
    sget-object v3, Lcom/android/launcher3/widget/controller/WidgetState$State;->UNINSTALL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    if-ne p1, v3, :cond_3

    .line 690
    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetView:Landroid/widget/FrameLayout;

    const v4, 0x7f1100f9

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 691
    new-instance v1, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;

    .end local v1    # "widgetState":Lcom/android/launcher3/widget/controller/WidgetState;
    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v1, v3, v0}, Lcom/android/launcher3/widget/controller/WidgetStateUninstall;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .restart local v1    # "widgetState":Lcom/android/launcher3/widget/controller/WidgetState;
    goto :goto_1

    .line 693
    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetView:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 694
    new-instance v1, Lcom/android/launcher3/widget/controller/WidgetStateNormal;

    .end local v1    # "widgetState":Lcom/android/launcher3/widget/controller/WidgetState;
    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v1, v3, v0}, Lcom/android/launcher3/widget/controller/WidgetStateNormal;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .restart local v1    # "widgetState":Lcom/android/launcher3/widget/controller/WidgetState;
    goto :goto_1
.end method

.method private openFolder(Landroid/view/View;Z)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    .line 721
    instance-of v1, p1, Lcom/android/launcher3/widget/view/WidgetItemView;

    if-nez v1, :cond_0

    .line 730
    :goto_0
    return-void

    .line 724
    :cond_0
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 725
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    const-string v1, "KEY_WIDGET_FOLDER_ICON"

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 726
    const-string v2, "KEY_WIDGET_FOLDER_MANAGER"

    new-instance v3, Lcom/android/launcher3/widget/controller/WidgetController$FolderManager;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    invoke-direct {v3, p0, v1}, Lcom/android/launcher3/widget/controller/WidgetController$FolderManager;-><init>(Lcom/android/launcher3/widget/controller/WidgetController;Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 727
    const-string v1, "KEY_WIDGET_FROM_SETTING"

    iget-boolean v2, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mFromHomeSetting:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 728
    iput-boolean p2, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 729
    invoke-virtual {p0}, Lcom/android/launcher3/widget/controller/WidgetController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_0
.end method

.method private setPreDrawListener()V
    .locals 2

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/widget/controller/WidgetController$6;

    invoke-direct {v1, p0}, Lcom/android/launcher3/widget/controller/WidgetController$6;-><init>(Lcom/android/launcher3/widget/controller/WidgetController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 525
    return-void
.end method

.method private updateNoSearchResultView(Z)V
    .locals 5
    .param p1, "isVisible"    # Z

    .prologue
    .line 543
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 544
    .local v1, "visible":I
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 545
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 546
    .local v0, "softInputParam":I
    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mNoResultView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-eq v3, v1, :cond_0

    .line 547
    if-nez v1, :cond_2

    .line 548
    and-int/lit8 v0, v0, -0x11

    .line 549
    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mNoResultView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 554
    :goto_1
    invoke-virtual {p0, v2, v0}, Lcom/android/launcher3/widget/controller/WidgetController;->updateSoftInputParam(Landroid/view/Window;I)V

    .line 555
    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mNoResultView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 557
    :cond_0
    return-void

    .line 543
    .end local v0    # "softInputParam":I
    .end local v1    # "visible":I
    .end local v2    # "window":Landroid/view/Window;
    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    .line 551
    .restart local v0    # "softInputParam":I
    .restart local v1    # "visible":I
    .restart local v2    # "window":Landroid/view/Window;
    :cond_2
    or-int/lit8 v0, v0, 0x10

    .line 552
    iget-object v3, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mNoResultView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_1
.end method

.method private updateWidgetItems()Z
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 490
    iget-object v7, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetLoader:Lcom/android/launcher3/widget/model/WidgetLoader;

    invoke-virtual {v7}, Lcom/android/launcher3/widget/model/WidgetLoader;->getDataVersion()J

    move-result-wide v0

    .line 491
    .local v0, "dataVersion":J
    iget-wide v8, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mDataVersion:J

    cmp-long v7, v8, v0

    if-gez v7, :cond_1

    move v3, v5

    .line 492
    .local v3, "invalidate":Z
    :goto_0
    iget-object v7, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetLoader:Lcom/android/launcher3/widget/model/WidgetLoader;

    invoke-virtual {v7}, Lcom/android/launcher3/widget/model/WidgetLoader;->getWidgetItems()Ljava/util/List;

    move-result-object v4

    .line 493
    .local v4, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz v3, :cond_4

    .line 494
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 495
    :cond_0
    iget-object v7, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetLoader:Lcom/android/launcher3/widget/model/WidgetLoader;

    invoke-virtual {v7, v10, v10, v5}, Lcom/android/launcher3/widget/model/WidgetLoader;->notifyDirty([Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V

    .line 496
    const-string v5, "WidgetController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifyDirty becuase no items, dataVersion 1 : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :goto_1
    return v6

    .end local v3    # "invalidate":Z
    .end local v4    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1
    move v3, v6

    .line 491
    goto :goto_0

    .line 500
    .restart local v3    # "invalidate":Z
    .restart local v4    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_2
    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mPagedView:Lcom/android/launcher3/widget/view/WidgetPagedView;

    iget-object v6, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetLoader:Lcom/android/launcher3/widget/model/WidgetLoader;

    invoke-virtual {v6}, Lcom/android/launcher3/widget/model/WidgetLoader;->getWidgetItems()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/widget/view/WidgetPagedView;->setWidgetItems(Ljava/util/List;)V

    .line 501
    iput-wide v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mDataVersion:J

    .line 502
    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetLoader:Lcom/android/launcher3/widget/model/WidgetLoader;

    invoke-virtual {v5}, Lcom/android/launcher3/widget/model/WidgetLoader;->hasUninstallApps()Z

    move-result v2

    .line 503
    .local v2, "hasUninstallApps":Z
    sget-object v5, Lcom/android/launcher3/widget/controller/WidgetState$State;->NORMAL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    invoke-direct {p0, v5}, Lcom/android/launcher3/widget/controller/WidgetController;->getWidgetState(Lcom/android/launcher3/widget/controller/WidgetState$State;)Lcom/android/launcher3/widget/controller/WidgetState;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/launcher3/widget/controller/WidgetState;->setHasInstallableApp(Z)V

    .end local v2    # "hasUninstallApps":Z
    :cond_3
    move v6, v3

    .line 512
    goto :goto_1

    .line 505
    :cond_4
    const-wide/16 v8, -0x1

    cmp-long v7, v0, v8

    if-eqz v7, :cond_5

    if-eqz v4, :cond_5

    .line 506
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 507
    :cond_5
    const-string v7, "WidgetController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notifyDirty becuase no items, dataVersion 2 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v7, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetLoader:Lcom/android/launcher3/widget/model/WidgetLoader;

    invoke-virtual {v7, v10, v10, v5}, Lcom/android/launcher3/widget/model/WidgetLoader;->notifyDirty([Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V

    goto :goto_1
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 618
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 619
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    move v0, v1

    .line 636
    :goto_0
    return v0

    .line 621
    :sswitch_0
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/controller/WidgetState;->showPopupMenu()Z

    move-result v0

    goto :goto_0

    .line 624
    :sswitch_1
    sget-object v2, Lcom/android/launcher3/widget/controller/WidgetState$State;->SEARCH:Lcom/android/launcher3/widget/controller/WidgetState$State;

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/widget/controller/WidgetController;->changeState(Lcom/android/launcher3/widget/controller/WidgetState$State;Z)V

    .line 625
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/controller/WidgetState;->setFocusToSearchEditText()V

    goto :goto_0

    .line 629
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 630
    sget-object v2, Lcom/android/launcher3/widget/controller/WidgetState$State;->SEARCH:Lcom/android/launcher3/widget/controller/WidgetState$State;

    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/widget/controller/WidgetController;->changeState(Lcom/android/launcher3/widget/controller/WidgetState$State;Z)V

    .line 631
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/controller/WidgetState;->setFocusToSearchEditText()V

    goto :goto_0

    .line 619
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x52 -> :sswitch_0
        0x54 -> :sswitch_1
    .end sparse-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 769
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 770
    .local v0, "text":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 771
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 772
    const/4 v1, 0x1

    return v1
.end method

.method protected getBackgroundBlurAmountForState(I)F
    .locals 1
    .param p1, "internalState"    # I

    .prologue
    .line 476
    iget v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mBgBlurAmount:F

    return v0
.end method

.method protected getBackgroundDimAlphaForState(I)F
    .locals 1
    .param p1, "internalState"    # I

    .prologue
    .line 481
    iget v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mBgDarkenAlpha:F

    return v0
.end method

.method protected getBackgroundImageAlphaForState(I)F
    .locals 1
    .param p1, "internalState"    # I

    .prologue
    .line 486
    const/4 v0, 0x0

    return v0
.end method

.method public getContainerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getDragSourceForLongKey()Lcom/android/launcher3/common/drag/DragSource;
    .locals 1

    .prologue
    .line 331
    invoke-super {p0}, Lcom/android/launcher3/common/stage/Stage;->getDragSourceForLongKey()Lcom/android/launcher3/common/drag/DragSource;

    move-result-object v0

    return-object v0
.end method

.method protected getInternalState()I
    .locals 1

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/android/launcher3/widget/controller/WidgetController;->getState()Lcom/android/launcher3/widget/controller/WidgetState$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/widget/controller/WidgetState$State;->ordinal()I

    move-result v0

    return v0
.end method

.method public getState()Lcom/android/launcher3/widget/controller/WidgetState$State;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/controller/WidgetState;->getState()Lcom/android/launcher3/widget/controller/WidgetState$State;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/launcher3/widget/controller/WidgetState$State;->NONE:Lcom/android/launcher3/widget/controller/WidgetState$State;

    goto :goto_0
.end method

.method public initStageView()V
    .locals 5

    .prologue
    const/high16 v4, 0x42c80000    # 100.0f

    const/4 v3, 0x0

    .line 292
    iget-boolean v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mViewInitiated:Z

    if-eqz v1, :cond_0

    .line 312
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    .line 295
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iput v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mBgBlurAmount:F

    .line 296
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0046

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iput v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mBgDarkenAlpha:F

    .line 297
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f1100bd

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetView:Landroid/widget/FrameLayout;

    .line 298
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 299
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    .line 300
    .local v0, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 301
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetView:Landroid/widget/FrameLayout;

    iget v2, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 306
    .end local v0    # "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f1100fe

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/view/WidgetPagedView;

    iput-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mPagedView:Lcom/android/launcher3/widget/view/WidgetPagedView;

    .line 307
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f1100fc

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mNoResultView:Landroid/widget/LinearLayout;

    .line 308
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f1100fd

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mNoResultText:Landroid/widget/TextView;

    .line 309
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mPagedView:Lcom/android/launcher3/widget/view/WidgetPagedView;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->setListener(Lcom/android/launcher3/widget/view/WidgetPagedView$Listener;)V

    .line 310
    new-instance v1, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;

    iget-object v2, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetView:Landroid/widget/FrameLayout;

    invoke-direct {v1, v2}, Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mTransitAnimation:Lcom/android/launcher3/widget/controller/WidgetTransitAnimation;

    .line 311
    invoke-super {p0}, Lcom/android/launcher3/common/stage/Stage;->initStageView()V

    goto/16 :goto_0

    .line 303
    .restart local v0    # "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetView:Landroid/widget/FrameLayout;

    iget v2, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_1
.end method

.method public isWhiteWallpaper()Z
    .locals 1

    .prologue
    .line 613
    iget-boolean v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWhiteWallpaper:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 448
    const/4 v1, 0x0

    .line 449
    .local v1, "query":Ljava/lang/String;
    const/16 v2, 0x12d

    if-ne p1, v2, :cond_0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 450
    const-string v2, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 452
    .local v0, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 453
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "query":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 456
    .end local v0    # "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1    # "query":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/widget/controller/WidgetState;->onVoiceSearch(Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method public onBackPressed()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 593
    iget-boolean v2, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mFromHomeSetting:Z

    if-eqz v2, :cond_0

    .line 594
    iget-object v2, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->startHomeSettingActivity()V

    .line 595
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mFromHomeSetting:Z

    .line 596
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    .line 597
    .local v0, "data":Lcom/android/launcher3/common/stage/StageEntry;
    const-string v2, "KEY_WIDGET_FROM_SETTING"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    .line 598
    invoke-virtual {p0}, Lcom/android/launcher3/widget/controller/WidgetController;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    .line 601
    .end local v0    # "data":Lcom/android/launcher3/common/stage/StageEntry;
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/controller/WidgetState;->onBackPressed()Z

    move-result v1

    goto :goto_0
.end method

.method public onChangeColorForBg(Z)V
    .locals 1
    .param p1, "whiteBg"    # Z

    .prologue
    .line 606
    iget-boolean v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mIsOnStage:Z

    if-eqz v0, :cond_0

    .line 607
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/controller/WidgetController;->changeColorForBg(Z)V

    .line 609
    :cond_0
    return-void
.end method

.method public onConfigurationChangedIfNeeded(Z)V
    .locals 4
    .param p1, "changedOrientation"    # Z

    .prologue
    const/4 v3, 0x0

    .line 742
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    .line 743
    .local v0, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 744
    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 745
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetView:Landroid/widget/FrameLayout;

    iget v2, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 751
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/launcher3/widget/controller/WidgetState$State;->NORMAL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    invoke-direct {p0, v1}, Lcom/android/launcher3/widget/controller/WidgetController;->getWidgetState(Lcom/android/launcher3/widget/controller/WidgetState$State;)Lcom/android/launcher3/widget/controller/WidgetState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/widget/controller/WidgetState;->onConfigurationChangedIfNeeded()V

    .line 752
    sget-object v1, Lcom/android/launcher3/widget/controller/WidgetState$State;->UNINSTALL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    invoke-direct {p0, v1}, Lcom/android/launcher3/widget/controller/WidgetController;->getWidgetState(Lcom/android/launcher3/widget/controller/WidgetState$State;)Lcom/android/launcher3/widget/controller/WidgetState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/widget/controller/WidgetState;->onConfigurationChangedIfNeeded()V

    .line 753
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mPagedView:Lcom/android/launcher3/widget/view/WidgetPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->onConfigurationChangedIfNeeded()V

    .line 754
    return-void

    .line 747
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetView:Landroid/widget/FrameLayout;

    iget v2, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->navigationBarHeight:I

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_0
.end method

.method public onDestroyActivity()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetLoader:Lcom/android/launcher3/widget/model/WidgetLoader;

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLoadingListener:Lcom/android/launcher3/widget/model/WidgetLoader$LoadListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/model/WidgetLoader;->removeLoadListener(Lcom/android/launcher3/widget/model/WidgetLoader$LoadListener;)V

    .line 327
    return-void
.end method

.method public onPagedViewFocusUp()V
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/controller/WidgetState;->setFocus()V

    .line 589
    return-void
.end method

.method public onPagedViewTouchIntercepted()V
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/controller/WidgetState;->onPagedViewTouchIntercepted()V

    .line 579
    return-void
.end method

.method public onPauseActivity()V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mPagedView:Lcom/android/launcher3/widget/view/WidgetPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->onPause()V

    .line 322
    return-void
.end method

.method public onResumeActivity()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mPagedView:Lcom/android/launcher3/widget/view/WidgetPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/view/WidgetPagedView;->onResume()V

    .line 317
    return-void
.end method

.method public onSearchResult(Z)V
    .locals 1
    .param p1, "found"    # Z

    .prologue
    .line 583
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/launcher3/widget/controller/WidgetController;->updateNoSearchResultView(Z)V

    .line 584
    return-void

    .line 583
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStageEnter(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 5
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 365
    iput-boolean v4, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mIsOnStage:Z

    .line 366
    const-string v1, "KEY_WIDGET_FROM_SETTING"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mFromHomeSetting:Z

    .line 368
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    if-eq v1, v4, :cond_1

    .line 369
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/controller/WidgetState;->getState()Lcom/android/launcher3/widget/controller/WidgetState$State;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/launcher3/widget/controller/WidgetController;->changeState(Lcom/android/launcher3/widget/controller/WidgetState$State;Z)V

    .line 374
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/controller/WidgetState;->onStageEnter()V

    .line 375
    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/widget/controller/WidgetController;->changeColorForBg(Z)V

    .line 376
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mPagedView:Lcom/android/launcher3/widget/view/WidgetPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/view/WidgetPagedView;->updateCellSpan()V

    .line 377
    invoke-direct {p0}, Lcom/android/launcher3/widget/controller/WidgetController;->setPreDrawListener()V

    .line 379
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    if-eqz v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    iget-object v2, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mSearchTextViewKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->setOnSearchTextViewKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 381
    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    iget-object v2, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mSearchTextViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->setOnSearchTextViewTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 384
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v1

    const/4 v2, 0x7

    .line 385
    invoke-virtual {v1, v2}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    .line 387
    iget-boolean v0, p1, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    .line 388
    .local v0, "animate":Z
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/widget/controller/WidgetController;->createAnimationOnEnter(ZLcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;

    move-result-object v1

    return-object v1

    .line 371
    .end local v0    # "animate":Z
    :cond_1
    sget-object v1, Lcom/android/launcher3/widget/controller/WidgetState$State;->NORMAL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    invoke-direct {p0, v1, v3}, Lcom/android/launcher3/widget/controller/WidgetController;->changeState(Lcom/android/launcher3/widget/controller/WidgetState$State;Z)V

    goto :goto_0
.end method

.method protected onStageEnterByTray()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 424
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onStageExit(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 8
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 393
    iput-boolean v4, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mIsOnStage:Z

    .line 394
    invoke-direct {p0, v4}, Lcom/android/launcher3/widget/controller/WidgetController;->updateNoSearchResultView(Z)V

    .line 396
    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    if-eqz v5, :cond_0

    .line 397
    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    invoke-virtual {v5}, Lcom/android/launcher3/widget/controller/WidgetState;->onStageExit()V

    .line 399
    :cond_0
    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mPagedView:Lcom/android/launcher3/widget/view/WidgetPagedView;

    invoke-virtual {v5, v4, v4}, Lcom/android/launcher3/widget/view/WidgetPagedView;->prepareInOut(IZ)V

    .line 401
    iget v1, p1, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    .line 402
    .local v1, "toStage":I
    iget-boolean v5, p1, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p1, Lcom/android/launcher3/common/stage/StageEntry;->broughtToHome:Z

    if-nez v5, :cond_3

    move v0, v3

    .line 403
    .local v0, "animate":Z
    :goto_0
    iget v5, p1, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    if-ne v5, v3, :cond_4

    .line 404
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    move v2, v3

    .line 406
    .local v2, "widgetDrag":Z
    :goto_1
    if-ne v1, v3, :cond_1

    .line 407
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v5

    if-nez v5, :cond_5

    .line 408
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/logging/SALogging;->insertCloseWidgetLog(Ljava/lang/String;)V

    .line 414
    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    if-eqz v5, :cond_2

    .line 415
    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v5, v7}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->setOnSearchTextViewKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 416
    iget-object v5, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v5, v7}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->setOnSearchTextViewTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 418
    :cond_2
    const-string v5, "WidgetController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "animate : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    if-eqz v0, :cond_6

    if-nez v2, :cond_6

    :goto_3
    invoke-direct {p0, v3, p1}, Lcom/android/launcher3/widget/controller/WidgetController;->createAnimationOnExit(ZLcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;

    move-result-object v3

    return-object v3

    .end local v0    # "animate":Z
    .end local v2    # "widgetDrag":Z
    :cond_3
    move v0, v4

    .line 402
    goto :goto_0

    .restart local v0    # "animate":Z
    :cond_4
    move v2, v4

    .line 404
    goto :goto_1

    .line 409
    .restart local v2    # "widgetDrag":Z
    :cond_5
    invoke-virtual {p1}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v5

    if-ne v5, v3, :cond_1

    .line 410
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    const-string v6, "2"

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/logging/SALogging;->insertCloseWidgetLog(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move v3, v4

    .line 419
    goto :goto_3
.end method

.method protected onStageExitByTray()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 429
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onStageMovingToInitial(Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 2
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 439
    iget v0, p1, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 440
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mFromHomeSetting:Z

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetView:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 443
    return-void
.end method

.method public onWidgetItemClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 566
    iget-boolean v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mIsOnStage:Z

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/controller/WidgetState;->onWidgetItemClick(Landroid/view/View;)V

    .line 569
    :cond_0
    return-void
.end method

.method public onWidgetItemLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetState:Lcom/android/launcher3/widget/controller/WidgetState;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/controller/WidgetState;->onWidgetItemLongClick(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public searchBarHasFocus()Z
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetSearchbar:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 779
    const/4 v0, 0x1

    .line 781
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDataWithOutStageChange(Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 2
    .param p1, "data"    # Lcom/android/launcher3/common/stage/StageEntry;

    .prologue
    .line 734
    if-eqz p1, :cond_0

    .line 735
    const-string v0, "KEY_WIDGET_FROM_SETTING"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mFromHomeSetting:Z

    .line 736
    sget-object v0, Lcom/android/launcher3/widget/controller/WidgetState$State;->NORMAL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/widget/controller/WidgetController;->changeState(Lcom/android/launcher3/widget/controller/WidgetState$State;Z)V

    .line 738
    :cond_0
    return-void
.end method

.method public setup()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getWidgetsLoader()Lcom/android/launcher3/widget/model/WidgetLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetLoader:Lcom/android/launcher3/widget/model/WidgetLoader;

    .line 168
    iget-object v0, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mWidgetLoader:Lcom/android/launcher3/widget/model/WidgetLoader;

    iget-object v1, p0, Lcom/android/launcher3/widget/controller/WidgetController;->mLoadingListener:Lcom/android/launcher3/widget/model/WidgetLoader$LoadListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/model/WidgetLoader;->setLoadListener(Lcom/android/launcher3/widget/model/WidgetLoader$LoadListener;)V

    .line 170
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/widget/controller/WidgetController$3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/widget/controller/WidgetController$3;-><init>(Lcom/android/launcher3/widget/controller/WidgetController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/proxy/LauncherProxy;->setWidgetProxyCallbacks(Lcom/android/launcher3/proxy/WidgetProxyCallbacks;)V

    .line 288
    return-void
.end method

.method protected supportNavigationBarForState(I)Z
    .locals 1
    .param p1, "internalState"    # I

    .prologue
    .line 471
    const/4 v0, 0x1

    return v0
.end method

.method protected supportStatusBarForState(I)Z
    .locals 1
    .param p1, "internalState"    # I

    .prologue
    .line 466
    const/4 v0, 0x1

    return v0
.end method
