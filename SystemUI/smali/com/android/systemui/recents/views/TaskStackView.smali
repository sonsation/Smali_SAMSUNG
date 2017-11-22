.class public Lcom/android/systemui/recents/views/TaskStackView;
.super Landroid/widget/FrameLayout;
.source "TaskStackView.java"

# interfaces
.implements Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;
.implements Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;
.implements Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;
.implements Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;
.implements Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/TaskStackView$-void_onBusEvent_com_android_systemui_recents_events_activity_MultiWindowSettingChangedEvent_event_LambdaImpl0;,
        Lcom/android/systemui/recents/views/TaskStackView$1;,
        Lcom/android/systemui/recents/views/TaskStackView$2;,
        Lcom/android/systemui/recents/views/TaskStackView$3;,
        Lcom/android/systemui/recents/views/TaskStackView$InitialStateAction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;",
        "Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;",
        "Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;",
        "Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;",
        "Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer",
        "<",
        "Lcom/android/systemui/recents/views/TaskView;",
        "Lcom/android/systemui/recents/model/Task;",
        ">;"
    }
.end annotation


# instance fields
.field private mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

.field private mAwaitingFirstLayout:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mAwaitingPrepareAnimation:I

.field private mBlockRelayoutTaskViews:Z

.field private mCurrentTaskTransforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;"
        }
    .end annotation
.end field

.field private mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/recents/views/AnimationProps;

.field private mDisplayOrientation:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDisplayRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDividerSize:I

.field private mDrageStartedScrollP:F

.field private mEnterAnimationComplete:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mFocusedTask:Lcom/android/systemui/recents/model/Task;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "focused_task_"
    .end annotation
.end field

.field private mFreeformWorkspaceBackground:Landroid/graphics/drawable/GradientDrawable;

.field private mFreeformWorkspaceBackgroundAnimator:Landroid/animation/ObjectAnimator;

.field private mFreeformWorkspaceDropTarget:Lcom/android/systemui/recents/views/DropTarget;

.field private mIgnoreTasks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            ">;"
        }
    .end annotation
.end field

.field private mInMeasureLayout:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialState:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mLastHeight:I

.field private mLastWidth:I

.field mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "layout_"
    .end annotation
.end field

.field private mRequestUpdateClippingListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mResetToInitialStateWhenResized:Z

.field mScreenPinningEnabled:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

.field private mStableStackBounds:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mStableWindowRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mStack:Lcom/android/systemui/recents/model/TaskStack;

.field private mStackBounds:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mStackDropTarget:Lcom/android/systemui/recents/views/DropTarget;

.field private mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "scroller_"
    .end annotation
.end field

.field private mStartTimerIndicatorDuration:I

.field private mTaskCornerRadiusPx:I

.field private mTaskViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskViewsClipDirty:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mTmpIntPair:[I

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpTaskViewMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            "Lcom/android/systemui/recents/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpTaskViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field mTouchExplorationEnabled:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "touch_"
    .end annotation
.end field

.field private mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "doze_"
    .end annotation
.end field

.field private mViewPool:Lcom/android/systemui/recents/views/ViewPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/recents/views/ViewPool",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field


# direct methods
.method static synthetic -com_android_systemui_recents_views_TaskStackView_lambda$1(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 0
    .param p0, "t"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    .line 2399
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->setNoUserInteractionState()V

    .line 0
    return-void
.end method

.method static synthetic -get0(Lcom/android/systemui/recents/views/TaskStackView;)Lcom/android/systemui/recents/views/TaskStackAnimationHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/views/TaskStackView;)Lcom/android/systemui/recents/model/Task;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/views/TaskStackView;)Lcom/android/systemui/recents/model/TaskStack;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/recents/views/TaskStackView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/recents/views/TaskStackView;)Lcom/android/systemui/recents/misc/DozeTrigger;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/recents/views/TaskStackView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mBlockRelayoutTaskViews:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/recents/views/TaskStackView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/recents/views/TaskStackView;IZZ)Z
    .locals 1
    .param p1, "taskIndex"    # I
    .param p2, "scrollToTask"    # Z
    .param p3, "requestViewFocus"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/recents/views/TaskStackView;->setFocusedTask(IZZ)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 282
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 165
    new-instance v3, Lcom/android/systemui/recents/model/TaskStack;

    invoke-direct {v3}, Lcom/android/systemui/recents/model/TaskStack;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    .line 179
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViews:Ljava/util/ArrayList;

    .line 180
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    .line 181
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    .line 182
    iput-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/recents/views/AnimationProps;

    .line 194
    iput-boolean v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    .line 196
    iput-boolean v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    .line 199
    iput v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    .line 201
    iput-boolean v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInMeasureLayout:Z

    .line 203
    iput-boolean v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    .line 211
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableStackBounds:Landroid/graphics/Rect;

    .line 214
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackBounds:Landroid/graphics/Rect;

    .line 217
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableWindowRect:Landroid/graphics/Rect;

    .line 220
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    .line 223
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    .line 226
    iput v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayOrientation:I

    .line 228
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    .line 229
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViewMap:Landroid/util/ArrayMap;

    .line 230
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    .line 231
    new-instance v3, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v3}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 232
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpIntPair:[I

    .line 239
    iput v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingPrepareAnimation:I

    .line 241
    iput-boolean v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mBlockRelayoutTaskViews:Z

    .line 246
    new-instance v3, Lcom/android/systemui/recents/views/TaskStackView$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/views/TaskStackView$1;-><init>(Lcom/android/systemui/recents/views/TaskStackView;)V

    .line 245
    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mRequestUpdateClippingListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 257
    new-instance v3, Lcom/android/systemui/recents/views/TaskStackView$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/views/TaskStackView$2;-><init>(Lcom/android/systemui/recents/views/TaskStackView;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    .line 269
    new-instance v3, Lcom/android/systemui/recents/views/TaskStackView$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/views/TaskStackView$3;-><init>(Lcom/android/systemui/recents/views/TaskStackView;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    .line 283
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 284
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 287
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3, p0}, Lcom/android/systemui/recents/model/TaskStack;->setCallbacks(Lcom/android/systemui/recents/model/TaskStack$TaskStackCallbacks;)V

    .line 288
    new-instance v3, Lcom/android/systemui/recents/views/ViewPool;

    invoke-direct {v3, p1, p0}, Lcom/android/systemui/recents/views/ViewPool;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    .line 289
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInflater:Landroid/view/LayoutInflater;

    .line 290
    new-instance v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-direct {v3, p1, p0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    .line 291
    new-instance v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-direct {v3, p1, v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$TaskStackLayoutAlgorithmCallbacks;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    .line 292
    new-instance v3, Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-direct {v3, p1, p0, v4}, Lcom/android/systemui/recents/views/TaskStackViewScroller;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    .line 293
    new-instance v3, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-direct {v3, p1, p0, v4}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskStackViewScroller;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    .line 294
    new-instance v3, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    invoke-direct {v3, p1, p0}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackView;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    .line 296
    sget-boolean v3, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreRound:Z

    if-eqz v3, :cond_1

    .line 298
    const v3, 0x7f0d0354

    .line 297
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskCornerRadiusPx:I

    .line 304
    :goto_0
    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDockedDividerSize(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDividerSize:I

    .line 305
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayOrientation:I

    .line 306
    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    .line 308
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 309
    const v4, 0x7f0c0039

    .line 308
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 310
    .local v2, "taskBarDismissDozeDelaySeconds":I
    new-instance v3, Lcom/android/systemui/recents/misc/DozeTrigger;

    new-instance v4, Lcom/android/systemui/recents/views/TaskStackView$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/recents/views/TaskStackView$4;-><init>(Lcom/android/systemui/recents/views/TaskStackView;)V

    invoke-direct {v3, v2, v4}, Lcom/android/systemui/recents/misc/DozeTrigger;-><init>(ILjava/lang/Runnable;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    .line 322
    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/views/TaskStackView;->setImportantForAccessibility(I)V

    .line 324
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 325
    const v4, 0x7f020434

    .line 324
    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    iput-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 326
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/GradientDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 327
    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasFreeformWorkspaceSupport()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 328
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 329
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b00cb

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    .line 328
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 281
    :cond_0
    return-void

    .line 302
    .end local v2    # "taskBarDismissDozeDelaySeconds":I
    :cond_1
    const v3, 0x7f0d0352

    .line 301
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskCornerRadiusPx:I

    goto :goto_0
.end method

.method private animateFreeformWorkspaceBackgroundAlpha(ILcom/android/systemui/recents/views/AnimationProps;)V
    .locals 6
    .param p1, "targetAlpha"    # I
    .param p2, "animation"    # Lcom/android/systemui/recents/views/AnimationProps;

    .prologue
    const/4 v5, 0x4

    .line 2450
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getAlpha()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 2451
    return-void

    .line 2454
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    .line 2455
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 2456
    sget-object v1, Lcom/android/systemui/recents/misc/Utilities;->DRAWABLE_ALPHA:Landroid/util/Property;

    .line 2455
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 2456
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/GradientDrawable;->getAlpha()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput p1, v2, v3

    .line 2455
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackgroundAnimator:Landroid/animation/ObjectAnimator;

    .line 2457
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackgroundAnimator:Landroid/animation/ObjectAnimator;

    .line 2458
    invoke-virtual {p2, v5}, Lcom/android/systemui/recents/views/AnimationProps;->getDuration(I)J

    move-result-wide v2

    .line 2457
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 2459
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackgroundAnimator:Landroid/animation/ObjectAnimator;

    .line 2460
    invoke-virtual {p2, v5}, Lcom/android/systemui/recents/views/AnimationProps;->getDuration(I)J

    move-result-wide v2

    .line 2459
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2461
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackgroundAnimator:Landroid/animation/ObjectAnimator;

    .line 2462
    invoke-virtual {p2, v5}, Lcom/android/systemui/recents/views/AnimationProps;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 2461
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2463
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackgroundAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 2449
    return-void
.end method

.method private bindTaskView(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;)V
    .locals 3
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "task"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 1732
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchExplorationEnabled:Z

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayOrientation:I

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/android/systemui/recents/views/TaskView;->onTaskBound(Lcom/android/systemui/recents/model/Task;ZILandroid/graphics/Rect;)V

    .line 1735
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTaskData(Lcom/android/systemui/recents/model/Task;)V

    .line 1730
    return-void
.end method

.method private clipTaskViews()V
    .locals 15

    .prologue
    .line 844
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v8

    .line 845
    .local v8, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    const/4 v9, 0x0

    .line 846
    .local v9, "tmpTv":Lcom/android/systemui/recents/views/TaskView;
    const/4 v5, 0x0

    .line 847
    .local v5, "prevVisibleTv":Lcom/android/systemui/recents/views/TaskView;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    .line 848
    .local v7, "taskViewCount":I
    const/4 v3, 0x0

    .end local v5    # "prevVisibleTv":Lcom/android/systemui/recents/views/TaskView;
    .end local v9    # "tmpTv":Lcom/android/systemui/recents/views/TaskView;
    .local v3, "i":I
    :goto_0
    if-ge v3, v7, :cond_5

    .line 849
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recents/views/TaskView;

    .line 850
    .local v10, "tv":Lcom/android/systemui/recents/views/TaskView;
    const/4 v2, 0x0

    .line 851
    .local v2, "frontTv":Lcom/android/systemui/recents/views/TaskView;
    const/4 v0, 0x0

    .line 853
    .local v0, "clipBottom":I
    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/systemui/recents/views/TaskStackView;->isIgnoredTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 856
    if-eqz v5, :cond_0

    .line 857
    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskView;->getTranslationZ()F

    move-result v11

    .line 858
    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskView;->getTranslationZ()F

    move-result v12

    const v13, 0x3dcccccd    # 0.1f

    add-float/2addr v12, v13

    .line 857
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/systemui/recents/views/TaskView;->setTranslationZ(F)V

    .line 862
    :cond_0
    add-int/lit8 v11, v7, -0x1

    if-ge v3, v11, :cond_2

    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskView;->shouldClipViewInStack()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 864
    add-int/lit8 v4, v3, 0x1

    .local v4, "j":I
    :goto_1
    if-ge v4, v7, :cond_1

    .line 865
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/recents/views/TaskView;

    .line 867
    .local v9, "tmpTv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskView;->shouldClipViewInStack()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 868
    move-object v2, v9

    .line 876
    .end local v2    # "frontTv":Lcom/android/systemui/recents/views/TaskView;
    .end local v9    # "tmpTv":Lcom/android/systemui/recents/views/TaskView;
    :cond_1
    if-eqz v2, :cond_2

    .line 877
    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskView;->getBottom()I

    move-result v11

    int-to-float v6, v11

    .line 878
    .local v6, "taskBottom":F
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getTop()I

    move-result v11

    int-to-float v1, v11

    .line 879
    .local v1, "frontTaskTop":F
    cmpg-float v11, v1, v6

    if-gez v11, :cond_2

    .line 882
    sget-boolean v11, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-eqz v11, :cond_4

    .line 883
    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskView;->getHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskView;->getHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskView;->getScaleY()F

    move-result v13

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    sub-float v11, v6, v11

    .line 884
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getScaleY()F

    move-result v14

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    add-float/2addr v12, v1

    .line 883
    sub-float/2addr v11, v12

    float-to-int v0, v11

    .line 885
    int-to-float v11, v0

    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskView;->getScaleY()F

    move-result v12

    div-float/2addr v11, v12

    float-to-int v0, v11

    .line 893
    .end local v1    # "frontTaskTop":F
    .end local v4    # "j":I
    .end local v6    # "taskBottom":F
    :cond_2
    :goto_2
    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskView;->getViewBounds()Lcom/android/systemui/recents/views/AnimateableViewBounds;

    move-result-object v11

    invoke-virtual {v11, v0}, Lcom/android/systemui/recents/views/AnimateableViewBounds;->setClipBottom(I)V

    .line 894
    iget-object v11, v10, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskView;->getPaddingBottom()I

    move-result v12

    sub-int v12, v0, v12

    invoke-virtual {v11, v12}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailVisibility(I)V

    .line 895
    move-object v5, v10

    .line 848
    .local v5, "prevVisibleTv":Lcom/android/systemui/recents/views/TaskView;
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 864
    .end local v5    # "prevVisibleTv":Lcom/android/systemui/recents/views/TaskView;
    .restart local v2    # "frontTv":Lcom/android/systemui/recents/views/TaskView;
    .restart local v4    # "j":I
    .restart local v9    # "tmpTv":Lcom/android/systemui/recents/views/TaskView;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 888
    .end local v2    # "frontTv":Lcom/android/systemui/recents/views/TaskView;
    .end local v9    # "tmpTv":Lcom/android/systemui/recents/views/TaskView;
    .restart local v1    # "frontTaskTop":F
    .restart local v6    # "taskBottom":F
    :cond_4
    sub-float v11, v6, v1

    float-to-int v11, v11

    iget v12, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskCornerRadiusPx:I

    sub-int v0, v11, v12

    goto :goto_2

    .line 897
    .end local v0    # "clipBottom":I
    .end local v1    # "frontTaskTop":F
    .end local v4    # "j":I
    .end local v6    # "taskBottom":F
    .end local v10    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_5
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    .line 842
    return-void
.end method

.method private findTaskViewInsertIndex(Lcom/android/systemui/recents/model/Task;I)I
    .locals 7
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "taskIndex"    # I

    .prologue
    const/4 v6, -0x1

    .line 2475
    if-eq p2, v6, :cond_3

    .line 2476
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    .line 2477
    .local v3, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    const/4 v0, 0x0

    .line 2478
    .local v0, "foundTaskView":Z
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 2479
    .local v2, "taskViewCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 2480
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    .line 2481
    .local v4, "tvTask":Lcom/android/systemui/recents/model/Task;
    if-ne v4, p1, :cond_1

    .line 2482
    const/4 v0, 0x1

    .line 2479
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2483
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5, v4}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v5

    if-ge p2, v5, :cond_0

    .line 2484
    if-eqz v0, :cond_2

    .line 2485
    add-int/lit8 v5, v1, -0x1

    return v5

    .line 2487
    :cond_2
    return v1

    .line 2492
    .end local v0    # "foundTaskView":Z
    .end local v1    # "i":I
    .end local v2    # "taskViewCount":I
    .end local v3    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    .end local v4    # "tvTask":Lcom/android/systemui/recents/model/Task;
    :cond_3
    return v6
.end method

.method private getFrontMostTaskView(Z)Lcom/android/systemui/recents/views/TaskView;
    .locals 6
    .param p1, "stackTasksOnly"    # Z

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    .line 446
    .local v3, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 447
    .local v2, "taskViewCount":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 448
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskView;

    .line 449
    .local v4, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    .line 450
    .local v1, "task":Lcom/android/systemui/recents/model/Task;
    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 447
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 453
    :cond_0
    return-object v4

    .line 455
    .end local v1    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v4    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_1
    const/4 v5, 0x0

    return-object v5
.end method

.method private layoutTaskView(ZLcom/android/systemui/recents/views/TaskView;)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "tv"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    .line 1417
    if-eqz p1, :cond_1

    .line 1418
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1419
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1420
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1422
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1423
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1424
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskView;->cancelTransformAnimation()V

    .line 1425
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .line 1426
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    .line 1425
    invoke-virtual {p2, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskView;->layout(IIII)V

    .line 1416
    .end local v0    # "padding":Landroid/graphics/Rect;
    :goto_0
    return-void

    .line 1429
    :cond_1
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskView;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskView;->getTop()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskView;->getRight()I

    move-result v3

    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskView;->getBottom()I

    move-result v4

    invoke-virtual {p2, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskView;->layout(IIII)V

    goto :goto_0
.end method

.method private measureTaskView(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 5
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 1368
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1369
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1370
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1372
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1373
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1375
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1377
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1374
    invoke-virtual {p1, v1, v2}, Lcom/android/systemui/recents/views/TaskView;->measure(II)V

    .line 1367
    return-void
.end method

.method private readSystemFlags()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2499
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 2500
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isTouchExplorationEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchExplorationEnabled:Z

    .line 2501
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 2502
    const-string/jumbo v3, "lock_to_app_enabled"

    .line 2501
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getSystemSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    .line 2498
    return-void
.end method

.method private relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;Landroid/util/ArrayMap;Z)V
    .locals 9
    .param p1, "animation"    # Lcom/android/systemui/recents/views/AnimationProps;
    .param p3, "ignoreTaskOverrides"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/views/AnimationProps;",
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            "Lcom/android/systemui/recents/views/AnimationProps;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 721
    .local p2, "animationOverrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;>;"
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->cancelDeferredTaskViewLayoutAnimation()V

    .line 724
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v7

    invoke-virtual {p0, v7, p3}, Lcom/android/systemui/recents/views/TaskStackView;->bindVisibleTaskViews(FZ)V

    .line 728
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v4

    .line 729
    .local v4, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 730
    .local v3, "taskViewCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_4

    .line 731
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/views/TaskView;

    .line 732
    .local v6, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    .line 733
    .local v1, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v7, v1}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v2

    .line 735
    .local v2, "taskIndex":I
    const/4 v7, -0x1

    if-ne v2, v7, :cond_1

    .line 730
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 737
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 739
    .local v5, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object v8, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 743
    if-eqz p2, :cond_2

    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 744
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "animation":Lcom/android/systemui/recents/views/AnimationProps;
    check-cast p1, Lcom/android/systemui/recents/views/AnimationProps;

    .line 748
    .restart local p1    # "animation":Lcom/android/systemui/recents/views/AnimationProps;
    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/systemui/recents/RecentsConfiguration;->forceOpacity:Z

    if-eqz v7, :cond_3

    .line 749
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 753
    :cond_3
    invoke-virtual {p0, v6, v5, p1}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto :goto_1

    .line 719
    .end local v1    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v2    # "taskIndex":I
    .end local v5    # "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v6    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_4
    return-void
.end method

.method private setFocusedTask(IZZ)Z
    .locals 1
    .param p1, "taskIndex"    # I
    .param p2, "scrollToTask"    # Z
    .param p3, "requestViewFocus"    # Z

    .prologue
    .line 954
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/TaskStackView;->setFocusedTask(IZZI)Z

    move-result v0

    return v0
.end method

.method private setFocusedTask(IZZI)Z
    .locals 8
    .param p1, "focusTaskIndex"    # I
    .param p2, "scrollToTask"    # Z
    .param p3, "requestViewFocus"    # Z
    .param p4, "timerIndicatorDuration"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v7, 0x0

    .line 965
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v6}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v6

    if-lez v6, :cond_5

    .line 966
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v6}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {p1, v7, v6}, Lcom/android/systemui/recents/misc/Utilities;->clamp(III)I

    move-result v1

    .line 967
    .local v1, "newFocusedTaskIndex":I
    :goto_0
    if-eq v1, v5, :cond_6

    .line 968
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/Task;

    .line 971
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v5, :cond_1

    .line 973
    if-lez p4, :cond_0

    .line 974
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v3

    .line 975
    .local v3, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v3, :cond_0

    .line 976
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskViewHeader;->cancelFocusTimerIndicator()V

    .line 980
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask(Lcom/android/systemui/recents/model/Task;)V

    .line 983
    :cond_1
    const/4 v4, 0x0

    .line 984
    .local v4, "willScroll":Z
    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    .line 986
    if-eqz v0, :cond_4

    .line 988
    if-lez p4, :cond_2

    .line 989
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v3

    .line 990
    .restart local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v3, :cond_7

    .line 991
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;

    move-result-object v5

    invoke-virtual {v5, p4}, Lcom/android/systemui/recents/views/TaskViewHeader;->startFocusTimerIndicator(I)V

    .line 998
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_2
    :goto_2
    if-eqz p2, :cond_8

    .line 1000
    iget-boolean v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    if-nez v5, :cond_3

    .line 1001
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->cancelAllTaskViewAnimations()V

    .line 1004
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->clearUnfocusedTaskOverrides()V

    .line 1005
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    invoke-virtual {v5, v0, p3}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startScrollToFocusedTaskAnimation(Lcom/android/systemui/recents/model/Task;Z)Z

    move-result v4

    .line 1015
    .end local v4    # "willScroll":Z
    :cond_4
    :goto_3
    return v4

    .end local v1    # "newFocusedTaskIndex":I
    :cond_5
    move v1, v5

    .line 966
    goto :goto_0

    .line 968
    .restart local v1    # "newFocusedTaskIndex":I
    :cond_6
    const/4 v0, 0x0

    .local v0, "newFocusedTask":Lcom/android/systemui/recents/model/Task;
    goto :goto_1

    .line 994
    .end local v0    # "newFocusedTask":Lcom/android/systemui/recents/model/Task;
    .restart local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .restart local v4    # "willScroll":Z
    :cond_7
    iput p4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStartTimerIndicatorDuration:I

    goto :goto_2

    .line 1009
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_8
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v2

    .line 1010
    .local v2, "newFocusedTaskView":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v2, :cond_4

    .line 1011
    const/4 v5, 0x1

    invoke-virtual {v2, v5, p3}, Lcom/android/systemui/recents/views/TaskView;->setFocusedState(ZZ)V

    goto :goto_3
.end method

.method private unbindTaskView(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;)V
    .locals 1
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "task"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 1740
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->unloadTaskData(Lcom/android/systemui/recents/model/Task;)V

    .line 1738
    return-void
.end method

.method private updateLayoutToStableBounds()V
    .locals 5

    .prologue
    .line 923
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 924
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 925
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setSystemInsets(Landroid/graphics/Rect;)Z

    .line 926
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackBounds:Landroid/graphics/Rect;

    .line 927
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-static {v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->getStackStateForStack(Lcom/android/systemui/recents/model/TaskStack;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    move-result-object v4

    .line 926
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;)V

    .line 928
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 922
    return-void
.end method


# virtual methods
.method addIgnoreTask(Lcom/android/systemui/recents/model/Task;)V
    .locals 2
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 488
    return-void
.end method

.method public bindVisibleTaskViews(F)V
    .locals 1
    .param p1, "targetStackScroll"    # F

    .prologue
    .line 588
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskStackView;->bindVisibleTaskViews(FZ)V

    .line 587
    return-void
.end method

.method bindVisibleTaskViews(FZ)V
    .locals 22
    .param p1, "targetStackScroll"    # F
    .param p2, "ignoreTaskOverrides"    # Z

    .prologue
    .line 606
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v5

    .line 607
    .local v5, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    .line 608
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    move-object/from16 v3, p0

    move/from16 v7, p1

    move/from16 v9, p2

    .line 607
    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/recents/views/TaskStackView;->computeVisibleTaskTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;FFLandroid/util/ArraySet;Z)[I

    move-result-object v21

    .line 612
    .local v21, "visibleTaskRange":[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViewMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 613
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v18

    .line 614
    .local v18, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    const/4 v13, -0x1

    .line 615
    .local v13, "lastFocusedTaskIndex":I
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v17

    .line 616
    .local v17, "taskViewCount":I
    add-int/lit8 v11, v17, -0x1

    .local v11, "i":I
    :goto_0
    if-ltz v11, :cond_6

    .line 617
    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/systemui/recents/views/TaskView;

    .line 618
    .local v20, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v15

    .line 621
    .local v15, "task":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object v4, v15, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 616
    :goto_1
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    .line 628
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3, v15}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v16

    .line 629
    .local v16, "taskIndex":I
    const/16 v19, 0x0

    .line 630
    .local v19, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    const/4 v3, -0x1

    move/from16 v0, v16

    if-eq v0, v3, :cond_1

    .line 631
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    check-cast v19, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 634
    :cond_1
    sget-boolean v3, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-nez v3, :cond_2

    invoke-virtual {v15}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v3

    if-nez v3, :cond_3

    .line 635
    :cond_2
    if-eqz v19, :cond_4

    move-object/from16 v0, v19

    iget-boolean v3, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 634
    if-eqz v3, :cond_4

    .line 636
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViewMap:Landroid/util/ArrayMap;

    iget-object v4, v15, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v0, v20

    invoke-virtual {v3, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 638
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchExplorationEnabled:Z

    if-eqz v3, :cond_5

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/recents/misc/Utilities;->isDescendentAccessibilityFocused(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 639
    move/from16 v13, v16

    .line 640
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask(Lcom/android/systemui/recents/model/Task;)V

    .line 642
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    goto :goto_1

    .line 647
    .end local v15    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v16    # "taskIndex":I
    .end local v20    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v11, v3, -0x1

    :goto_2
    if-ltz v11, :cond_d

    .line 648
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/recents/model/Task;

    .line 649
    .restart local v15    # "task":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 652
    .local v19, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object v4, v15, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 647
    :cond_7
    :goto_3
    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    .line 657
    :cond_8
    sget-boolean v3, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-nez v3, :cond_9

    invoke-virtual {v15}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 662
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViewMap:Landroid/util/ArrayMap;

    iget-object v4, v15, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/systemui/recents/views/TaskView;

    .line 663
    .restart local v20    # "tv":Lcom/android/systemui/recents/views/TaskView;
    if-nez v20, :cond_c

    .line 664
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v3, v15, v15}, Lcom/android/systemui/recents/views/ViewPool;->pickUpViewFromPool(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "tv":Lcom/android/systemui/recents/views/TaskView;
    check-cast v20, Lcom/android/systemui/recents/views/TaskView;

    .line 665
    .restart local v20    # "tv":Lcom/android/systemui/recents/views/TaskView;
    sget-boolean v3, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-nez v3, :cond_a

    invoke-virtual {v15}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 666
    sget-object v3, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto :goto_3

    .line 658
    .end local v20    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_9
    move-object/from16 v0, v19

    iget-boolean v3, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    if-eqz v3, :cond_7

    goto :goto_4

    .line 668
    .restart local v20    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_a
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_b

    .line 669
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getBackOfStackTransform()Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v3

    .line 670
    sget-object v4, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    .line 669
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto :goto_3

    .line 672
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getFrontOfStackTransform()Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v3

    .line 673
    sget-object v4, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    .line 672
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto :goto_3

    .line 678
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v3, v15}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v16

    .line 679
    .restart local v16    # "taskIndex":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/systemui/recents/views/TaskStackView;->findTaskViewInsertIndex(Lcom/android/systemui/recents/model/Task;I)I

    move-result v12

    .line 680
    .local v12, "insertIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eq v12, v3, :cond_7

    .line 681
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->detachViewFromParent(Landroid/view/View;)V

    .line 682
    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/recents/views/TaskView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v12, v3}, Lcom/android/systemui/recents/views/TaskStackView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 683
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewsList()V

    goto/16 :goto_3

    .line 689
    .end local v12    # "insertIndex":I
    .end local v15    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v16    # "taskIndex":I
    .end local v19    # "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v20    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_d
    const/4 v3, -0x1

    if-eq v13, v3, :cond_e

    .line 690
    const/4 v3, 0x1

    aget v3, v21, v3

    if-ge v13, v3, :cond_f

    .line 691
    const/4 v3, 0x1

    aget v14, v21, v3

    .line 693
    .local v14, "newFocusedTaskIndex":I
    :goto_5
    const/4 v3, 0x0

    .line 694
    const/4 v4, 0x1

    .line 693
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v3, v4}, Lcom/android/systemui/recents/views/TaskStackView;->setFocusedTask(IZZ)Z

    .line 695
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v10

    .line 696
    .local v10, "focusedTaskView":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v10, :cond_e

    .line 697
    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskView;->requestAccessibilityFocus()Z

    .line 604
    .end local v10    # "focusedTaskView":Lcom/android/systemui/recents/views/TaskView;
    .end local v14    # "newFocusedTaskIndex":I
    :cond_e
    return-void

    .line 692
    :cond_f
    const/4 v3, 0x0

    aget v14, v21, v3

    goto :goto_5
.end method

.method cancelAllTaskViewAnimations()V
    .locals 5

    .prologue
    .line 830
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    .line 831
    .local v1, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 832
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    .line 833
    .local v2, "tv":Lcom/android/systemui/recents/views/TaskView;
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 834
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->cancelTransformAnimation()V

    .line 831
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 829
    .end local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_1
    return-void
.end method

.method cancelDeferredTaskViewLayoutAnimation()V
    .locals 1

    .prologue
    .line 823
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/recents/views/AnimationProps;

    .line 822
    return-void
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1268
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->computeScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1270
    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->sendAccessibilityEvent(I)V

    .line 1272
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/recents/views/AnimationProps;

    if-eqz v0, :cond_1

    .line 1273
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 1274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    .line 1275
    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/recents/views/AnimationProps;

    .line 1277
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    if-eqz v0, :cond_2

    .line 1278
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackView;->clipTaskViews()V

    .line 1267
    :cond_2
    return-void
.end method

.method public computeStackVisibilityReport()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    .locals 2

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->computeStackVisibilityReport(Ljava/util/ArrayList;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;

    move-result-object v0

    return-object v0
.end method

.method computeVisibleTaskTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;FFLandroid/util/ArraySet;Z)[I
    .locals 14
    .param p3, "curStackScroll"    # F
    .param p4, "targetStackScroll"    # F
    .param p6, "ignoreTaskOverrides"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;FF",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            ">;Z)[I"
        }
    .end annotation

    .prologue
    .line 529
    .local p1, "taskTransforms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/views/TaskViewTransform;>;"
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    .local p5, "ignoreTasksSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/systemui/recents/model/Task$TaskKey;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 530
    .local v9, "taskCount":I
    iget-object v13, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpIntPair:[I

    .line 531
    .local v13, "visibleTaskRange":[I
    const/4 v1, -0x1

    const/4 v3, 0x0

    aput v1, v13, v3

    .line 532
    const/4 v1, -0x1

    const/4 v3, 0x1

    aput v1, v13, v3

    .line 533
    invoke-static/range {p3 .. p4}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v12, 0x1

    .line 536
    .local v12, "useTargetStackScroll":Z
    :goto_0
    move-object/from16 v0, p2

    invoke-static {v0, p1}, Lcom/android/systemui/recents/misc/Utilities;->matchTaskListSize(Ljava/util/List;Ljava/util/List;)V

    .line 539
    const/4 v5, 0x0

    .line 540
    .local v5, "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    const/4 v7, 0x0

    .line 541
    .local v7, "frontTransformAtTarget":Lcom/android/systemui/recents/views/TaskViewTransform;
    const/4 v10, 0x0

    .line 542
    .local v10, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    const/4 v11, 0x0

    .line 543
    .local v11, "transformAtTarget":Lcom/android/systemui/recents/views/TaskViewTransform;
    add-int/lit8 v8, v9, -0x1

    .end local v5    # "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v7    # "frontTransformAtTarget":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v10    # "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v11    # "transformAtTarget":Lcom/android/systemui/recents/views/TaskViewTransform;
    .local v8, "i":I
    :goto_1
    if-ltz v8, :cond_7

    .line 544
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    .line 547
    .local v2, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    .line 548
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskViewTransform;

    move/from16 v3, p3

    move/from16 v6, p6

    .line 547
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Z)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v10

    .line 549
    .local v10, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    if-eqz v12, :cond_0

    iget-boolean v1, v10, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    if-eqz v1, :cond_3

    .line 562
    :cond_0
    :goto_2
    iget-object v1, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 543
    :cond_1
    :goto_3
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 533
    .end local v2    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v8    # "i":I
    .end local v10    # "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v12    # "useTargetStackScroll":Z
    :cond_2
    const/4 v12, 0x0

    .restart local v12    # "useTargetStackScroll":Z
    goto :goto_0

    .line 553
    .restart local v2    # "task":Lcom/android/systemui/recents/model/Task;
    .restart local v8    # "i":I
    .restart local v10    # "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    .line 554
    new-instance v3, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v3}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    .line 553
    move/from16 v0, p4

    invoke-virtual {v1, v2, v0, v3, v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v11

    .line 555
    .local v11, "transformAtTarget":Lcom/android/systemui/recents/views/TaskViewTransform;
    iget-boolean v1, v11, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    if-eqz v1, :cond_0

    .line 556
    invoke-virtual {v10, v11}, Lcom/android/systemui/recents/views/TaskViewTransform;->copyFrom(Lcom/android/systemui/recents/views/TaskViewTransform;)V

    goto :goto_2

    .line 568
    .end local v11    # "transformAtTarget":Lcom/android/systemui/recents/views/TaskViewTransform;
    :cond_4
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-nez v1, :cond_5

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v1

    if-nez v1, :cond_1

    .line 572
    :cond_5
    move-object v5, v10

    .line 573
    .local v5, "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    move-object v7, v11

    .line 574
    .local v7, "frontTransformAtTarget":Lcom/android/systemui/recents/views/TaskViewTransform;
    iget-boolean v1, v10, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    if-eqz v1, :cond_1

    .line 575
    const/4 v1, 0x0

    aget v1, v13, v1

    if-gez v1, :cond_6

    .line 576
    const/4 v1, 0x0

    aput v8, v13, v1

    .line 578
    :cond_6
    const/4 v1, 0x1

    aput v8, v13, v1

    goto :goto_3

    .line 581
    .end local v2    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v5    # "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v7    # "frontTransformAtTarget":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v10    # "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    :cond_7
    return-object v13
.end method

.method public createView(Landroid/content/Context;)Lcom/android/systemui/recents/views/TaskView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1640
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040133

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    return-object v0
.end method

.method public bridge synthetic createView(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1639
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->createView(Landroid/content/Context;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 2506
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2507
    .local v1, "innerPrefix":Ljava/lang/String;
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 2509
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "TaskStackView"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2510
    const-string/jumbo v2, " hasDefRelayout="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2511
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/recents/views/AnimationProps;

    if-eqz v2, :cond_1

    const-string/jumbo v2, "Y"

    :goto_0
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2512
    const-string/jumbo v2, " clipDirty="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "Y"

    :goto_1
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2513
    const-string/jumbo v2, " awaitingFirstLayout="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "Y"

    :goto_2
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2514
    const-string/jumbo v2, " initialState="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2515
    const-string/jumbo v2, " inMeasureLayout="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInMeasureLayout:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "Y"

    :goto_3
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2516
    const-string/jumbo v2, " enterAnimCompleted="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "Y"

    :goto_4
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2517
    const-string/jumbo v2, " touchExplorationOn="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchExplorationEnabled:Z

    if-eqz v2, :cond_6

    const-string/jumbo v2, "Y"

    :goto_5
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2518
    const-string/jumbo v2, " screenPinningOn="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    if-eqz v2, :cond_7

    const-string/jumbo v2, "Y"

    :goto_6
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2519
    const-string/jumbo v2, " numIgnoreTasks="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2520
    const-string/jumbo v2, " numViewPool="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/ViewPool;->getViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2521
    const-string/jumbo v2, " stableStackBounds="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableStackBounds:Landroid/graphics/Rect;

    invoke-static {v2}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2522
    const-string/jumbo v2, " stackBounds="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackBounds:Landroid/graphics/Rect;

    invoke-static {v2}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2523
    const-string/jumbo v2, " stableWindow="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableWindowRect:Landroid/graphics/Rect;

    invoke-static {v2}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2524
    const-string/jumbo v2, " window="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    invoke-static {v2}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2525
    const-string/jumbo v2, " display="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-static {v2}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2526
    const-string/jumbo v2, " orientation="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayOrientation:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2527
    const-string/jumbo v2, " [0x"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "]"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2528
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2530
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v2, :cond_0

    .line 2531
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2532
    const-string/jumbo v2, "Focused task: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2533
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3, p2}, Lcom/android/systemui/recents/model/Task;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2536
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v2, v1, p2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2537
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2, v1, p2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 2505
    return-void

    .line 2511
    :cond_1
    const-string/jumbo v2, "N"

    goto/16 :goto_0

    .line 2512
    :cond_2
    const-string/jumbo v2, "N"

    goto/16 :goto_1

    .line 2513
    :cond_3
    const-string/jumbo v2, "N"

    goto/16 :goto_2

    .line 2515
    :cond_4
    const-string/jumbo v2, "N"

    goto/16 :goto_3

    .line 2516
    :cond_5
    const-string/jumbo v2, "N"

    goto/16 :goto_4

    .line 2517
    :cond_6
    const-string/jumbo v2, "N"

    goto/16 :goto_5

    .line 2518
    :cond_7
    const-string/jumbo v2, "N"

    goto/16 :goto_6
.end method

.method public findAnchorTask(Ljava/util/List;Landroid/util/MutableBoolean;)Lcom/android/systemui/recents/model/Task;
    .locals 3
    .param p2, "isFrontMostTask"    # Landroid/util/MutableBoolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;",
            "Landroid/util/MutableBoolean;",
            ")",
            "Lcom/android/systemui/recents/model/Task;"
        }
    .end annotation

    .prologue
    .line 1476
    .local p1, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/model/Task;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1477
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    .line 1480
    .local v1, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->isIgnoredTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1481
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1482
    const/4 v2, 0x1

    iput-boolean v2, p2, Landroid/util/MutableBoolean;->value:Z

    .line 1476
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1486
    :cond_1
    return-object v1

    .line 1488
    .end local v1    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1224
    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getAccessibilityFocusedTask()Lcom/android/systemui/recents/model/Task;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1169
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    .line 1170
    .local v3, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1171
    .local v2, "taskViewCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1172
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskView;

    .line 1173
    .local v4, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-static {v4}, Lcom/android/systemui/recents/misc/Utilities;->isDescendentAccessibilityFocused(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1174
    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v5

    return-object v5

    .line 1171
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1177
    .end local v4    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_1
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/systemui/recents/views/TaskStackView;->getFrontMostTaskView(Z)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    .line 1178
    .local v0, "frontTv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v0, :cond_2

    .line 1179
    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v5

    return-object v5

    .line 1181
    :cond_2
    return-object v6
.end method

.method public getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;
    .locals 5
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    .line 463
    .local v2, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 464
    .local v1, "taskViewCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 465
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    .line 466
    .local v3, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 467
    return-object v3

    .line 464
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 470
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method public getCurrentTaskTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    .local p2, "transformsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/views/TaskViewTransform;>;"
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 786
    invoke-static {p1, p2}, Lcom/android/systemui/recents/misc/Utilities;->matchTaskListSize(Ljava/util/List;Ljava/util/List;)V

    .line 787
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getFocusState()I

    move-result v3

    .line 788
    .local v3, "focusState":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_1

    .line 789
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    .line 790
    .local v1, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 791
    .local v4, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v9

    .line 792
    .local v9, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v9, :cond_0

    .line 793
    invoke-virtual {v4, v9}, Lcom/android/systemui/recents/views/TaskViewTransform;->fillIn(Lcom/android/systemui/recents/views/TaskView;)V

    .line 799
    :goto_1
    iput-boolean v6, v4, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 788
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)Lcom/android/systemui/recents/views/TaskViewTransform;

    goto :goto_1

    .line 785
    .end local v1    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v4    # "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v9    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_1
    return-void
.end method

.method getFocusedTask()Lcom/android/systemui/recents/model/Task;
    .locals 1

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    return-object v0
.end method

.method public getLayoutTaskTransforms(FILjava/util/ArrayList;ZLjava/util/ArrayList;)V
    .locals 9
    .param p1, "stackScroll"    # F
    .param p2, "focusState"    # I
    .param p4, "ignoreTaskOverrides"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FI",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    .local p5, "transformsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/views/TaskViewTransform;>;"
    const/4 v6, 0x1

    .line 809
    invoke-static {p3, p5}, Lcom/android/systemui/recents/misc/Utilities;->matchTaskListSize(Ljava/util/List;Ljava/util/List;)V

    .line 810
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_0

    .line 811
    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    .line 812
    .local v1, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {p5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 813
    .local v4, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    const/4 v5, 0x0

    move v2, p1

    move v3, p2

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FILcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 815
    iput-boolean v6, v4, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    .line 810
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 808
    .end local v1    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v4    # "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    :cond_0
    return-void
.end method

.method public getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .locals 1

    .prologue
    .line 933
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    return-object v0
.end method

.method public getStack()Lcom/android/systemui/recents/model/TaskStack;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    return-object v0
.end method

.method public getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    return-object v0
.end method

.method getTaskViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTouchHandler()Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    return-object v0
.end method

.method public hasPreferredData(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;)Z
    .locals 1
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "preferredData"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 1727
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic hasPreferredData(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "tv"    # Ljava/lang/Object;
    .param p2, "preferredData"    # Ljava/lang/Object;

    .prologue
    .line 1726
    check-cast p1, Lcom/android/systemui/recents/views/TaskView;

    .end local p1    # "tv":Ljava/lang/Object;
    check-cast p2, Lcom/android/systemui/recents/model/Task;

    .end local p2    # "preferredData":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/views/TaskStackView;->hasPreferredData(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;)Z

    move-result v0

    return v0
.end method

.method isIgnoredTask(Lcom/android/systemui/recents/model/Task;)Z
    .locals 2
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isTouchPointInView(FFLcom/android/systemui/recents/views/TaskView;)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "tv"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskView;->getLeft()I

    move-result v1

    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskView;->getTop()I

    move-result v2

    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskView;->getRight()I

    move-result v3

    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1467
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskView;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskView;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1468
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public launchFreeformTasks()Z
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1516
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getFreeformTasks()Ljava/util/ArrayList;

    move-result-object v7

    .line 1517
    .local v7, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1518
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    .line 1519
    .local v2, "frontTask":Lcom/android/systemui/recents/model/Task;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1520
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v8

    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    .line 1521
    const/4 v4, -0x1

    move v6, v5

    .line 1520
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZZ)V

    invoke-virtual {v8, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1522
    const/4 v0, 0x1

    return v0

    .line 1525
    .end local v2    # "frontTask":Lcom/android/systemui/recents/model/Task;
    :cond_0
    return v5
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 335
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 336
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 337
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackView;->readSystemFlags()V

    .line 334
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;

    .prologue
    const/4 v1, 0x1

    .line 2404
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromDeviceOrientationChange:Z

    if-eqz v0, :cond_0

    .line 2407
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 2409
    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromDeviceOrientationChange:Z

    if-nez v0, :cond_2

    .line 2410
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromDisplayDensityChange:Z

    .line 2409
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->reloadOnConfigurationChange(Z)V

    .line 2413
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromMultiWindow:Z

    if-eqz v0, :cond_3

    .line 2414
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    .line 2415
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->requestLayout()V

    .line 2403
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 2409
    goto :goto_0

    .line 2416
    :cond_3
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;->fromDeviceOrientationChange:Z

    if-eqz v0, :cond_1

    .line 2417
    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    .line 2418
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->requestLayout()V

    goto :goto_1
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;)V
    .locals 5
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;

    .prologue
    const/4 v4, 0x0

    .line 1932
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mBlockRelayoutTaskViews:Z

    .line 1935
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->cancelNonDismissTaskAnimations()V

    .line 1936
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 1937
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    .line 1938
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->cancelDeferredTaskViewLayoutAnimation()V

    .line 1941
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreButton:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAppList:Z

    if-eqz v1, :cond_1

    .line 1942
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;

    invoke-direct {v2, v4}, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;-><init>(Z)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1944
    :cond_1
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCloseAllLayout:Z

    if-eqz v1, :cond_2

    .line 1945
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;

    invoke-direct {v2, v4}, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1950
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    iget-boolean v2, p1, Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;->animated:Z

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startExitToHomeAnimation(ZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 1952
    new-instance v1, Lcom/android/systemui/recents/views/TaskStackView$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/TaskStackView$6;-><init>(Lcom/android/systemui/recents/views/TaskStackView;)V

    invoke-virtual {p1, v1}, Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    .line 1961
    const/16 v0, 0xc8

    .line 1962
    .local v0, "taskViewExitToHomeDuration":I
    new-instance v1, Lcom/android/systemui/recents/views/AnimationProps;

    .line 1963
    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 1962
    invoke-direct {v1, v0, v2}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    invoke-direct {p0, v4, v1}, Lcom/android/systemui/recents/views/TaskStackView;->animateFreeformWorkspaceBackgroundAlpha(ILcom/android/systemui/recents/views/AnimationProps;)V

    .line 1930
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2273
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSpreadAnimation:Z

    if-eqz v0, :cond_1

    .line 2274
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    if-eqz v0, :cond_0

    .line 2275
    iput v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingPrepareAnimation:I

    .line 2279
    return-void

    .line 2281
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingPrepareAnimation:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 2286
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingPrepareAnimation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingPrepareAnimation:I

    .line 2287
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 2288
    return-void

    .line 2291
    :cond_1
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreButton:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAppList:Z

    if-eqz v0, :cond_3

    .line 2292
    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 2294
    :cond_3
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCloseAllLayout:Z

    if-eqz v0, :cond_4

    .line 2295
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 2299
    :cond_4
    iput-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    .line 2301
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 2303
    const-string/jumbo v0, "TaskStackView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startEnterAnimation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingPrepareAnimation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startEnterAnimation(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 2309
    new-instance v0, Lcom/android/systemui/recents/views/TaskStackView$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/TaskStackView$9;-><init>(Lcom/android/systemui/recents/views/TaskStackView;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    .line 2335
    :cond_5
    iput v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingPrepareAnimation:I

    .line 2271
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/IterateRecentsEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/IterateRecentsEvent;

    .prologue
    .line 2265
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    if-nez v0, :cond_0

    .line 2267
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 2264
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;)V
    .locals 13
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 1884
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v10

    .line 1885
    .local v10, "launchTaskIndex":I
    if-eq v10, v4, :cond_2

    .line 1886
    add-int/lit8 v0, v10, -0x1

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1890
    :goto_0
    if-eq v10, v4, :cond_4

    .line 1892
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->cancelAllTaskViewAnimations()V

    .line 1894
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    .line 1895
    .local v2, "launchTask":Lcom/android/systemui/recents/model/Task;
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v8

    .line 1896
    .local v8, "curScroll":F
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTaskAtInitialOffset(Lcom/android/systemui/recents/model/Task;)F

    move-result v11

    .line 1897
    .local v11, "targetScroll":F
    sub-float v0, v11, v8

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 1898
    .local v7, "absScrollDiff":F
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_0

    const v0, 0x3eb33333    # 0.35f

    cmpl-float v0, v7, v0

    if-lez v0, :cond_3

    .line 1900
    :cond_0
    const/high16 v0, 0x42000000    # 32.0f

    mul-float/2addr v0, v7

    .line 1899
    const/high16 v1, 0x43580000    # 216.0f

    add-float/2addr v0, v1

    float-to-int v9, v0

    .line 1901
    .local v9, "duration":I
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    .line 1902
    new-instance v1, Lcom/android/systemui/recents/views/TaskStackView$5;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/recents/views/TaskStackView$5;-><init>(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/model/Task;)V

    .line 1901
    invoke-virtual {v0, v11, v9, v1}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateScroll(FILjava/lang/Runnable;)V

    .line 1917
    .end local v9    # "duration":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1918
    iget-object v1, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1917
    const/16 v3, 0x13e

    invoke-static {v0, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 1883
    .end local v2    # "launchTask":Lcom/android/systemui/recents/model/Task;
    .end local v7    # "absScrollDiff":F
    .end local v8    # "curScroll":F
    .end local v11    # "targetScroll":F
    :cond_1
    :goto_2
    return-void

    .line 1888
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    goto :goto_0

    .line 1912
    .restart local v2    # "launchTask":Lcom/android/systemui/recents/model/Task;
    .restart local v7    # "absScrollDiff":F
    .restart local v8    # "curScroll":F
    .restart local v11    # "targetScroll":F
    :cond_3
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v12

    new-instance v0, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;IZZ)V

    invoke-virtual {v12, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_1

    .line 1919
    .end local v2    # "launchTask":Lcom/android/systemui/recents/model/Task;
    .end local v7    # "absScrollDiff":F
    .end local v8    # "curScroll":F
    .end local v11    # "targetScroll":F
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1921
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;

    const/4 v3, 0x1

    invoke-direct {v1, v5, v3}, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_2
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;)V
    .locals 13
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 1816
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSplitLayout:Z

    if-nez v1, :cond_0

    return-void

    .line 1820
    :cond_0
    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 1822
    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskView;->setTouchEnabled(Z)V

    .line 1824
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .line 1825
    .local v9, "parent":Landroid/view/ViewParent;
    if-eqz v9, :cond_1

    .line 1826
    invoke-interface {v9, v11}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1831
    :cond_1
    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->addIgnoreTask(Lcom/android/systemui/recents/model/Task;)V

    .line 1833
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1835
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v2, v2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    invoke-virtual {v1, v2, v12}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateScroll(FLjava/lang/Runnable;)V

    .line 1839
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, p1, Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v4

    .line 1840
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 1839
    invoke-virtual {v1, v2, v4, v6, v12}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 1841
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v2, v2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxTranslationZ:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iput v2, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    .line 1842
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    .line 1843
    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/LaunchSplitTaskEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 1844
    new-instance v4, Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/16 v7, 0xaf

    invoke-direct {v4, v7, v6}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    .line 1843
    invoke-virtual {p0, v1, v2, v4}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 1847
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->isInMultiWindowMode:Z

    if-nez v1, :cond_3

    .line 1851
    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayOrientation:I

    if-ne v1, v11, :cond_4

    .line 1852
    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->TOP:Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 1853
    .local v0, "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    :goto_0
    new-instance v5, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    invoke-direct {v5, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1857
    .local v5, "systemInsets":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 1864
    .local v3, "height":I
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getMeasuredWidth()I

    move-result v2

    .line 1865
    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDividerSize:I

    .line 1866
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    .line 1864
    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/recents/model/TaskStack$DockState;->getDockedTaskStackBounds(Landroid/graphics/Rect;IIILandroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;Landroid/content/res/Resources;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1867
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v1, v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setSystemInsets(Landroid/graphics/Rect;)Z

    .line 1868
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    .line 1869
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-static {v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->getStackStateForStack(Lcom/android/systemui/recents/model/TaskStack;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    move-result-object v7

    .line 1868
    invoke-virtual {v1, v2, v4, v6, v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;)V

    .line 1870
    invoke-virtual {p0, v11}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 1872
    .end local v0    # "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    .end local v3    # "height":I
    .end local v5    # "systemInsets":Landroid/graphics/Rect;
    :cond_3
    new-instance v1, Lcom/android/systemui/recents/views/AnimationProps;

    .line 1873
    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 1872
    const/16 v4, 0xfa

    invoke-direct {v1, v4, v2}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    invoke-direct {p0, v1, v12, v11}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;Landroid/util/ArrayMap;Z)V

    .line 1879
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->clearUnfocusedTaskOverrides()V

    .line 1815
    return-void

    .line 1852
    :cond_4
    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$DockState;->LEFT:Lcom/android/systemui/recents/model/TaskStack$DockState;

    .restart local v0    # "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchTaskEvent;

    .prologue
    .line 1810
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    .line 1808
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;

    .prologue
    .line 1926
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iget-boolean v2, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;->screenPinningRequested:Z

    .line 1927
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v3

    iget-boolean v4, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;->isFreeformTask:Z

    .line 1926
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startLaunchTaskAnimation(Lcom/android/systemui/recents/views/TaskView;ZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;Z)V

    .line 1925
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/MultiWindowSettingChangedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/MultiWindowSettingChangedEvent;

    .prologue
    .line 2399
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/views/TaskStackView$-void_onBusEvent_com_android_systemui_recents_events_activity_MultiWindowSettingChangedEvent_event_LambdaImpl0;

    invoke-direct {v1}, Lcom/android/systemui/recents/views/TaskStackView$-void_onBusEvent_com_android_systemui_recents_events_activity_MultiWindowSettingChangedEvent_event_LambdaImpl0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 2398
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;

    .prologue
    .line 2359
    iget-boolean v1, p1, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->isRecentsActivityVisible:Z

    if-nez v1, :cond_0

    .line 2360
    return-void

    .line 2363
    :cond_0
    iget-boolean v1, p1, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->inMultiWindow:Z

    if-nez v1, :cond_1

    iget-boolean v1, p1, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->showDeferredAnimation:Z

    if-eqz v1, :cond_1

    .line 2367
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    .line 2368
    .local v0, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsActivityLaunchState;->reset()V

    .line 2372
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 2373
    new-instance v1, Lcom/android/systemui/recents/views/TaskStackView$10;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/views/TaskStackView$10;-><init>(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->post(Ljava/lang/Runnable;)Z

    .line 2357
    .end local v0    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    :goto_0
    return-void

    .line 2364
    :cond_1
    iget-object v1, p1, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->stack:Lcom/android/systemui/recents/model/TaskStack;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackView;->setTasks(Lcom/android/systemui/recents/model/TaskStack;Z)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;)V
    .locals 9
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;

    .prologue
    const/4 v8, 0x0

    .line 1788
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    .line 1789
    iget-object v6, p1, Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;->packageName:Ljava/lang/String;

    iget v7, p1, Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;->userId:I

    .line 1788
    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/recents/model/TaskStack;->computeComponentsRemoved(Ljava/lang/String;I)Landroid/util/ArraySet;

    move-result-object v1

    .line 1792
    .local v1, "removedComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v3

    .line 1793
    .local v3, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1794
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    .line 1795
    .local v2, "t":Lcom/android/systemui/recents/model/Task;
    iget-object v5, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1796
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v4

    .line 1797
    .local v4, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v4, :cond_1

    .line 1799
    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskView;->dismissTask()V

    .line 1793
    .end local v4    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1802
    .restart local v4    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    sget-object v6, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual {v5, v2, v6, v8}, Lcom/android/systemui/recents/model/TaskStack;->removeTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;Z)V

    goto :goto_1

    .line 1786
    .end local v2    # "t":Lcom/android/systemui/recents/model/Task;
    .end local v4    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_2
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/PrivateModeChangedEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/PrivateModeChangedEvent;

    .prologue
    .line 2393
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "tv$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    .line 2394
    .local v0, "tv":Lcom/android/systemui/recents/views/TaskView;
    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->invalidate()V

    goto :goto_0

    .line 2392
    .end local v0    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/TaskStackChangedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/TaskStackChangedEvent;

    .prologue
    .line 2387
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSplitLayout:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isInMultiWindowMode:Z

    if-eqz v0, :cond_0

    .line 2388
    iget-object v0, p1, Lcom/android/systemui/recents/events/activity/TaskStackChangedEvent;->stack:Lcom/android/systemui/recents/model/TaskStack;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->setTasks(Lcom/android/systemui/recents/model/TaskStack;Z)V

    .line 2386
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;

    .prologue
    .line 1983
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1985
    .local v0, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 1986
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    .line 1987
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCloseAllLayout:Z

    if-eqz v1, :cond_0

    .line 1988
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mBlockRelayoutTaskViews:Z

    .line 1991
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startDeleteAllTasksAnimation(Ljava/util/List;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 1992
    new-instance v1, Lcom/android/systemui/recents/views/TaskStackView$7;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/recents/views/TaskStackView$7;-><init>(Lcom/android/systemui/recents/views/TaskStackView;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v1}, Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    .line 1981
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DismissTaskViewEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/DismissTaskViewEvent;

    .prologue
    .line 1978
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/DismissTaskViewEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {p1}, Lcom/android/systemui/recents/events/ui/DismissTaskViewEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->startDeleteTaskAnimation(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 1976
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/RecentsGrowingEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/RecentsGrowingEvent;

    .prologue
    .line 2423
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mResetToInitialStateWhenResized:Z

    .line 2422
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;

    .prologue
    const/4 v4, 0x0

    .line 2021
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 2022
    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    aput-object v3, v2, v4

    const v3, 0x7f0f02fb

    .line 2021
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2025
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->animation:Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/recents/model/TaskStack;->removeTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;Z)V

    .line 2027
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableRecentsAppLock:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/model/Task;->isTaskLocked(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2028
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 2029
    .local v0, "lockComponentName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recents/model/LockTaskPreference;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/model/LockTaskPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/recents/model/LockTaskPreference;->removePreference(Landroid/content/Context;Ljava/lang/String;)V

    .line 2032
    .end local v0    # "lockComponentName":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;

    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-direct {v2, v3}, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 2034
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2035
    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/TaskViewDismissedEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2034
    const/16 v3, 0x121

    invoke-static {v1, v3, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 2019
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/UpdateFreeformTaskViewVisibilityEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/UpdateFreeformTaskViewVisibilityEvent;

    .prologue
    .line 2341
    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-eqz v5, :cond_0

    .line 2343
    return-void

    .line 2346
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    .line 2347
    .local v3, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 2348
    .local v2, "taskViewCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 2349
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskView;

    .line 2350
    .local v4, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    .line 2351
    .local v1, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v1}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2352
    iget-boolean v5, p1, Lcom/android/systemui/recents/events/ui/UpdateFreeformTaskViewVisibilityEvent;->visible:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/views/TaskView;->setVisibility(I)V

    .line 2348
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2352
    :cond_2
    const/4 v5, 0x4

    goto :goto_1

    .line 2339
    .end local v1    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v4    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_3
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/UserInteractionEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/UserInteractionEvent;

    .prologue
    .line 2057
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/DozeTrigger;->poke()V

    .line 2059
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getDebugFlags()Lcom/android/systemui/recents/RecentsDebugFlags;

    move-result-object v0

    .line 2060
    .local v0, "debugFlags":Lcom/android/systemui/recents/RecentsDebugFlags;
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsDebugFlags;->isFastToggleRecentsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v2, :cond_0

    .line 2061
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    .line 2062
    .local v1, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v1, :cond_0

    .line 2063
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->cancelFocusTimerIndicator()V

    .line 2055
    .end local v1    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;)V
    .locals 14
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;

    .prologue
    const/4 v13, 0x1

    .line 2105
    new-instance v9, Lcom/android/systemui/recents/views/AnimationProps;

    .line 2106
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 2105
    const/16 v2, 0xfa

    invoke-direct {v9, v2, v1}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    .line 2107
    .local v9, "animation":Lcom/android/systemui/recents/views/AnimationProps;
    const/4 v11, 0x0

    .line 2109
    .local v11, "ignoreTaskOverrides":Z
    const/4 v10, 0x0

    .line 2111
    .local v10, "forceOpacity":Z
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v1, v1, Lcom/android/systemui/recents/model/TaskStack$DockState;

    if-eqz v1, :cond_2

    .line 2114
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    check-cast v0, Lcom/android/systemui/recents/model/TaskStack$DockState;

    .line 2115
    .local v0, "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    new-instance v5, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, v1, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    invoke-direct {v5, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2119
    .local v5, "systemInsets":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getMeasuredHeight()I

    move-result v3

    .line 2126
    .local v3, "height":I
    iget-object v12, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getMeasuredWidth()I

    move-result v2

    .line 2127
    iget v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDividerSize:I

    .line 2128
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    .line 2126
    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/recents/model/TaskStack$DockState;->getDockedTaskStackBounds(Landroid/graphics/Rect;IIILandroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;Landroid/content/res/Resources;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2129
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v1, v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setSystemInsets(Landroid/graphics/Rect;)Z

    .line 2130
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackBounds:Landroid/graphics/Rect;

    .line 2131
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-static {v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->getStackStateForStack(Lcom/android/systemui/recents/model/TaskStack;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    move-result-object v7

    .line 2130
    invoke-virtual {v1, v2, v4, v6, v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;)V

    .line 2132
    invoke-virtual {p0, v13}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 2133
    const/4 v11, 0x1

    .line 2162
    .end local v0    # "dockState":Lcom/android/systemui/recents/model/TaskStack$DockState;
    .end local v3    # "height":I
    .end local v5    # "systemInsets":Landroid/graphics/Rect;
    :goto_0
    if-eqz v10, :cond_0

    .line 2163
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iput-boolean v13, v1, Lcom/android/systemui/recents/RecentsConfiguration;->forceOpacity:Z

    .line 2166
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v9, v1, v11}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;Landroid/util/ArrayMap;Z)V

    .line 2168
    if-eqz v10, :cond_1

    .line 2169
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/systemui/recents/RecentsConfiguration;->forceOpacity:Z

    .line 2104
    :cond_1
    return-void

    .line 2135
    :cond_2
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v1, v1, Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    if-eqz v1, :cond_4

    .line 2136
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->isInMultiWindowMode:Z

    iput-boolean v2, v1, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    .line 2139
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->removeIgnoreTask(Lcom/android/systemui/recents/model/Task;)V

    .line 2140
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-eqz v1, :cond_3

    .line 2141
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDrageStartedScrollP:F

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    .line 2144
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutToStableBounds()V

    .line 2145
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->addIgnoreTask(Lcom/android/systemui/recents/model/Task;)V

    .line 2146
    const/4 v10, 0x1

    goto :goto_0

    .line 2149
    :cond_4
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->isInMultiWindowMode:Z

    iput-boolean v2, v1, Lcom/android/systemui/recents/RecentsConfiguration;->isSplitScreenLayout:Z

    .line 2152
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->removeIgnoreTask(Lcom/android/systemui/recents/model/Task;)V

    .line 2154
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-eqz v1, :cond_5

    .line 2155
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDrageStartedScrollP:F

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    .line 2158
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutToStableBounds()V

    .line 2159
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragDropTargetChangedEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->addIgnoreTask(Lcom/android/systemui/recents/model/Task;)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;

    .prologue
    const/16 v5, 0xfa

    .line 2248
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->removeIgnoreTask(Lcom/android/systemui/recents/model/Task;)V

    .line 2249
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutToStableBounds()V

    .line 2252
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/Utilities;->setViewFrameFromTranslation(Landroid/view/View;)V

    .line 2255
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 2256
    .local v0, "animationOverrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;>;"
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;->task:Lcom/android/systemui/recents/model/Task;

    new-instance v2, Lcom/android/systemui/recents/views/AnimationProps;

    .line 2257
    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 2258
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v4

    .line 2256
    invoke-direct {v2, v5, v3, v4}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2259
    new-instance v1, Lcom/android/systemui/recents/views/AnimationProps;

    .line 2260
    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 2259
    invoke-direct {v1, v5, v2}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 2261
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndCancelledEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 2246
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V
    .locals 9
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;

    .prologue
    const/16 v8, 0xfa

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 2176
    iget-object v5, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v5, v5, Lcom/android/systemui/recents/model/TaskStack$DockState;

    if-eqz v5, :cond_2

    .line 2179
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->clearUnfocusedTaskOverrides()V

    .line 2181
    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapAction:Z

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-eqz v4, :cond_0

    .line 2182
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    const/4 v3, -0x1

    .line 2183
    .local v3, "targetScroll":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v6, v6, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    add-float/2addr v5, v6

    const/16 v6, 0x12c

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateScroll(FILjava/lang/Runnable;)V

    .line 2186
    .end local v3    # "targetScroll":I
    :cond_0
    return-void

    .line 2182
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v4

    float-to-int v3, v4

    .restart local v3    # "targetScroll":I
    goto :goto_0

    .line 2189
    .end local v3    # "targetScroll":I
    :cond_2
    iget-object v5, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v2

    .line 2191
    .local v2, "isFreeformTask":Z
    if-nez v2, :cond_8

    iget-object v5, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    if-ne v5, v6, :cond_8

    move v1, v4

    .line 2194
    .local v1, "hasChangedStacks":Z
    :cond_3
    :goto_1
    if-eqz v1, :cond_7

    .line 2198
    iget-object v5, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    if-ne v5, v6, :cond_9

    .line 2199
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v6, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/recents/model/TaskStack;->moveTaskToStack(Lcom/android/systemui/recents/model/Task;I)V

    .line 2206
    :cond_4
    :goto_2
    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableDozeTrigger:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/DozeTrigger;->isAsleep()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2207
    :cond_5
    iget-object v5, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskView;->setNoUserInteractionState()V

    .line 2210
    :cond_6
    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 2213
    new-instance v4, Lcom/android/systemui/recents/views/TaskStackView$8;

    invoke-direct {v4, p0, p1}, Lcom/android/systemui/recents/views/TaskStackView$8;-><init>(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;)V

    invoke-virtual {p1, v4}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    .line 2223
    :cond_7
    iget-object v4, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/TaskStackView;->removeIgnoreTask(Lcom/android/systemui/recents/model/Task;)V

    .line 2227
    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v4, :cond_a

    .line 2228
    iget-object v4, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    instance-of v4, v4, Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    .line 2227
    if-eqz v4, :cond_a

    .line 2230
    return-void

    .line 2192
    .end local v1    # "hasChangedStacks":Z
    :cond_8
    if-eqz v2, :cond_3

    iget-object v5, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    if-ne v5, v6, :cond_3

    move v1, v4

    goto :goto_1

    .line 2200
    .restart local v1    # "hasChangedStacks":Z
    :cond_9
    iget-object v5, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->dropTarget:Lcom/android/systemui/recents/views/DropTarget;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    if-ne v5, v6, :cond_4

    .line 2201
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v6, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v5, v6, v4}, Lcom/android/systemui/recents/model/TaskStack;->moveTaskToStack(Lcom/android/systemui/recents/model/Task;I)V

    goto :goto_2

    .line 2233
    :cond_a
    iget-object v4, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-static {v4}, Lcom/android/systemui/recents/misc/Utilities;->setViewFrameFromTranslation(Landroid/view/View;)V

    .line 2237
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 2238
    .local v0, "animationOverrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;>;"
    iget-object v4, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->task:Lcom/android/systemui/recents/model/Task;

    new-instance v5, Lcom/android/systemui/recents/views/AnimationProps;

    .line 2239
    sget-object v6, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 2240
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v7

    .line 2238
    invoke-direct {v5, v8, v6, v7}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2241
    new-instance v4, Lcom/android/systemui/recents/views/AnimationProps;

    .line 2242
    sget-object v5, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 2241
    invoke-direct {v4, v8, v5}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 2243
    invoke-virtual {p1}, Lcom/android/systemui/recents/events/ui/dragndrop/DragEndEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 2174
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;

    .prologue
    const/4 v5, 0x0

    .line 2070
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDrageStartedScrollP:F

    .line 2073
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->addIgnoreTask(Lcom/android/systemui/recents/model/Task;)V

    .line 2075
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2077
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v2, v2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    invoke-virtual {v1, v2, v5}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateScroll(FLjava/lang/Runnable;)V

    .line 2081
    :cond_0
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v1

    const v2, 0x3f866666    # 1.05f

    mul-float v0, v1, v2

    .line 2082
    .local v0, "finalScale":F
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v3

    .line 2083
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 2082
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 2084
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-eqz v1, :cond_1

    .line 2085
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->animationScale:F

    .line 2086
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    .line 2090
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v2, v2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxTranslationZ:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iput v2, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    .line 2091
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    .line 2092
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartEvent;->taskView:Lcom/android/systemui/recents/views/TaskView;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 2093
    new-instance v3, Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v4, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/16 v5, 0xaf

    invoke-direct {v3, v5, v4}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    .line 2092
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 2068
    return-void

    .line 2088
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/dragndrop/DragStartInitializeDropTargetsEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/dragndrop/DragStartInitializeDropTargetsEvent;

    .prologue
    .line 2097
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 2098
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasFreeformWorkspaceSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2099
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartInitializeDropTargetsEvent;->handler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->registerDropTargetForCurrentDrag(Lcom/android/systemui/recents/views/DropTarget;)V

    .line 2100
    iget-object v1, p1, Lcom/android/systemui/recents/events/ui/dragndrop/DragStartInitializeDropTargetsEvent;->handler:Lcom/android/systemui/recents/views/RecentsViewTouchHandler;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/RecentsViewTouchHandler;->registerDropTargetForCurrentDrag(Lcom/android/systemui/recents/views/DropTarget;)V

    .line 2096
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/focus/DismissFocusedTaskViewEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/focus/DismissFocusedTaskViewEvent;

    .prologue
    .line 1967
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v1, :cond_1

    .line 1968
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    .line 1969
    .local v0, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v0, :cond_0

    .line 1970
    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->dismissTask()V

    .line 1972
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask(Lcom/android/systemui/recents/model/Task;)V

    .line 1966
    .end local v0    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_1
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;)V
    .locals 6
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2040
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 2041
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    .line 2044
    iget v5, p1, Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;->timerIndicatorDuration:I

    move-object v0, p0

    move v3, v1

    move v4, v2

    .line 2043
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackView;->setRelativeFocusedTask(ZZZZI)V

    .line 2038
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/focus/FocusPreviousTaskViewEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/focus/FocusPreviousTaskViewEvent;

    .prologue
    const/4 v1, 0x0

    .line 2049
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    .line 2050
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    .line 2052
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v1, v0}, Lcom/android/systemui/recents/views/TaskStackView;->setRelativeFocusedTask(ZZZ)V

    .line 2047
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 342
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 343
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 341
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1493
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1496
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 1497
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasFreeformWorkspaceSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1498
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->getAlpha()I

    move-result v1

    if-lez v1, :cond_0

    .line 1499
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1492
    :cond_0
    return-void
.end method

.method onFirstLayout()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1436
    const-string/jumbo v4, "TaskStackView"

    const-string/jumbo v5, "prepareForEnterAnimation"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAnimationHelper:Lcom/android/systemui/recents/views/TaskStackAnimationHelper;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->prepareForEnterAnimation()V

    .line 1442
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackState()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    move-result-object v4

    iget v1, v4, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->freeformBackgroundAlpha:I

    .line 1443
    .local v1, "ffBgAlpha":I
    new-instance v4, Lcom/android/systemui/recents/views/AnimationProps;

    .line 1444
    sget-object v5, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 1443
    const/16 v6, 0x96

    invoke-direct {v4, v6, v5}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/recents/views/TaskStackView;->animateFreeformWorkspaceBackgroundAlpha(ILcom/android/systemui/recents/views/AnimationProps;)V

    .line 1448
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 1449
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v3

    .line 1450
    .local v3, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/RecentsActivityLaunchState;->getInitialFocusTaskIndex(I)I

    move-result v2

    .line 1451
    .local v2, "focusedTaskIndex":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 1452
    invoke-direct {p0, v2, v7, v7}, Lcom/android/systemui/recents/views/TaskStackView;->setFocusedTask(IZZ)Z

    .line 1457
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v4

    const v5, 0x3e99999a    # 0.3f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 1458
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 1459
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/activity/ShowStackActionButtonEvent;

    invoke-direct {v5, v7}, Lcom/android/systemui/recents/events/activity/ShowStackActionButtonEvent;-><init>(Z)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1434
    :goto_0
    return-void

    .line 1461
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/activity/HideStackActionButtonEvent;

    invoke-direct {v5}, Lcom/android/systemui/recents/events/activity/HideStackActionButtonEvent;-><init>()V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0
.end method

.method public onFocusStateChanged(II)V
    .locals 1
    .param p1, "prevFocusState"    # I
    .param p2, "curFocusState"    # I

    .prologue
    .line 1757
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/recents/views/AnimationProps;

    if-nez v0, :cond_0

    .line 1758
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->poke()V

    .line 1759
    sget-object v0, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViewsOnNextFrame(Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 1756
    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v5, 0x0

    .line 1186
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1187
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v4

    .line 1188
    .local v4, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 1189
    .local v3, "taskViewCount":I
    if-lez v3, :cond_0

    .line 1190
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    .line 1191
    .local v0, "backMostTask":Lcom/android/systemui/recents/views/TaskView;
    add-int/lit8 v5, v3, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskView;

    .line 1192
    .local v1, "frontMostTask":Lcom/android/systemui/recents/views/TaskView;
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 1193
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 1194
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1196
    .end local v0    # "backMostTask":Lcom/android/systemui/recents/views/TaskView;
    .end local v1    # "frontMostTask":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 1198
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 1199
    .local v2, "stackHeight":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1200
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget v5, v5, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMaxScrollP:F

    int-to-float v6, v2

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1185
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v4, 0x1

    .line 1205
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1206
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    .line 1207
    .local v3, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1208
    .local v2, "taskViewCount":I
    if-le v2, v4, :cond_1

    .line 1210
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getAccessibilityFocusedTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    .line 1211
    .local v0, "focusedTask":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 1212
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v1

    .line 1213
    .local v1, "focusedTaskIndex":I
    if-lez v1, :cond_0

    .line 1214
    const/16 v4, 0x2000

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1216
    :cond_0
    if-ltz v1, :cond_1

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_1

    .line 1217
    const/16 v4, 0x1000

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1204
    .end local v0    # "focusedTask":Lcom/android/systemui/recents/model/Task;
    .end local v1    # "focusedTaskIndex":I
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v4, 0x0

    .line 1384
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1385
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1386
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/ViewPool;->getViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1387
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 1388
    .local v1, "taskViewCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1389
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/recents/views/TaskStackView;->layoutTaskView(ZLcom/android/systemui/recents/views/TaskView;)V

    .line 1388
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1392
    :cond_0
    if-eqz p1, :cond_1

    .line 1393
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->isScrollOutOfBounds()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1394
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->boundScroll()Z

    .line 1399
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mBlockRelayoutTaskViews:Z

    if-nez v2, :cond_2

    .line 1402
    sget-object v2, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 1403
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackView;->clipTaskViews()V

    .line 1406
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    if-eqz v2, :cond_3

    .line 1382
    :goto_1
    return-void

    .line 1407
    :cond_3
    iput-boolean v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    .line 1408
    iput v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    .line 1409
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->onFirstLayout()V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v11, 0x0

    .line 1308
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInMeasureLayout:Z

    .line 1309
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 1310
    .local v10, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 1315
    .local v6, "height":I
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v11, v11, v10, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1316
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mSystemInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    .line 1315
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getTaskStackBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 1317
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1318
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableStackBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1319
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1320
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v11, v11, v10, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1321
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v11, v11, v10, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 1325
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableWindowRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableStackBounds:Landroid/graphics/Rect;

    .line 1326
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-static {v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->getStackStateForStack(Lcom/android/systemui/recents/model/TaskStack;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    move-result-object v4

    .line 1325
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;)V

    .line 1327
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mWindowRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackBounds:Landroid/graphics/Rect;

    .line 1328
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-static {v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->getStackStateForStack(Lcom/android/systemui/recents/model/TaskStack;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    move-result-object v4

    .line 1327
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;)V

    .line 1329
    invoke-virtual {p0, v11}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 1333
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLastWidth:I

    if-ne v10, v0, :cond_1

    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLastHeight:I

    if-eq v6, v0, :cond_6

    .line 1334
    :cond_1
    iget-boolean v8, p0, Lcom/android/systemui/recents/views/TaskStackView;->mResetToInitialStateWhenResized:Z

    .line 1335
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    if-eqz v0, :cond_7

    .line 1337
    :cond_2
    :goto_1
    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    if-eqz v8, :cond_4

    .line 1338
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->updateToInitialState()V

    .line 1339
    iput-boolean v11, p0, Lcom/android/systemui/recents/views/TaskStackView;->mResetToInitialStateWhenResized:Z

    .line 1341
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-nez v0, :cond_5

    .line 1342
    iput v11, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    .line 1347
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v0

    invoke-virtual {p0, v0, v11}, Lcom/android/systemui/recents/views/TaskStackView;->bindVisibleTaskViews(FZ)V

    .line 1350
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1351
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1352
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/ViewPool;->getViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1353
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    .line 1354
    .local v9, "taskViewCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v9, :cond_8

    .line 1355
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->measureTaskView(Lcom/android/systemui/recents/views/TaskView;)V

    .line 1354
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1333
    .end local v7    # "i":I
    .end local v9    # "taskViewCount":I
    :cond_6
    const/4 v8, 0x0

    .local v8, "resetToInitialState":Z
    goto :goto_0

    .line 1335
    .end local v8    # "resetToInitialState":Z
    :cond_7
    if-eqz v8, :cond_5

    goto :goto_1

    .line 1358
    .restart local v7    # "i":I
    .restart local v9    # "taskViewCount":I
    :cond_8
    invoke-virtual {p0, v10, v6}, Lcom/android/systemui/recents/views/TaskStackView;->setMeasuredDimension(II)V

    .line 1359
    iput v10, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLastWidth:I

    .line 1360
    iput v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLastHeight:I

    .line 1361
    iput-boolean v11, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInMeasureLayout:Z

    .line 1307
    return-void
.end method

.method public onPickUpViewFromPool(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Z)V
    .locals 8
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p3, "isNewView"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1671
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5, p2}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v2

    .line 1672
    .local v2, "taskIndex":I
    invoke-direct {p0, p2, v2}, Lcom/android/systemui/recents/views/TaskStackView;->findTaskViewInsertIndex(Lcom/android/systemui/recents/model/Task;I)I

    move-result v0

    .line 1675
    .local v0, "insertIndex":I
    if-eqz p3, :cond_6

    .line 1676
    iget-boolean v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInMeasureLayout:Z

    if-eqz v5, :cond_4

    .line 1679
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskStackView;->addView(Landroid/view/View;I)V

    .line 1695
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewsList()V

    .line 1698
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/views/TaskStackView;->bindTaskView(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;)V

    .line 1701
    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableDozeTrigger:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/DozeTrigger;->isAsleep()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1702
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->setNoUserInteractionState()V

    .line 1706
    :cond_1
    invoke-virtual {p1, p0}, Lcom/android/systemui/recents/views/TaskView;->setCallbacks(Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;)V

    .line 1707
    invoke-virtual {p1, v3}, Lcom/android/systemui/recents/views/TaskView;->setTouchEnabled(Z)V

    .line 1708
    invoke-virtual {p1, v3}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 1709
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    if-ne v5, p2, :cond_2

    .line 1710
    invoke-virtual {p1, v3, v4}, Lcom/android/systemui/recents/views/TaskView;->setFocusedState(ZZ)V

    .line 1711
    iget v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStartTimerIndicatorDuration:I

    if-lez v5, :cond_2

    .line 1713
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getHeaderView()Lcom/android/systemui/recents/views/TaskViewHeader;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStartTimerIndicatorDuration:I

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->startFocusTimerIndicator(I)V

    .line 1714
    iput v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStartTimerIndicatorDuration:I

    .line 1719
    :cond_2
    iget-boolean v5, p0, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v5

    .line 1720
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    sget-boolean v7, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-eqz v7, :cond_7

    :goto_1
    invoke-virtual {v6, v3}, Lcom/android/systemui/recents/model/TaskStack;->getStackFrontMostTask(Z)Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    .line 1719
    if-ne v5, v3, :cond_3

    .line 1721
    invoke-virtual {p1, v4, v4}, Lcom/android/systemui/recents/views/TaskView;->showActionButton(ZI)V

    .line 1669
    :cond_3
    return-void

    .line 1683
    :cond_4
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1684
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_5

    .line 1685
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    .line 1687
    :cond_5
    invoke-virtual {p0, p1, v0, v1, v3}, Lcom/android/systemui/recents/views/TaskStackView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 1688
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->measureTaskView(Lcom/android/systemui/recents/views/TaskView;)V

    .line 1689
    invoke-direct {p0, v3, p1}, Lcom/android/systemui/recents/views/TaskStackView;->layoutTaskView(ZLcom/android/systemui/recents/views/TaskView;)V

    goto :goto_0

    .line 1692
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {p0, p1, v0, v5}, Lcom/android/systemui/recents/views/TaskStackView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_7
    move v3, v4

    .line 1720
    goto :goto_1
.end method

.method public bridge synthetic onPickUpViewFromPool(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "tv"    # Ljava/lang/Object;
    .param p2, "task"    # Ljava/lang/Object;
    .param p3, "isNewView"    # Z

    .prologue
    .line 1669
    check-cast p1, Lcom/android/systemui/recents/views/TaskView;

    .end local p1    # "tv":Ljava/lang/Object;
    check-cast p2, Lcom/android/systemui/recents/model/Task;

    .end local p2    # "task":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/recents/views/TaskStackView;->onPickUpViewFromPool(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Z)V

    return-void
.end method

.method onReload(Z)V
    .locals 8
    .param p1, "isResumingFromVisible"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 350
    if-nez p1, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getFocusedTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask(Lcom/android/systemui/recents/model/Task;)V

    .line 356
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v2, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 358
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/ViewPool;->getViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 359
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 360
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/views/TaskView;->onReload(Z)V

    .line 359
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 364
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskStackView;->readSystemFlags()V

    .line 365
    iput-boolean v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    .line 366
    iput-boolean v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    .line 367
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    .line 368
    if-eqz p1, :cond_2

    .line 370
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackState()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    move-result-object v3

    iget v0, v3, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->freeformBackgroundAlpha:I

    .line 371
    .local v0, "ffBgAlpha":I
    new-instance v3, Lcom/android/systemui/recents/views/AnimationProps;

    .line 372
    sget-object v4, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 371
    const/16 v5, 0x96

    invoke-direct {v3, v5, v4}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/recents/views/TaskStackView;->animateFreeformWorkspaceBackgroundAlpha(ILcom/android/systemui/recents/views/AnimationProps;)V

    .line 381
    .end local v0    # "ffBgAlpha":I
    :goto_1
    iput-boolean v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    .line 382
    iput v7, p0, Lcom/android/systemui/recents/views/TaskStackView;->mInitialState:I

    .line 384
    iput v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingPrepareAnimation:I

    .line 385
    iput-boolean v6, p0, Lcom/android/systemui/recents/views/TaskStackView;->mBlockRelayoutTaskViews:Z

    .line 387
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->requestLayout()V

    .line 349
    return-void

    .line 374
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->reset()V

    .line 375
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->reset()V

    .line 376
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->reset()V

    goto :goto_1
.end method

.method public onReturnViewToPool(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 3
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    const/4 v2, 0x0

    .line 1645
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    .line 1648
    .local v0, "task":Lcom/android/systemui/recents/model/Task;
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskStackView;->unbindTaskView(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;)V

    .line 1651
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->clearAccessibilityFocus()V

    .line 1652
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->resetViewProperties()V

    .line 1653
    invoke-virtual {p1, v2, v2}, Lcom/android/systemui/recents/views/TaskView;->setFocusedState(ZZ)V

    .line 1655
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->clearAccessibilityFocus()V

    .line 1657
    invoke-virtual {p1, v2}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 1658
    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    if-eqz v1, :cond_0

    .line 1659
    const/4 v1, 0x0

    invoke-virtual {p1, v2, v2, v2, v1}, Lcom/android/systemui/recents/views/TaskView;->hideActionButton(ZIZLandroid/animation/Animator$AnimatorListener;)V

    .line 1663
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->detachViewFromParent(Landroid/view/View;)V

    .line 1665
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewsList()V

    .line 1644
    return-void
.end method

.method public bridge synthetic onReturnViewToPool(Ljava/lang/Object;)V
    .locals 0
    .param p1, "tv"    # Ljava/lang/Object;

    .prologue
    .line 1644
    check-cast p1, Lcom/android/systemui/recents/views/TaskView;

    .end local p1    # "tv":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->onReturnViewToPool(Lcom/android/systemui/recents/views/TaskView;)V

    return-void
.end method

.method public onStackScrollChanged(FFLcom/android/systemui/recents/views/AnimationProps;)V
    .locals 3
    .param p1, "prevScroll"    # F
    .param p2, "curScroll"    # F
    .param p3, "animation"    # Lcom/android/systemui/recents/views/AnimationProps;

    .prologue
    const v1, 0x3e99999a    # 0.3f

    .line 1767
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->poke()V

    .line 1768
    if-eqz p3, :cond_0

    .line 1769
    invoke-virtual {p0, p3}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViewsOnNextFrame(Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 1772
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mEnterAnimationComplete:Z

    if-eqz v0, :cond_1

    .line 1773
    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    .line 1774
    cmpg-float v0, p2, v1

    if-gtz v0, :cond_2

    .line 1775
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1776
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/ShowStackActionButtonEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/activity/ShowStackActionButtonEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1766
    :cond_1
    :goto_0
    return-void

    .line 1777
    :cond_2
    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    .line 1778
    cmpl-float v0, p2, v1

    if-ltz v0, :cond_1

    .line 1779
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/HideStackActionButtonEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/HideStackActionButtonEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0
.end method

.method public onStackTaskAdded(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;)V
    .locals 3
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "newTask"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 1533
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 1536
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mAwaitingFirstLayout:Z

    if-eqz v0, :cond_0

    .line 1537
    sget-object v0, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    .line 1536
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 1531
    return-void

    .line 1538
    :cond_0
    new-instance v0, Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/16 v2, 0xc8

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;)V

    goto :goto_0
.end method

.method public onStackTaskRemoved(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/AnimationProps;ZZ)V
    .locals 7
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "removedTask"    # Lcom/android/systemui/recents/model/Task;
    .param p3, "newFrontMostTask"    # Lcom/android/systemui/recents/model/Task;
    .param p4, "animation"    # Lcom/android/systemui/recents/views/AnimationProps;
    .param p5, "fromDockGesture"    # Z
    .param p6, "launchHome"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1547
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    if-ne v4, p2, :cond_0

    .line 1548
    invoke-virtual {p0, p2}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask(Lcom/android/systemui/recents/model/Task;)V

    .line 1553
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v1

    .line 1554
    .local v1, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v1, :cond_1

    .line 1555
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v4, v1}, Lcom/android/systemui/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    .line 1559
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/systemui/recents/views/TaskStackView;->removeIgnoreTask(Lcom/android/systemui/recents/model/Task;)V

    .line 1562
    if-eqz p4, :cond_2

    .line 1563
    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 1564
    invoke-virtual {p0, p4}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 1568
    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    if-eqz v4, :cond_3

    if-eqz p3, :cond_3

    .line 1569
    invoke-virtual {p0, p3}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    .line 1570
    .local v0, "frontTv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v0, :cond_3

    .line 1571
    const/16 v4, 0xc8

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/recents/views/TaskView;->showActionButton(ZI)V

    .line 1576
    .end local v0    # "frontTv":Lcom/android/systemui/recents/views/TaskView;
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v4

    if-nez v4, :cond_6

    .line 1578
    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCloseAllLayout:Z

    if-eqz v4, :cond_4

    .line 1579
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;

    invoke-direct {v5, v2}, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1582
    :cond_4
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v5

    new-instance v6, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;

    if-eqz p5, :cond_7

    .line 1583
    const v4, 0x7f0f046c

    .line 1585
    :goto_0
    if-eqz p6, :cond_5

    if-eqz p5, :cond_8

    .line 1582
    :cond_5
    :goto_1
    invoke-direct {v6, v4, v2}, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;-><init>(IZ)V

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1546
    :cond_6
    return-void

    .line 1584
    :cond_7
    const v4, 0x7f0f046d

    goto :goto_0

    :cond_8
    move v2, v3

    .line 1585
    goto :goto_1
.end method

.method public onStackTasksRemoved(Lcom/android/systemui/recents/model/TaskStack;)V
    .locals 6
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;

    .prologue
    const/4 v4, 0x0

    .line 1592
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getFocusedTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask(Lcom/android/systemui/recents/model/Task;)V

    .line 1595
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1596
    .local v1, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1597
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1598
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/recents/views/ViewPool;->returnViewToPool(Ljava/lang/Object;)V

    .line 1597
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1602
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 1605
    iput-boolean v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mBlockRelayoutTaskViews:Z

    .line 1609
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;

    .line 1610
    const v4, 0x7f0f046d

    .line 1611
    const/4 v5, 0x1

    .line 1609
    invoke-direct {v3, v4, v5}, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;-><init>(IZ)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1590
    return-void
.end method

.method public onStackTasksUpdated(Lcom/android/systemui/recents/model/TaskStack;)V
    .locals 5
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;

    .prologue
    .line 1617
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 1618
    sget-object v4, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 1622
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    .line 1623
    .local v2, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 1624
    .local v1, "taskViewCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1625
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskView;

    .line 1626
    .local v3, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/recents/views/TaskStackView;->bindTaskView(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;)V

    .line 1629
    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableDozeTrigger:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mUIDozeTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/DozeTrigger;->isAsleep()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1630
    :cond_0
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskView;->setNoUserInteractionState()V

    .line 1624
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1615
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_2
    return-void
.end method

.method public onTaskViewClipStateChanged(Lcom/android/systemui/recents/views/TaskView;)V
    .locals 1
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    .line 1747
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    if-nez v0, :cond_0

    .line 1748
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViewsClipDirty:Z

    .line 1749
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->invalidate()V

    .line 1746
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTouchHandler:Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 5
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1229
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1230
    return v3

    .line 1232
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getAccessibilityFocusedTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    .line 1233
    .local v0, "focusedTask":Lcom/android/systemui/recents/model/Task;
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v1

    .line 1234
    .local v1, "taskIndex":I
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1235
    sparse-switch p1, :sswitch_data_0

    .line 1248
    :cond_1
    return v4

    .line 1237
    :sswitch_0
    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2, v3, v3, v4}, Lcom/android/systemui/recents/views/TaskStackView;->setFocusedTask(IZZI)Z

    .line 1239
    return v3

    .line 1242
    :sswitch_1
    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2, v3, v3, v4}, Lcom/android/systemui/recents/views/TaskStackView;->setFocusedTask(IZZI)Z

    .line 1244
    return v3

    .line 1235
    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;)V
    .locals 2
    .param p1, "animation"    # Lcom/android/systemui/recents/views/AnimationProps;

    .prologue
    .line 706
    const/4 v0, 0x0

    .line 707
    const/4 v1, 0x0

    .line 706
    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->relayoutTaskViews(Lcom/android/systemui/recents/views/AnimationProps;Landroid/util/ArrayMap;Z)V

    .line 705
    return-void
.end method

.method relayoutTaskViewsOnNextFrame(Lcom/android/systemui/recents/views/AnimationProps;)V
    .locals 0
    .param p1, "animation"    # Lcom/android/systemui/recents/views/AnimationProps;

    .prologue
    .line 761
    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDeferredTaskViewLayoutAnimation:Lcom/android/systemui/recents/views/AnimationProps;

    .line 762
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->invalidate()V

    .line 760
    return-void
.end method

.method public reloadOnConfigurationChange(Z)V
    .locals 5
    .param p1, "displayUpdated"    # Z

    .prologue
    .line 2428
    if-eqz p1, :cond_0

    .line 2429
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayOrientation:I

    .line 2430
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    .line 2432
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 2433
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2434
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/ViewPool;->getViews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2435
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 2436
    .local v1, "taskViewCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2437
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpTaskViews:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    iget v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayOrientation:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskStackView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/recents/views/TaskView;->onConfigurationChanged(ILandroid/graphics/Rect;)V

    .line 2436
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2441
    .end local v0    # "i":I
    .end local v1    # "taskViewCount":I
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->reloadOnConfigurationChange(Landroid/content/Context;)V

    .line 2442
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->reloadOnConfigurationChange(Landroid/content/Context;)V

    .line 2426
    return-void
.end method

.method removeIgnoreTask(Lcom/android/systemui/recents/model/Task;)V
    .locals 2
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 495
    return-void
.end method

.method resetFocusedTask(Lcom/android/systemui/recents/model/Task;)V
    .locals 3
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1149
    if-eqz p1, :cond_0

    .line 1150
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v0

    .line 1151
    .local v0, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v0, :cond_0

    .line 1152
    invoke-virtual {v0, v2, v2}, Lcom/android/systemui/recents/views/TaskView;->setFocusedState(ZZ)V

    .line 1155
    .end local v0    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    .line 1148
    return-void
.end method

.method public setRelativeFocusedTask(ZZZ)V
    .locals 6
    .param p1, "forward"    # Z
    .param p2, "stackTasksOnly"    # Z
    .param p3, "animated"    # Z

    .prologue
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    .line 1029
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackView;->setRelativeFocusedTask(ZZZZI)V

    .line 1028
    return-void
.end method

.method public setRelativeFocusedTask(ZZZZI)V
    .locals 17
    .param p1, "forward"    # Z
    .param p2, "stackTasksOnly"    # Z
    .param p3, "animated"    # Z
    .param p4, "cancelWindowAnimations"    # Z
    .param p5, "timerIndicatorDuration"    # I

    .prologue
    .line 1047
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskStackView;->getFocusedTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    .line 1048
    .local v2, "focusedTask":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v13, v2}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v3

    .line 1049
    .local v3, "newIndex":I
    if-eqz v2, :cond_b

    .line 1050
    if-eqz p2, :cond_7

    .line 1051
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v13}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v9

    .line 1052
    .local v9, "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/model/Task;>;"
    sget-boolean v13, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-nez v13, :cond_4

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1054
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getFrontMostTaskView(Z)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v11

    .line 1055
    .local v11, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-eqz v11, :cond_0

    .line 1056
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v11}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v3

    .line 1075
    .end local v9    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/model/Task;>;"
    .end local v11    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    :goto_0
    if-eqz p1, :cond_9

    .line 1076
    sget-boolean v13, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreButton:Z

    if-nez v13, :cond_1

    sget-boolean v13, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAppList:Z

    if-eqz v13, :cond_2

    .line 1077
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v13}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v3, v13, :cond_2

    .line 1078
    const/4 v3, -0x1

    .line 1079
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask(Lcom/android/systemui/recents/model/Task;)V

    .line 1080
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v13

    new-instance v14, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;

    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-direct/range {v14 .. v16}, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;-><init>(ZZ)V

    invoke-virtual {v13, v14}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1134
    :cond_2
    :goto_1
    const/4 v13, -0x1

    if-eq v3, v13, :cond_3

    .line 1135
    const/4 v13, 0x1

    .line 1136
    const/4 v14, 0x1

    .line 1135
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v3, v13, v14, v1}, Lcom/android/systemui/recents/views/TaskStackView;->setFocusedTask(IZZI)Z

    move-result v12

    .line 1137
    .local v12, "willScroll":Z
    if-eqz v12, :cond_3

    if-eqz p4, :cond_3

    .line 1140
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v13

    new-instance v14, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;-><init>(Lcom/android/systemui/recents/model/Task;)V

    invoke-virtual {v13, v14}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1046
    .end local v12    # "willScroll":Z
    :cond_3
    return-void

    .line 1060
    .restart local v9    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/model/Task;>;"
    :cond_4
    if-eqz p1, :cond_6

    const/4 v13, -0x1

    :goto_2
    add-int v10, v3, v13

    .line 1061
    .local v10, "tmpNewIndex":I
    if-ltz v10, :cond_0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    if-ge v10, v13, :cond_0

    .line 1062
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recents/model/Task;

    .line 1063
    .local v5, "t":Lcom/android/systemui/recents/model/Task;
    sget-boolean v13, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-nez v13, :cond_5

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v13

    if-nez v13, :cond_0

    .line 1064
    :cond_5
    move v3, v10

    goto :goto_0

    .line 1060
    .end local v5    # "t":Lcom/android/systemui/recents/model/Task;
    .end local v10    # "tmpNewIndex":I
    :cond_6
    const/4 v13, 0x1

    goto :goto_2

    .line 1071
    .end local v9    # "tasks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/model/Task;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v13}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v6

    .line 1072
    .local v6, "taskCount":I
    if-eqz p1, :cond_8

    const/4 v13, -0x1

    :goto_3
    add-int/2addr v13, v3

    add-int/2addr v13, v6

    rem-int v3, v13, v6

    goto :goto_0

    :cond_8
    const/4 v13, 0x1

    goto :goto_3

    .line 1082
    .end local v6    # "taskCount":I
    :cond_9
    sget-boolean v13, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCloseAllLayout:Z

    if-eqz v13, :cond_2

    .line 1083
    if-nez v3, :cond_a

    .line 1084
    const/4 v3, -0x1

    .line 1085
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask(Lcom/android/systemui/recents/model/Task;)V

    .line 1086
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v13

    new-instance v14, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;

    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-direct/range {v14 .. v16}, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;-><init>(ZZ)V

    invoke-virtual {v13, v14}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1088
    :cond_a
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v13

    new-instance v14, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v13, v14}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_1

    .line 1093
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v13}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v4

    .line 1094
    .local v4, "stackScroll":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v13}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v8

    .line 1095
    .local v8, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1096
    .restart local v6    # "taskCount":I
    if-eqz p1, :cond_f

    .line 1098
    add-int/lit8 v3, v6, -0x1

    :goto_4
    if-ltz v3, :cond_c

    .line 1099
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v14, v13}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v7

    .line 1100
    .local v7, "taskP":F
    invoke-static {v7, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v13

    if-gtz v13, :cond_e

    .line 1114
    .end local v7    # "taskP":F
    :cond_c
    if-eqz p1, :cond_10

    .line 1115
    sget-boolean v13, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreButton:Z

    if-nez v13, :cond_d

    sget-boolean v13, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAppList:Z

    if-eqz v13, :cond_2

    .line 1116
    :cond_d
    if-nez v3, :cond_2

    .line 1119
    const/4 v3, -0x1

    .line 1120
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v13

    new-instance v14, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;

    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-direct/range {v14 .. v16}, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;-><init>(ZZ)V

    invoke-virtual {v13, v14}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto/16 :goto_1

    .line 1098
    .restart local v7    # "taskP":F
    :cond_e
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 1106
    .end local v7    # "taskP":F
    :cond_f
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v6, :cond_c

    .line 1107
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v14, v13}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v7

    .line 1108
    .restart local v7    # "taskP":F
    invoke-static {v7, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v13

    if-gez v13, :cond_c

    .line 1106
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1122
    .end local v7    # "taskP":F
    :cond_10
    sget-boolean v13, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCloseAllLayout:Z

    if-eqz v13, :cond_2

    .line 1123
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v13}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v3, v13, :cond_11

    .line 1126
    const/4 v3, -0x1

    .line 1127
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTask:Lcom/android/systemui/recents/model/Task;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/recents/views/TaskStackView;->resetFocusedTask(Lcom/android/systemui/recents/model/Task;)V

    .line 1128
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v13

    new-instance v14, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;

    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-direct/range {v14 .. v16}, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;-><init>(ZZ)V

    invoke-virtual {v13, v14}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1130
    :cond_11
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v13

    new-instance v14, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v13, v14}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto/16 :goto_1
.end method

.method public setSystemInsets(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "systemInsets"    # Landroid/graphics/Rect;

    .prologue
    .line 1295
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStableLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setSystemInsets(Landroid/graphics/Rect;)Z

    move-result v0

    .line 1296
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setSystemInsets(Landroid/graphics/Rect;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1297
    if-eqz v0, :cond_0

    .line 1298
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->requestLayout()V

    .line 1293
    :cond_0
    return-void
.end method

.method public setTasks(Lcom/android/systemui/recents/model/TaskStack;Z)V
    .locals 4
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "allowNotifyStackChanges"    # Z

    .prologue
    .line 394
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->isInitialized()Z

    move-result v0

    .line 398
    .local v0, "isInitialized":Z
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/recents/model/TaskStack;->computeAllTasksList()Ljava/util/ArrayList;

    move-result-object v3

    .line 399
    if-eqz p2, :cond_0

    .line 398
    .end local v0    # "isInitialized":Z
    :goto_0
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/recents/model/TaskStack;->setTasks(Landroid/content/Context;Ljava/util/List;Z)V

    .line 393
    return-void

    .line 399
    .restart local v0    # "isInitialized":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateLayoutAlgorithm(Z)V
    .locals 4
    .param p1, "boundScrollToNewMinMax"    # Z

    .prologue
    .line 905
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mIgnoreTasks:Landroid/util/ArraySet;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->update(Lcom/android/systemui/recents/model/TaskStack;Landroid/util/ArraySet;)V

    .line 908
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 909
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasFreeformWorkspaceSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 910
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v2, v2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mFreeformRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 911
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackground:Landroid/graphics/drawable/GradientDrawable;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 914
    :cond_0
    if-eqz p1, :cond_1

    .line 915
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->boundScroll()Z

    .line 903
    :cond_1
    return-void
.end method

.method public updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V
    .locals 1
    .param p1, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "transform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p3, "animation"    # Lcom/android/systemui/recents/views/AnimationProps;

    .prologue
    .line 772
    invoke-virtual {p1, p2}, Lcom/android/systemui/recents/views/TaskView;->isAnimatingTo(Lcom/android/systemui/recents/views/TaskViewTransform;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    return-void

    .line 775
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->cancelTransformAnimation()V

    .line 777
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mRequestUpdateClippingListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 776
    invoke-virtual {p1, p2, p3, v0}, Lcom/android/systemui/recents/views/TaskView;->updateViewPropertiesToTaskTransform(Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 770
    return-void
.end method

.method updateTaskViewsList()V
    .locals 4

    .prologue
    .line 422
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 423
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v0

    .line 424
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 425
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 426
    .local v2, "v":Landroid/view/View;
    instance-of v3, v2, Lcom/android/systemui/recents/views/TaskView;

    if-eqz v3, :cond_0

    .line 427
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackView;->mTaskViews:Ljava/util/ArrayList;

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    .end local v2    # "v":Landroid/view/View;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 421
    :cond_1
    return-void
.end method

.method public updateToInitialState()V
    .locals 3

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStackScroller:Lcom/android/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScrollToInitialState()Z

    .line 413
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapAction:Z

    if-nez v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setTaskOverridesForInitialState(Lcom/android/systemui/recents/model/TaskStack;Z)V

    .line 410
    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1506
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackView;->mFreeformWorkspaceBackground:Landroid/graphics/drawable/GradientDrawable;

    if-ne p1, v0, :cond_0

    .line 1507
    const/4 v0, 0x1

    return v0

    .line 1509
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method
