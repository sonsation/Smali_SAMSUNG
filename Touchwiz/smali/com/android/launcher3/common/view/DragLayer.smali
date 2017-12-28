.class public Lcom/android/launcher3/common/view/DragLayer;
.super Lcom/android/launcher3/common/base/view/InsettableFrameLayout;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/view/DragLayer$TouchCompleteListener;,
        Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    }
.end annotation


# static fields
.field public static final ANIMATION_END_DISAPPEAR:I = 0x0

.field public static final ANIMATION_END_REMAIN_VISIBLE:I = 0x2

.field public static final ICON_FLICKING_DURATION:I = 0x1e0

.field private static final SCRIM_COLOR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DragLayer"


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mAnchorViewInitialRect:Landroid/graphics/Rect;

.field private mAnchorViewInitialScrollX:I

.field private mBackgroundAlpha:F

.field private mBackgroundImage:Landroid/widget/ImageView;

.field private mBackgroundImageAlpha:F

.field private mChildCountOnLastUpdate:I

.field private final mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

.field private mDropAnim:Landroid/animation/ValueAnimator;

.field private mDropView:Lcom/android/launcher3/common/drag/DragView;

.field private final mHitRect:Landroid/graphics/Rect;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

.field private final mTmpXY:[I

.field private mTopViewIndex:I

.field private mTouchCompleteListener:Lcom/android/launcher3/common/view/DragLayer$TouchCompleteListener;

.field private mXDown:I

.field private mYDown:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/base/view/InsettableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mTmpXY:[I

    .line 85
    iput-object v2, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    .line 86
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 87
    iput-object v2, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropView:Lcom/android/launcher3/common/drag/DragView;

    .line 88
    iput-object v2, p0, Lcom/android/launcher3/common/view/DragLayer;->mAnchorViewInitialRect:Landroid/graphics/Rect;

    .line 89
    iput v3, p0, Lcom/android/launcher3/common/view/DragLayer;->mAnchorViewInitialScrollX:I

    .line 90
    iput-object v2, p0, Lcom/android/launcher3/common/view/DragLayer;->mAnchorView:Landroid/view/View;

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mChildCountOnLastUpdate:I

    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mBackgroundAlpha:F

    .line 101
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mBackgroundImageAlpha:F

    .line 102
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mHitRect:Landroid/graphics/Rect;

    .line 114
    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/view/DragLayer;->setMotionEventSplittingEnabled(Z)V

    .line 115
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/view/DragLayer;->setChildrenDrawingOrderEnabled(Z)V

    .line 116
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/view/DragLayer;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/view/DragLayer;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mAnchorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/view/DragLayer;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/view/DragLayer;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mAnchorViewInitialRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher3/common/view/DragLayer;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/view/DragLayer;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/launcher3/common/view/DragLayer;->mAnchorViewInitialRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/launcher3/common/view/DragLayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/view/DragLayer;

    .prologue
    .line 62
    iget v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mAnchorViewInitialScrollX:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/launcher3/common/view/DragLayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/view/DragLayer;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/android/launcher3/common/view/DragLayer;->mAnchorViewInitialScrollX:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/launcher3/common/view/DragLayer;)Lcom/android/launcher3/common/drag/DragView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/view/DragLayer;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropView:Lcom/android/launcher3/common/drag/DragView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/common/view/DragLayer;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/view/DragLayer;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/launcher3/common/view/DragLayer;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/view/DragLayer;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/launcher3/common/view/DragLayer;)Lcom/android/launcher3/common/drag/DragManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/view/DragLayer;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    return-object v0
.end method

.method private animateExtraDragView(Lcom/android/launcher3/common/drag/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "view"    # Lcom/android/launcher3/common/drag/DragView;
    .param p2, "updateCb"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/animation/TimeInterpolator;
    .param p5, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 814
    invoke-virtual {p1}, Lcom/android/launcher3/common/drag/DragView;->cancelAnimation()V

    .line 815
    invoke-virtual {p1}, Lcom/android/launcher3/common/drag/DragView;->resetLayoutParams()V

    .line 818
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 819
    .local v0, "dropAnim":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 820
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 821
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 822
    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 823
    new-instance v1, Lcom/android/launcher3/common/view/DragLayer$5;

    invoke-direct {v1, p0, p5, p1}, Lcom/android/launcher3/common/view/DragLayer$5;-><init>(Lcom/android/launcher3/common/view/DragLayer;Ljava/lang/Runnable;Lcom/android/launcher3/common/drag/DragView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 834
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 835
    return-void

    .line 821
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private handleTouchDown(Landroid/view/MotionEvent;Z)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "intercept"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 136
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 137
    .local v1, "hitRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v3, v7

    .line 138
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v4, v7

    .line 140
    .local v4, "y":I
    iget-object v7, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    if-eqz v7, :cond_1

    .line 141
    iget-object v7, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    invoke-virtual {v7, v1}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->getHitRect(Landroid/graphics/Rect;)V

    .line 142
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 143
    iget-object v7, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    iget-object v8, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    invoke-virtual {v8}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->getLeft()I

    move-result v8

    sub-int v8, v3, v8

    iget-object v9, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    .line 144
    invoke-virtual {v9}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->getTop()I

    move-result v9

    sub-int v9, v4, v9

    .line 143
    invoke-virtual {v7, v8, v9}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->beginResizeIfPointInRegion(II)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 145
    iget-object v6, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    invoke-virtual {v6}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->onTouchDown()V

    .line 146
    iput v3, p0, Lcom/android/launcher3/common/view/DragLayer;->mXDown:I

    .line 147
    iput v4, p0, Lcom/android/launcher3/common/view/DragLayer;->mYDown:I

    .line 148
    invoke-virtual {p0, v5}, Lcom/android/launcher3/common/view/DragLayer;->requestDisallowInterceptTouchEvent(Z)V

    .line 183
    :cond_0
    :goto_0
    return v5

    .line 154
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportDeepShortcut()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 156
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherAppState;->getShortcutManager()Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;

    move-result-object v2

    .line 157
    .local v2, "shortcutManager":Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;
    iget-object v7, p0, Lcom/android/launcher3/common/view/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v7}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->getOpenShortcutsContainer(Landroid/content/Context;)Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;

    move-result-object v0

    .line 158
    .local v0, "deepShortcutsContainer":Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;
    if-eqz v0, :cond_3

    .line 159
    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/common/view/DragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v6

    .line 161
    goto :goto_0

    .line 169
    :cond_2
    iget-object v7, p0, Lcom/android/launcher3/common/view/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v7}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->closeShortcutsContainer(Landroid/content/Context;)V

    .line 172
    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->getDeferredDragIcon()Lcom/android/launcher3/common/view/IconView;

    move-result-object v7

    invoke-virtual {p0, v7, p1}, Lcom/android/launcher3/common/view/DragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v5, v6

    goto :goto_0

    .line 178
    .end local v0    # "deepShortcutsContainer":Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;
    .end local v2    # "shortcutManager":Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;
    :cond_3
    if-nez p2, :cond_4

    iget-object v7, p0, Lcom/android/launcher3/common/view/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->finishStageOnTouchOutSide()Z

    move-result v7

    if-nez v7, :cond_0

    :cond_4
    move v5, v6

    .line 183
    goto :goto_0
.end method

.method private updateChildIndices()V
    .locals 3

    .prologue
    .line 883
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher3/common/view/DragLayer;->mTopViewIndex:I

    .line 884
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/DragLayer;->getChildCount()I

    move-result v0

    .line 885
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 886
    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/view/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/common/drag/DragView;

    if-eqz v2, :cond_0

    .line 887
    iput v1, p0, Lcom/android/launcher3/common/view/DragLayer;->mTopViewIndex:I

    .line 885
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 890
    :cond_1
    iput v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mChildCountOnLastUpdate:I

    .line 891
    return-void
.end method


# virtual methods
.method public addResizeFrame(Lcom/android/launcher3/common/drag/DragState;Lcom/android/launcher3/home/LauncherAppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 8
    .param p1, "dragState"    # Lcom/android/launcher3/common/drag/DragState;
    .param p2, "widget"    # Lcom/android/launcher3/home/LauncherAppWidgetHostView;
    .param p3, "cellLayout"    # Lcom/android/launcher3/common/base/view/CellLayout;

    .prologue
    const/4 v7, -0x1

    .line 435
    iget-object v1, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    if-eqz v1, :cond_0

    .line 436
    iget-object v1, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    .line 437
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    .line 440
    :cond_0
    if-nez p2, :cond_2

    .line 441
    const-string v1, "DragLayer"

    const-string v2, "addResizeFrame() : widget hostview is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_1
    :goto_0
    return-void

    .line 445
    :cond_2
    new-instance v0, Lcom/android/launcher3/home/AppWidgetResizeFrame;

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/home/AppWidgetResizeFrame;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/drag/DragState;Lcom/android/launcher3/home/LauncherAppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/view/DragLayer;)V

    .line 448
    .local v0, "resizeFrame":Lcom/android/launcher3/home/AppWidgetResizeFrame;
    new-instance v6, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    invoke-direct {v6, v7, v7}, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;-><init>(II)V

    .line 449
    .local v6, "lp":Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v6, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->customPosition:Z

    .line 451
    invoke-virtual {p0, v0, v6}, Lcom/android/launcher3/common/view/DragLayer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 452
    iput-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    .line 453
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->snapToWidget(Z)V

    .line 454
    invoke-virtual {p2}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 455
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertEnterResizeWidgetLog(Landroid/appwidget/AppWidgetProviderInfo;)V

    goto :goto_0
.end method

.method public animateView(Lcom/android/launcher3/common/drag/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
    .locals 4
    .param p1, "view"    # Lcom/android/launcher3/common/drag/DragView;
    .param p2, "updateCb"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/animation/TimeInterpolator;
    .param p5, "onCompleteRunnable"    # Ljava/lang/Runnable;
    .param p6, "animationEndStyle"    # I
    .param p7, "anchorView"    # Landroid/view/View;

    .prologue
    .line 756
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 759
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropView:Lcom/android/launcher3/common/drag/DragView;

    .line 760
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragView;->cancelAnimation()V

    .line 761
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragView;->resetLayoutParams()V

    .line 764
    iput-object p7, p0, Lcom/android/launcher3/common/view/DragLayer;->mAnchorView:Landroid/view/View;

    .line 765
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mAnchorViewInitialRect:Landroid/graphics/Rect;

    .line 768
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    .line 769
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 770
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 771
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 772
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 773
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/common/view/DragLayer$4;

    invoke-direct {v1, p0, p5, p6}, Lcom/android/launcher3/common/view/DragLayer$4;-><init>(Lcom/android/launcher3/common/view/DragLayer;Ljava/lang/Runnable;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 808
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 809
    return-void

    .line 771
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public animateView(Lcom/android/launcher3/common/drag/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
    .locals 33
    .param p1, "view"    # Lcom/android/launcher3/common/drag/DragView;
    .param p2, "from"    # Landroid/graphics/Rect;
    .param p3, "to"    # Landroid/graphics/Rect;
    .param p4, "finalAlpha"    # F
    .param p5, "initScaleX"    # F
    .param p6, "initScaleY"    # F
    .param p7, "finalScaleX"    # F
    .param p8, "finalScaleY"    # F
    .param p9, "duration"    # I
    .param p10, "motionInterpolator"    # Landroid/view/animation/Interpolator;
    .param p11, "alphaInterpolator"    # Landroid/view/animation/Interpolator;
    .param p12, "onCompleteRunnable"    # Ljava/lang/Runnable;
    .param p13, "animationEndStyle"    # I
    .param p14, "anchorView"    # Landroid/view/View;

    .prologue
    .line 613
    move-object/from16 v0, p3

    iget v5, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    int-to-double v6, v5

    move-object/from16 v0, p3

    iget v5, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    iget v8, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v8

    int-to-double v8, v5

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v0, v6

    move/from16 v30, v0

    .line 614
    .local v30, "dist":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/view/DragLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    .line 615
    .local v32, "res":Landroid/content/res/Resources;
    const v5, 0x7f0b0023

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v0, v5

    move/from16 v31, v0

    .line 618
    .local v31, "maxDist":F
    if-gez p9, :cond_1

    .line 619
    const v5, 0x7f0b0024

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p9

    .line 620
    cmpg-float v5, v30, v31

    if-gez v5, :cond_0

    .line 621
    move/from16 v0, p9

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/common/view/DragLayer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    div-float v7, v30, v31

    invoke-interface {v6, v7}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 p9, v0

    .line 623
    :cond_0
    const v5, 0x7f0b0025

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    move/from16 v0, p9

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result p9

    .line 627
    :cond_1
    const/16 v25, 0x0

    .line 628
    .local v25, "interpolator":Landroid/animation/TimeInterpolator;
    if-eqz p11, :cond_2

    if-nez p10, :cond_3

    .line 629
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/view/DragLayer;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    move-object/from16 v25, v0

    .line 633
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/drag/DragView;->isExtraDragView()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 634
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/drag/DragView;->getAlpha()F

    move-result v15

    .line 635
    .local v15, "initAlpha":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/drag/DragView;->getScaleX()F

    move-result v10

    .line 638
    .local v10, "dropViewScale":F
    if-eqz p14, :cond_4

    .line 639
    new-instance v29, Landroid/graphics/Rect;

    invoke-direct/range {v29 .. v29}, Landroid/graphics/Rect;-><init>()V

    .line 640
    .local v29, "anchorViewRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, p14

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 641
    move-object/from16 v19, v29

    .line 642
    .local v19, "anchorViewInitialRect":Landroid/graphics/Rect;
    invoke-virtual/range {p14 .. p14}, Landroid/view/View;->getScrollX()I

    move-result v20

    .line 647
    .end local v29    # "anchorViewRect":Landroid/graphics/Rect;
    .local v20, "anchorViewInitialScrollX":I
    :goto_0
    new-instance v4, Lcom/android/launcher3/common/view/DragLayer$2;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p11

    move-object/from16 v8, p10

    move/from16 v9, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p4

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p14

    invoke-direct/range {v4 .. v20}, Lcom/android/launcher3/common/view/DragLayer$2;-><init>(Lcom/android/launcher3/common/view/DragLayer;Lcom/android/launcher3/common/drag/DragView;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FFFFFFFLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;Landroid/graphics/Rect;I)V

    .local v4, "updateCb":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    move-object/from16 v21, p0

    move-object/from16 v22, p1

    move-object/from16 v23, v4

    move/from16 v24, p9

    move-object/from16 v26, p12

    .line 695
    invoke-direct/range {v21 .. v26}, Lcom/android/launcher3/common/view/DragLayer;->animateExtraDragView(Lcom/android/launcher3/common/drag/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;)V

    .line 750
    .end local v19    # "anchorViewInitialRect":Landroid/graphics/Rect;
    .end local v20    # "anchorViewInitialScrollX":I
    :goto_1
    return-void

    .line 644
    .end local v4    # "updateCb":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    :cond_4
    const/16 v19, 0x0

    .line 645
    .restart local v19    # "anchorViewInitialRect":Landroid/graphics/Rect;
    const/16 v20, 0x0

    .restart local v20    # "anchorViewInitialScrollX":I
    goto :goto_0

    .line 697
    .end local v10    # "dropViewScale":F
    .end local v15    # "initAlpha":F
    .end local v19    # "anchorViewInitialRect":Landroid/graphics/Rect;
    .end local v20    # "anchorViewInitialScrollX":I
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/drag/DragView;->getAlpha()F

    move-result v15

    .line 698
    .restart local v15    # "initAlpha":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/drag/DragView;->getScaleX()F

    move-result v10

    .line 699
    .restart local v10    # "dropViewScale":F
    new-instance v4, Lcom/android/launcher3/common/view/DragLayer$3;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p11

    move-object/from16 v8, p10

    move/from16 v9, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p4

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    invoke-direct/range {v4 .. v17}, Lcom/android/launcher3/common/view/DragLayer$3;-><init>(Lcom/android/launcher3/common/view/DragLayer;Lcom/android/launcher3/common/drag/DragView;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FFFFFFFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .restart local v4    # "updateCb":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    move-object/from16 v21, p0

    move-object/from16 v22, p1

    move-object/from16 v23, v4

    move/from16 v24, p9

    move-object/from16 v26, p12

    move/from16 v27, p13

    move-object/from16 v28, p14

    .line 747
    invoke-virtual/range {v21 .. v28}, Lcom/android/launcher3/common/view/DragLayer;->animateView(Lcom/android/launcher3/common/drag/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    goto :goto_1
.end method

.method public animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V
    .locals 17
    .param p1, "view"    # Lcom/android/launcher3/common/drag/DragView;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I
    .param p6, "finalAlpha"    # F
    .param p7, "initScaleX"    # F
    .param p8, "initScaleY"    # F
    .param p9, "finalScaleX"    # F
    .param p10, "finalScaleY"    # F
    .param p11, "onCompleteRunnable"    # Ljava/lang/Runnable;
    .param p12, "animationEndStyle"    # I
    .param p13, "duration"    # I
    .param p14, "anchorView"    # Landroid/view/View;

    .prologue
    .line 581
    new-instance v4, Landroid/graphics/Rect;

    .line 582
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredWidth()I

    move-result v2

    add-int v2, v2, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, p3

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 583
    .local v4, "from":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredWidth()I

    move-result v2

    add-int v2, v2, p4

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, p5

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 584
    .local v5, "to":Landroid/graphics/Rect;
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p13

    move-object/from16 v14, p11

    move/from16 v15, p12

    move-object/from16 v16, p14

    invoke-virtual/range {v2 .. v16}, Lcom/android/launcher3/common/view/DragLayer;->animateView(Lcom/android/launcher3/common/drag/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 586
    return-void
.end method

.method public animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V
    .locals 7
    .param p1, "dragView"    # Lcom/android/launcher3/common/drag/DragView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "duration"    # I
    .param p4, "onFinishAnimationRunnable"    # Ljava/lang/Runnable;
    .param p5, "anchorView"    # Landroid/view/View;

    .prologue
    .line 493
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;I)V

    .line 494
    return-void
.end method

.method public animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;I)V
    .locals 8
    .param p1, "dragView"    # Lcom/android/launcher3/common/drag/DragView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "duration"    # I
    .param p4, "onFinishAnimationRunnable"    # Ljava/lang/Runnable;
    .param p5, "anchorView"    # Landroid/view/View;
    .param p6, "translatedX"    # I

    .prologue
    .line 499
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;II)V

    .line 500
    return-void
.end method

.method public animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;II)V
    .locals 28
    .param p1, "dragView"    # Lcom/android/launcher3/common/drag/DragView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "duration"    # I
    .param p4, "onFinishAnimationRunnable"    # Ljava/lang/Runnable;
    .param p5, "anchorView"    # Landroid/view/View;
    .param p6, "translatedX"    # I
    .param p7, "translatedY"    # I

    .prologue
    .line 505
    new-instance v25, Landroid/graphics/Rect;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    .line 506
    .local v25, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/view/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 508
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v19, v0

    .line 509
    .local v19, "coord":[I
    const/high16 v18, 0x3f800000    # 1.0f

    .line 511
    .local v18, "childScale":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    if-eqz v3, :cond_0

    .line 512
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    check-cast v24, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    .line 513
    .local v24, "parentChildren":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    .line 514
    .local v23, "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    .line 516
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleX()F

    move-result v18

    .line 517
    const/4 v3, 0x0

    move-object/from16 v0, v23

    iget v4, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->x:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v9, v9, v18

    mul-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v4, v8

    aput v4, v19, v3

    .line 518
    const/4 v3, 0x1

    move-object/from16 v0, v23

    iget v4, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->y:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v9, v9, v18

    mul-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v4, v8

    aput v4, v19, v3

    .line 523
    .end local v23    # "lp":Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;
    .end local v24    # "parentChildren":Lcom/android/launcher3/common/base/view/CellLayoutChildren;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v26

    .line 526
    .local v26, "scale":F
    mul-float v26, v26, v18

    .line 527
    const/4 v3, 0x0

    aget v3, v19, v3

    add-int v7, v3, p6

    .line 528
    .local v7, "toX":I
    const/4 v3, 0x1

    aget v3, v19, v3

    add-int v27, v3, p7

    .line 529
    .local v27, "toY":I
    move/from16 v12, v26

    .line 530
    .local v12, "toScale":F
    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v3, :cond_4

    move-object/from16 v22, p2

    .line 531
    check-cast v22, Lcom/android/launcher3/common/view/IconView;

    .line 532
    .local v22, "iconView":Lcom/android/launcher3/common/view/IconView;
    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/common/view/IconView;->getIconVew()Landroid/widget/ImageView;

    move-result-object v21

    .line 533
    .local v21, "icon":Landroid/widget/ImageView;
    invoke-virtual/range {v21 .. v21}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    check-cast v20, Landroid/widget/FrameLayout$LayoutParams;

    .line 534
    .local v20, "frameLp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/drag/DragView;->isExtraDragView()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 540
    :goto_0
    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/common/view/IconView;->getPaddingTop()I

    move-result v3

    move-object/from16 v0, v20

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v3

    .line 541
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/drag/DragView;->isExtraDragView()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/drag/DragView;->getTopDelta()I

    move-result v3

    :goto_1
    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v12

    .line 540
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int v27, v27, v3

    .line 542
    move/from16 v0, v27

    int-to-float v3, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v12

    mul-float/2addr v4, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v4, v8

    sub-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v27, v0

    .line 543
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/drag/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 544
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/drag/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v3, v12

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int v27, v27, v3

    .line 547
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v26

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v7, v3

    .line 554
    .end local v20    # "frameLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v21    # "icon":Landroid/widget/ImageView;
    .end local v22    # "iconView":Lcom/android/launcher3/common/view/IconView;
    :goto_2
    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->left:I

    .line 555
    .local v5, "fromX":I
    move-object/from16 v0, v25

    iget v6, v0, Landroid/graphics/Rect;->top:I

    .line 556
    .local v6, "fromY":I
    const/4 v3, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 557
    new-instance v14, Lcom/android/launcher3/common/view/DragLayer$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v14, v0, v1, v2}, Lcom/android/launcher3/common/view/DragLayer$1;-><init>(Lcom/android/launcher3/common/view/DragLayer;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 573
    .local v14, "onCompleteRunnable":Ljava/lang/Runnable;
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/drag/DragView;->getTopDelta()I

    move-result v3

    sub-int v8, v27, v3

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move v13, v12

    move/from16 v16, p3

    move-object/from16 v17, p5

    invoke-virtual/range {v3 .. v17}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    .line 575
    return-void

    .line 535
    .end local v5    # "fromX":I
    .end local v6    # "fromY":I
    .end local v14    # "onCompleteRunnable":Ljava/lang/Runnable;
    .restart local v20    # "frameLp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v21    # "icon":Landroid/widget/ImageView;
    .restart local v22    # "iconView":Lcom/android/launcher3/common/view/IconView;
    :cond_2
    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/common/view/IconView;->getIconSize()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/drag/DragView;->getIntrinsicIconSize()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float v12, v26, v3

    goto/16 :goto_0

    .line 541
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 549
    .end local v20    # "frameLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v21    # "icon":Landroid/widget/ImageView;
    .end local v22    # "iconView":Lcom/android/launcher3/common/view/IconView;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/drag/DragView;->getHeight()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v26

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v27, v27, v3

    .line 550
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredWidth()I

    move-result v3

    .line 551
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v26

    .line 550
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v7, v3

    goto :goto_2
.end method

.method public animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 7
    .param p1, "dragView"    # Lcom/android/launcher3/common/drag/DragView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "onFinishAnimationRunnable"    # Ljava/lang/Runnable;
    .param p4, "anchorView"    # Landroid/view/View;

    .prologue
    .line 488
    const/4 v3, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;I)V

    .line 489
    return-void
.end method

.method public animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;[IFFFILjava/lang/Runnable;I)V
    .locals 19
    .param p1, "dragView"    # Lcom/android/launcher3/common/drag/DragView;
    .param p2, "pos"    # [I
    .param p3, "alpha"    # F
    .param p4, "scaleX"    # F
    .param p5, "scaleY"    # F
    .param p6, "animationEndStyle"    # I
    .param p7, "onFinishRunnable"    # Ljava/lang/Runnable;
    .param p8, "duration"    # I

    .prologue
    .line 477
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    .line 478
    .local v18, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/view/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 479
    move-object/from16 v0, v18

    iget v5, v0, Landroid/graphics/Rect;->left:I

    .line 480
    .local v5, "fromX":I
    move-object/from16 v0, v18

    iget v6, v0, Landroid/graphics/Rect;->top:I

    .line 482
    .local v6, "fromY":I
    const/4 v3, 0x0

    aget v7, p2, v3

    const/4 v3, 0x1

    aget v8, p2, v3

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v9, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v14, p7

    move/from16 v15, p6

    move/from16 v16, p8

    invoke-virtual/range {v3 .. v17}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    .line 484
    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 878
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/InsettableFrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 879
    invoke-direct {p0}, Lcom/android/launcher3/common/view/DragLayer;->updateChildIndices()V

    .line 880
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 350
    instance-of v0, p1, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    return v0
.end method

.method public clearAllResizeFrames()Z
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    invoke-virtual {v0}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->commitResize()V

    .line 425
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    .line 426
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    .line 427
    const/4 v0, 0x1

    .line 430
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearAnimatedView()V
    .locals 2

    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 854
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v0, :cond_1

    .line 855
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v1, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragManager;->onDeferredEndDrag(Lcom/android/launcher3/common/drag/DragView;)V

    .line 857
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropView:Lcom/android/launcher3/common/drag/DragView;

    .line 858
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/DragLayer;->invalidate()V

    .line 859
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 922
    iget v1, p0, Lcom/android/launcher3/common/view/DragLayer;->mBackgroundAlpha:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 923
    iget v1, p0, Lcom/android/launcher3/common/view/DragLayer;->mBackgroundAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 924
    .local v0, "alpha":I
    shl-int/lit8 v1, v0, 0x18

    or-int/lit8 v1, v1, 0x0

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 927
    .end local v0    # "alpha":I
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/InsettableFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 928
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/drag/DragManager;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/InsettableFrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 188
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/common/view/DragLayer;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v3}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 189
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 190
    .local v0, "hitRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 191
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 192
    .local v2, "y":I
    iget-object v3, p0, Lcom/android/launcher3/common/view/DragLayer;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v3}, Lcom/android/launcher3/common/drag/DragManager;->getQuickOptionView()Lcom/android/launcher3/common/quickoption/QuickOptionView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/launcher3/common/quickoption/QuickOptionView;->getHitRect(Landroid/graphics/Rect;)V

    .line 193
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 194
    iget-object v3, p0, Lcom/android/launcher3/common/view/DragLayer;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    const-string v4, "2"

    invoke-virtual {v3, v4}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView(Ljava/lang/String;)V

    .line 195
    iget-object v3, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    if-nez v3, :cond_0

    .line 196
    const/4 v3, 0x1

    .line 200
    .end local v0    # "hitRect":Landroid/graphics/Rect;
    .end local v1    # "x":I
    .end local v2    # "y":I
    :goto_0
    return v3

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/InsettableFrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/common/drag/DragManager;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/DragLayer;->generateDefaultLayoutParams()Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/DragLayer;->generateDefaultLayoutParams()Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Lcom/android/launcher3/common/base/view/InsettableFrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/DragLayer;->generateDefaultLayoutParams()Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 344
    new-instance v0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/view/DragLayer;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/view/DragLayer;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/view/DragLayer;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/common/base/view/InsettableFrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/view/DragLayer;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/launcher3/common/base/view/InsettableFrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/view/DragLayer;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 339
    new-instance v0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/DragLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 355
    new-instance v0, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAnimatedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropView:Lcom/android/launcher3/common/drag/DragView;

    return-object v0
.end method

.method public getBackgroundAlpha()F
    .locals 1

    .prologue
    .line 938
    iget v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mBackgroundAlpha:F

    return v0
.end method

.method public getBackgroundImageAlpha()F
    .locals 1

    .prologue
    .line 958
    iget v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mBackgroundImageAlpha:F

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 895
    iget v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mChildCountOnLastUpdate:I

    if-eq v0, p1, :cond_0

    .line 900
    invoke-direct {p0}, Lcom/android/launcher3/common/view/DragLayer;->updateChildIndices()V

    .line 904
    :cond_0
    iget v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mTopViewIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 915
    .end local p2    # "i":I
    :cond_1
    :goto_0
    return p2

    .line 907
    .restart local p2    # "i":I
    :cond_2
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_3

    .line 909
    iget p2, p0, Lcom/android/launcher3/common/view/DragLayer;->mTopViewIndex:I

    goto :goto_0

    .line 910
    :cond_3
    iget v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mTopViewIndex:I

    if-lt p2, v0, :cond_1

    .line 915
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F
    .locals 1
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "coord"    # [I

    .prologue
    .line 289
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F

    move-result v0

    return v0
.end method

.method public getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F
    .locals 1
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "coord"    # [I
    .param p3, "includeRootScroll"    # Z

    .prologue
    .line 306
    invoke-static {p1, p0, p2, p3}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToParent(Landroid/view/View;Landroid/view/View;[IZ)F

    move-result v0

    return v0
.end method

.method public getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F
    .locals 6
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 272
    iget-object v1, p0, Lcom/android/launcher3/common/view/DragLayer;->mTmpXY:[I

    aput v4, v1, v4

    .line 273
    iget-object v1, p0, Lcom/android/launcher3/common/view/DragLayer;->mTmpXY:[I

    aput v4, v1, v5

    .line 274
    iget-object v1, p0, Lcom/android/launcher3/common/view/DragLayer;->mTmpXY:[I

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v0

    .line 276
    .local v0, "scale":F
    iget-object v1, p0, Lcom/android/launcher3/common/view/DragLayer;->mTmpXY:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/launcher3/common/view/DragLayer;->mTmpXY:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/android/launcher3/common/view/DragLayer;->mTmpXY:[I

    aget v3, v3, v4

    int-to-float v3, v3

    .line 277
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/launcher3/common/view/DragLayer;->mTmpXY:[I

    aget v4, v4, v5

    int-to-float v4, v4

    .line 278
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 276
    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 279
    return v0
.end method

.method public getLocationInDragLayer(Landroid/view/View;[I)F
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "loc"    # [I

    .prologue
    const/4 v1, 0x0

    .line 283
    aput v1, p2, v1

    .line 284
    const/4 v0, 0x1

    aput v1, p2, v0

    .line 285
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    move-result v0

    return v0
.end method

.method public getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 318
    const/4 v7, 0x2

    new-array v1, v7, [I

    .line 319
    .local v1, "loc":[I
    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/view/DragLayer;->getLocationInWindow([I)V

    .line 320
    aget v5, v1, v8

    .line 321
    .local v5, "x":I
    aget v6, v1, v9

    .line 323
    .local v6, "y":I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 324
    aget v3, v1, v8

    .line 325
    .local v3, "vX":I
    aget v4, v1, v9

    .line 327
    .local v4, "vY":I
    sub-int v0, v3, v5

    .line 328
    .local v0, "left":I
    sub-int v2, v4, v6

    .line 329
    .local v2, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {p2, v0, v2, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 330
    return-void
.end method

.method public isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 132
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mHitRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isResizeFrameArea(FF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 460
    iget-object v1, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    if-eqz v1, :cond_0

    .line 461
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 462
    .local v0, "hitRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->getHitRect(Landroid/graphics/Rect;)V

    .line 463
    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    iget-object v1, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    float-to-int v2, p1

    iget-object v3, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    invoke-virtual {v3}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    float-to-int v3, p2

    iget-object v4, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    .line 465
    invoke-virtual {v4}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 464
    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->beginResizeIfPointInRegion(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 466
    const/4 v1, 0x1

    .line 471
    .end local v0    # "hitRect":Landroid/graphics/Rect;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mapCoordInSelfToDescendent(Landroid/view/View;[I)F
    .locals 1
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "coord"    # [I

    .prologue
    .line 314
    invoke-static {p1, p0, p2}, Lcom/android/launcher3/Utilities;->mapCoordInSelfToDescendent(Landroid/view/View;Landroid/view/View;[I)F

    move-result v0

    return v0
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 867
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/InsettableFrameLayout;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 868
    invoke-direct {p0}, Lcom/android/launcher3/common/view/DragLayer;->updateChildIndices()V

    .line 869
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 873
    invoke-direct {p0}, Lcom/android/launcher3/common/view/DragLayer;->updateChildIndices()V

    .line 874
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 205
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 207
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 208
    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/common/view/DragLayer;->handleTouchDown(Landroid/view/MotionEvent;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 218
    :goto_0
    return v1

    .line 211
    :cond_0
    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 212
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/common/view/DragLayer;->mTouchCompleteListener:Lcom/android/launcher3/common/view/DragLayer$TouchCompleteListener;

    if-eqz v1, :cond_2

    .line 213
    iget-object v1, p0, Lcom/android/launcher3/common/view/DragLayer;->mTouchCompleteListener:Lcom/android/launcher3/common/view/DragLayer$TouchCompleteListener;

    invoke-interface {v1}, Lcom/android/launcher3/common/view/DragLayer$TouchCompleteListener;->onTouchComplete()V

    .line 215
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/common/view/DragLayer;->mTouchCompleteListener:Lcom/android/launcher3/common/view/DragLayer$TouchCompleteListener;

    .line 218
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/common/view/DragLayer;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/common/drag/DragManager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 408
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/common/base/view/InsettableFrameLayout;->onLayout(ZIIII)V

    .line 409
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/DragLayer;->getChildCount()I

    move-result v1

    .line 410
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 411
    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/view/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 412
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 413
    .local v2, "flp":Landroid/widget/FrameLayout$LayoutParams;
    instance-of v5, v2, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    if-eqz v5, :cond_0

    move-object v4, v2

    .line 414
    check-cast v4, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;

    .line 415
    .local v4, "lp":Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    iget-boolean v5, v4, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->customPosition:Z

    if-eqz v5, :cond_0

    .line 416
    iget v5, v4, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->x:I

    iget v6, v4, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->y:I

    iget v7, v4, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->x:I

    iget v8, v4, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->width:I

    add-int/2addr v7, v8

    iget v8, v4, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->y:I

    iget v9, v4, Lcom/android/launcher3/common/view/DragLayer$LayoutParams;->height:I

    add-int/2addr v8, v9

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 410
    .end local v4    # "lp":Lcom/android/launcher3/common/view/DragLayer$LayoutParams;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 420
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "flp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 230
    const/4 v1, 0x0

    .line 231
    .local v1, "handled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 233
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v2, v5

    .line 234
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v3, v5

    .line 236
    .local v3, "y":I
    if-nez v0, :cond_1

    .line 237
    const/4 v5, 0x0

    invoke-direct {p0, p1, v5}, Lcom/android/launcher3/common/view/DragLayer;->handleTouchDown(Landroid/view/MotionEvent;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 261
    :cond_0
    :goto_0
    return v4

    .line 240
    :cond_1
    if-eq v0, v4, :cond_2

    const/4 v5, 0x3

    if-ne v0, v5, :cond_4

    .line 241
    :cond_2
    iget-object v5, p0, Lcom/android/launcher3/common/view/DragLayer;->mTouchCompleteListener:Lcom/android/launcher3/common/view/DragLayer$TouchCompleteListener;

    if-eqz v5, :cond_3

    .line 242
    iget-object v5, p0, Lcom/android/launcher3/common/view/DragLayer;->mTouchCompleteListener:Lcom/android/launcher3/common/view/DragLayer$TouchCompleteListener;

    invoke-interface {v5}, Lcom/android/launcher3/common/view/DragLayer$TouchCompleteListener;->onTouchComplete()V

    .line 244
    :cond_3
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/launcher3/common/view/DragLayer;->mTouchCompleteListener:Lcom/android/launcher3/common/view/DragLayer$TouchCompleteListener;

    .line 247
    :cond_4
    iget-object v5, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    if-eqz v5, :cond_5

    .line 248
    const/4 v1, 0x1

    .line 249
    packed-switch v0, :pswitch_data_0

    .line 260
    :cond_5
    :goto_1
    if-nez v1, :cond_0

    .line 261
    iget-object v4, p0, Lcom/android/launcher3/common/view/DragLayer;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v4, p1}, Lcom/android/launcher3/common/drag/DragManager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    .line 251
    :pswitch_0
    iget-object v5, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    iget v6, p0, Lcom/android/launcher3/common/view/DragLayer;->mXDown:I

    sub-int v6, v2, v6

    iget v7, p0, Lcom/android/launcher3/common/view/DragLayer;->mYDown:I

    sub-int v7, v3, v7

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    goto :goto_1

    .line 255
    :pswitch_1
    iget-object v5, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    iget v6, p0, Lcom/android/launcher3/common/view/DragLayer;->mXDown:I

    sub-int v6, v2, v6

    iget v7, p0, Lcom/android/launcher3/common/view/DragLayer;->mYDown:I

    sub-int v7, v3, v7

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    .line 256
    iget-object v5, p0, Lcom/android/launcher3/common/view/DragLayer;->mResizeFrame:Lcom/android/launcher3/home/AppWidgetResizeFrame;

    invoke-virtual {v5}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->onTouchUp()V

    goto :goto_1

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeAnimation(Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "view"    # Lcom/android/launcher3/common/drag/DragView;
    .param p2, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 839
    iput-object p1, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropView:Lcom/android/launcher3/common/drag/DragView;

    .line 840
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragView;->cancelAnimation()V

    .line 841
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDropView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragView;->resetLayoutParams()V

    .line 843
    if-eqz p2, :cond_0

    .line 844
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 847
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/DragLayer;->clearAnimatedView()V

    .line 848
    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 931
    iget v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mBackgroundAlpha:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 932
    iput p1, p0, Lcom/android/launcher3/common/view/DragLayer;->mBackgroundAlpha:F

    .line 933
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/DragLayer;->invalidate()V

    .line 935
    :cond_0
    return-void
.end method

.method public setBackgroundImage(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 942
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mBackgroundImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 943
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mBackgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 944
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mBackgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mBackgroundImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 948
    :cond_0
    return-void
.end method

.method public setBackgroundImageAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 951
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mBackgroundImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mBackgroundImageAlpha:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 952
    iput p1, p0, Lcom/android/launcher3/common/view/DragLayer;->mBackgroundImageAlpha:F

    .line 953
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mBackgroundImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 955
    :cond_0
    return-void
.end method

.method public setTouchCompleteListener(Lcom/android/launcher3/common/view/DragLayer$TouchCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/launcher3/common/view/DragLayer$TouchCompleteListener;

    .prologue
    .line 962
    iput-object p1, p0, Lcom/android/launcher3/common/view/DragLayer;->mTouchCompleteListener:Lcom/android/launcher3/common/view/DragLayer$TouchCompleteListener;

    .line 963
    return-void
.end method

.method public setup(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/drag/DragManager;)V
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "dragMgr"    # Lcom/android/launcher3/common/drag/DragManager;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/launcher3/common/view/DragLayer;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 120
    iput-object p2, p0, Lcom/android/launcher3/common/view/DragLayer;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    .line 121
    iget-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/common/drag/DragManager;->setScrollView(Landroid/view/View;)V

    .line 122
    const v0, 0x7f1100af

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/view/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/common/view/DragLayer;->mBackgroundImage:Landroid/widget/ImageView;

    .line 123
    return-void
.end method
