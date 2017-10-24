.class public Lcom/android/systemui/recents/views/TaskStackAnimationHelper;
.super Ljava/lang/Object;
.source "TaskStackAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/TaskStackAnimationHelper$-void_startDeleteTaskAnimation_com_android_systemui_recents_views_TaskView_deleteTaskView_com_android_systemui_recents_misc_ReferenceCountedTrigger_postAnimationTrigger_LambdaImpl0;,
        Lcom/android/systemui/recents/views/TaskStackAnimationHelper$-void_startDeleteTaskAnimation_com_android_systemui_recents_views_TaskView_deleteTaskView_com_android_systemui_recents_misc_ReferenceCountedTrigger_postAnimationTrigger_LambdaImpl1;
    }
.end annotation


# static fields
.field private static final DISMISS_ALL_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final ENTER_FROM_HOME_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final ENTER_FROM_HOME_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final ENTER_WHILE_DOCKING_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final EXIT_TO_HOME_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final FOCUS_BEHIND_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final FOCUS_IN_FRONT_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final FOCUS_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mPreparedNewScroll:F

.field private mStackView:Lcom/android/systemui/recents/views/TaskStackView;

.field private mTmpCurrentTaskTransforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpFinalTaskTransforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;


# direct methods
.method static synthetic -com_android_systemui_recents_views_TaskStackAnimationHelper_lambda$1(Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;Lcom/android/systemui/recents/views/TaskView;)V
    .locals 0
    .param p0, "touchHandler"    # Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;
    .param p1, "deleteTaskView"    # Lcom/android/systemui/recents/views/TaskView;

    .prologue
    .line 554
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->onChildDismissed(Landroid/view/View;)V

    .line 0
    return-void
.end method

.method static synthetic -com_android_systemui_recents_views_TaskStackAnimationHelper_lambda$2(Lcom/android/systemui/recents/views/TaskView;FLcom/android/systemui/recents/views/TaskStackViewTouchHandler;Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p0, "deleteTaskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p1, "dismissSize"    # F
    .param p2, "touchHandler"    # Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;
    .param p3, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 561
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 562
    .local v0, "progress":F
    mul-float v1, v0, p1

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskView;->setTranslationX(F)V

    .line 563
    const/4 v1, 0x1

    invoke-virtual {p2, p0, v1, v0}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->updateSwipeProgress(Landroid/view/View;ZF)Z

    .line 0
    return-void
.end method

.method static synthetic -get0()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_BEHIND_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;)Lcom/android/systemui/recents/views/TaskStackView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const v4, 0x3ecccccd    # 0.4f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 98
    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 97
    sput-object v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->ENTER_FROM_HOME_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 99
    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->ENTER_FROM_HOME_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 103
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f19999a    # 0.6f

    invoke-direct {v0, v4, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 102
    sput-object v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->EXIT_TO_HOME_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 108
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 107
    sput-object v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->DISMISS_ALL_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 111
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v4, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 110
    sput-object v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 113
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v2, v2, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 112
    sput-object v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_IN_FRONT_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 115
    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 114
    sput-object v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_BEHIND_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 118
    sget-object v0, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 117
    sput-object v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->ENTER_WHILE_DOCKING_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/views/TaskStackView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v0}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpCurrentTaskTransforms:Ljava/util/ArrayList;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpFinalTaskTransforms:Ljava/util/ArrayList;

    .line 131
    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 130
    return-void
.end method

.method private calculateStaggeredAnimDuration(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    const/16 v1, 0x64

    .line 825
    add-int/lit8 v0, p1, -0x1

    mul-int/lit8 v0, v0, 0x32

    add-int/lit8 v0, v0, 0x64

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public prepareForEnterAnimation()V
    .locals 32

    .prologue
    .line 139
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v7

    .line 140
    .local v7, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v7}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v14

    .line 141
    .local v14, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/recents/views/TaskStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 142
    .local v19, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 144
    .local v5, "appResources":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v22

    .line 145
    .local v22, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v23

    .line 146
    .local v23, "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v21

    .line 147
    .local v21, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v15

    .line 150
    .local v15, "launchTargetTask":Lcom/android/systemui/recents/model/Task;
    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v29

    if-nez v29, :cond_0

    .line 151
    return-void

    .line 154
    :cond_0
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->height()I

    move-result v17

    .line 156
    .local v17, "offscreenYOffset":I
    const v29, 0x7f0d035e

    .line 155
    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    .line 158
    .local v25, "taskViewAffiliateGroupEnterOffset":I
    const v29, 0x7f0d035f

    .line 157
    move-object/from16 v0, v19

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 159
    .local v16, "launchedWhileDockingOffset":I
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v29, v0

    .line 160
    const/16 v30, 0x2

    .line 159
    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_4

    const/4 v13, 0x1

    .line 163
    .local v13, "isLandscape":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v26

    .line 168
    .local v26, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getUntransformedTaskViewBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 170
    .local v6, "bounds":Landroid/graphics/Rect;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->width()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const v30, 0x3f333333    # 0.7f

    mul-float v29, v29, v30

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    div-float v20, v29, v30

    .line 172
    .local v20, "scale":F
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v29

    move-object/from16 v0, v29

    iget v9, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFullscreenTaskId:I

    .line 173
    .local v9, "fullscreenTaskId":I
    sget-boolean v29, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-eqz v29, :cond_1

    .line 174
    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mPreparedNewScroll:F

    .line 175
    const/16 v29, -0x1

    move/from16 v0, v29

    if-eq v9, v0, :cond_1

    .line 176
    const/4 v10, 0x0

    .line 177
    .local v10, "hasFreeformTask":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v27

    .line 178
    .local v27, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v29

    add-int/lit8 v12, v29, -0x1

    .local v12, "i":I
    :goto_1
    if-ltz v12, :cond_1

    .line 179
    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/systemui/recents/model/Task;

    .line 180
    .local v24, "task":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-ne v0, v9, :cond_5

    .line 181
    if-eqz v10, :cond_1

    .line 183
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v29

    .line 182
    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getCalibratedStackScroll(F)F

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mPreparedNewScroll:F

    .line 184
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mPreparedNewScroll:F

    move/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(FLcom/android/systemui/recents/views/AnimationProps;)V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mPreparedNewScroll:F

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Lcom/android/systemui/recents/views/TaskStackView;->bindVisibleTaskViews(F)V

    .line 196
    .end local v10    # "hasFreeformTask":Z
    .end local v12    # "i":I
    .end local v24    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v27    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_1
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v29

    add-int/lit8 v12, v29, -0x1

    .restart local v12    # "i":I
    :goto_2
    if-ltz v12, :cond_14

    .line 197
    move-object/from16 v0, v26

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/systemui/recents/views/TaskView;

    .line 198
    .local v28, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v24

    .line 199
    .restart local v24    # "task":Lcom/android/systemui/recents/model/Task;
    if-eqz v15, :cond_7

    .line 200
    iget-object v0, v15, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    move-object/from16 v29, v0

    if-eqz v29, :cond_7

    .line 201
    iget-object v0, v15, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v15}, Lcom/android/systemui/recents/model/TaskGrouping;->isTaskAboveTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;)Z

    move-result v8

    .line 202
    :goto_3
    if-eqz v15, :cond_8

    .line 203
    invoke-virtual {v15}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v29

    .line 202
    if-eqz v29, :cond_8

    .line 204
    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v11

    .line 207
    :goto_4
    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v30, v0

    .line 208
    const/16 v31, 0x0

    .line 207
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v29

    move-object/from16 v3, v30

    move-object/from16 v4, v31

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 211
    sget-boolean v29, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSpreadAnimation:Z

    if-eqz v29, :cond_2

    iget-boolean v0, v14, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    move/from16 v29, v0

    if-eqz v29, :cond_9

    .line 225
    :cond_2
    if-eqz v11, :cond_e

    .line 226
    const/16 v29, 0x4

    invoke-virtual/range {v28 .. v29}, Lcom/android/systemui/recents/views/TaskView;->setVisibility(I)V

    .line 196
    :cond_3
    :goto_5
    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    .line 159
    .end local v6    # "bounds":Landroid/graphics/Rect;
    .end local v9    # "fullscreenTaskId":I
    .end local v12    # "i":I
    .end local v13    # "isLandscape":Z
    .end local v20    # "scale":F
    .end local v24    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v26    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    .end local v28    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_4
    const/4 v13, 0x0

    .restart local v13    # "isLandscape":Z
    goto/16 :goto_0

    .line 188
    .restart local v6    # "bounds":Landroid/graphics/Rect;
    .restart local v9    # "fullscreenTaskId":I
    .restart local v10    # "hasFreeformTask":Z
    .restart local v12    # "i":I
    .restart local v20    # "scale":F
    .restart local v24    # "task":Lcom/android/systemui/recents/model/Task;
    .restart local v26    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    .restart local v27    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_5
    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v29

    if-eqz v29, :cond_6

    .line 189
    const/4 v10, 0x1

    .line 178
    :cond_6
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_1

    .line 199
    .end local v10    # "hasFreeformTask":Z
    .end local v27    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    .restart local v28    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_7
    const/4 v8, 0x0

    .local v8, "currentTaskOccludesLaunchTarget":Z
    goto :goto_3

    .line 202
    .end local v8    # "currentTaskOccludesLaunchTarget":Z
    :cond_8
    const/4 v11, 0x0

    .local v11, "hideTask":Z
    goto :goto_4

    .line 212
    .end local v11    # "hideTask":Z
    :cond_9
    iget-boolean v0, v14, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    move/from16 v29, v0

    if-eqz v29, :cond_c

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v29, v0

    move/from16 v0, v20

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->animationScale:F

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v29, v0

    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    .line 216
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v29

    add-int/lit8 v29, v29, -0x1

    move/from16 v0, v29

    if-eq v12, v0, :cond_a

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v29

    add-int/lit8 v29, v29, -0x2

    move/from16 v0, v29

    if-ne v12, v0, :cond_d

    .line 218
    :cond_a
    :goto_6
    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 220
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 222
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v30, v0

    sget-object v31, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto/16 :goto_5

    .line 217
    :cond_d
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v29

    add-int/lit8 v29, v29, -0x3

    move/from16 v0, v29

    if-ne v12, v0, :cond_b

    goto :goto_6

    .line 227
    :cond_e
    iget-boolean v0, v14, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    move/from16 v29, v0

    if-eqz v29, :cond_f

    iget-boolean v0, v14, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    move/from16 v29, v0

    if-eqz v29, :cond_10

    .line 238
    :cond_f
    iget-boolean v0, v14, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    move/from16 v29, v0

    if-eqz v29, :cond_12

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/graphics/RectF;->offset(FF)V

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v30, v0

    sget-object v31, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto/16 :goto_5

    .line 228
    :cond_10
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    move/from16 v29, v0

    if-eqz v29, :cond_11

    .line 229
    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/recents/views/TaskView;->onPrepareLaunchTargetForEnterAnimation()V

    goto/16 :goto_5

    .line 230
    :cond_11
    if-eqz v8, :cond_3

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/graphics/RectF;->offset(FF)V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v30, v0

    .line 235
    sget-object v31, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    .line 234
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 236
    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    goto/16 :goto_5

    .line 243
    :cond_12
    iget-boolean v0, v14, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    move/from16 v29, v0

    if-eqz v29, :cond_3

    .line 244
    if-eqz v13, :cond_13

    .line 245
    move/from16 v18, v16

    .line 247
    .local v18, "offset":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Landroid/graphics/RectF;->offset(FF)V

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v30, v0

    sget-object v31, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto/16 :goto_5

    .line 246
    .end local v18    # "offset":I
    :cond_13
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v29, v0

    const v30, 0x3f666666    # 0.9f

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v18, v0

    .restart local v18    # "offset":I
    goto :goto_7

    .line 138
    .end local v18    # "offset":I
    .end local v24    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v28    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_14
    return-void
.end method

.method public startDeleteAllTasksAnimation(Ljava/util/List;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 13
    .param p2, "postAnimationTrigger"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            ">;",
            "Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    const/4 v12, 0x0

    .line 579
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v2

    .line 581
    .local v2, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskStackView;->getMeasuredWidth()I

    move-result v9

    iget-object v10, v2, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mTaskRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int v1, v9, v10

    .line 583
    .local v1, "offscreenXOffset":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    .line 584
    .local v7, "taskViewCount":I
    add-int/lit8 v0, v7, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 585
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/views/TaskView;

    .line 587
    .local v8, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    .line 588
    .local v4, "task":Lcom/android/systemui/recents/model/Task;
    sget-boolean v9, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableRecentsAppLock:Z

    if-eqz v9, :cond_0

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/android/systemui/recents/model/Task;->isTaskLocked(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 584
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 592
    :cond_0
    sub-int v9, v7, v0

    add-int/lit8 v6, v9, -0x1

    .line 593
    .local v6, "taskIndexFromFront":I
    mul-int/lit8 v3, v6, 0x21

    .line 596
    .local v3, "startDelay":I
    invoke-virtual {v8, v12}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 599
    new-instance v5, Lcom/android/systemui/recents/views/AnimationProps;

    .line 600
    sget-object v9, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->DISMISS_ALL_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 601
    new-instance v10, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$7;

    invoke-direct {v10, p0, p2, v8}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$7;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;Lcom/android/systemui/recents/views/TaskView;)V

    .line 600
    const/16 v11, 0xc8

    .line 599
    invoke-direct {v5, v3, v11, v9, v10}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(IILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    .line 610
    .local v5, "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    invoke-virtual {p2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 612
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v9, v8}, Lcom/android/systemui/recents/views/TaskViewTransform;->fillIn(Lcom/android/systemui/recents/views/TaskView;)V

    .line 613
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v9, v9, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    int-to-float v10, v1

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/graphics/RectF;->offset(FF)V

    .line 614
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v9, v8, v10, v5}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto :goto_1

    .line 578
    .end local v3    # "startDelay":I
    .end local v4    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v5    # "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    .end local v6    # "taskIndexFromFront":I
    .end local v8    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_1
    return-void
.end method

.method public startDeleteTaskAnimation(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 6
    .param p1, "deleteTaskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "postAnimationTrigger"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    .line 549
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getTouchHandler()Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;

    move-result-object v2

    .line 550
    .local v2, "touchHandler":Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;
    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->onBeginManualDrag(Lcom/android/systemui/recents/views/TaskView;)V

    .line 552
    invoke-virtual {p2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 553
    new-instance v3, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$-void_startDeleteTaskAnimation_com_android_systemui_recents_views_TaskView_deleteTaskView_com_android_systemui_recents_misc_ReferenceCountedTrigger_postAnimationTrigger_LambdaImpl0;

    invoke-direct {v3, v2, p1}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$-void_startDeleteTaskAnimation_com_android_systemui_recents_views_TaskView_deleteTaskView_com_android_systemui_recents_misc_ReferenceCountedTrigger_postAnimationTrigger_LambdaImpl0;-><init>(Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;Lcom/android/systemui/recents/views/TaskView;)V

    invoke-virtual {p2, v3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    .line 557
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewTouchHandler;->getScaledDismissSize()F

    move-result v1

    .line 558
    .local v1, "dismissSize":F
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 559
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v4, 0x190

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 560
    new-instance v3, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$-void_startDeleteTaskAnimation_com_android_systemui_recents_views_TaskView_deleteTaskView_com_android_systemui_recents_misc_ReferenceCountedTrigger_postAnimationTrigger_LambdaImpl1;

    invoke-direct {v3, p1, v1, v2}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$-void_startDeleteTaskAnimation_com_android_systemui_recents_views_TaskView_deleteTaskView_com_android_systemui_recents_misc_ReferenceCountedTrigger_postAnimationTrigger_LambdaImpl1;-><init>(Lcom/android/systemui/recents/views/TaskView;FLcom/android/systemui/recents/views/TaskStackViewTouchHandler;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 565
    new-instance v3, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$6;

    invoke-direct {v3, p0, p2}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$6;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 571
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 548
    return-void

    .line 558
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startEnterAnimation(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 30
    .param p1, "postAnimationTrigger"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    .line 259
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v7

    .line 260
    .local v7, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v7}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v11

    .line 261
    .local v11, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/recents/views/TaskStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 262
    .local v13, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/recents/views/TaskStackView;->getContext()Landroid/content/Context;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 264
    .local v6, "appRes":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v16

    .line 265
    .local v16, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v17

    .line 266
    .local v17, "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v15

    .line 267
    .local v15, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v15}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v12

    .line 270
    .local v12, "launchTargetTask":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v15}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v27

    if-nez v27, :cond_0

    .line 271
    return-void

    .line 275
    :cond_0
    const v27, 0x7f0c003a

    .line 274
    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v24

    .line 277
    .local v24, "taskViewEnterFromAppDuration":I
    const v27, 0x7f0c003b

    .line 276
    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v23

    .line 279
    .local v23, "taskViewEnterFromAffiliatedAppDuration":I
    const v27, 0x7f0c0043

    .line 278
    move/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 282
    .local v9, "dockGestureAnimDuration":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v25

    .line 283
    .local v25, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v22

    .line 286
    .local v22, "taskViewCount":I
    const/4 v14, 0x0

    .line 287
    .local v14, "runnable":Ljava/lang/Runnable;
    sget-boolean v27, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-eqz v27, :cond_1

    iget-boolean v0, v11, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    move/from16 v27, v0

    if-eqz v27, :cond_7

    .line 298
    .end local v14    # "runnable":Ljava/lang/Runnable;
    :cond_1
    :goto_0
    sget-boolean v27, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-eqz v27, :cond_2

    iget-boolean v0, v11, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2

    .line 299
    iget-boolean v0, v11, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    move/from16 v27, v0

    if-eqz v27, :cond_8

    .line 311
    :cond_2
    sget-boolean v27, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-eqz v27, :cond_3

    if-eqz v14, :cond_3

    .line 312
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    .line 315
    :cond_3
    add-int/lit8 v10, v22, -0x1

    .local v10, "i":I
    :goto_1
    if-ltz v10, :cond_b

    .line 316
    sub-int v27, v22, v10

    add-int/lit8 v21, v27, -0x1

    .line 317
    .local v21, "taskIndexFromFront":I
    move/from16 v20, v10

    .line 318
    .local v20, "taskIndexFromBack":I
    move-object/from16 v0, v25

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/systemui/recents/views/TaskView;

    .line 319
    .local v26, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v18

    .line 320
    .local v18, "task":Lcom/android/systemui/recents/model/Task;
    if-eqz v12, :cond_c

    .line 321
    iget-object v0, v12, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    move-object/from16 v27, v0

    if-eqz v27, :cond_c

    .line 322
    iget-object v0, v12, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Lcom/android/systemui/recents/model/TaskGrouping;->isTaskAboveTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;)Z

    move-result v8

    .line 326
    :goto_2
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v28, v0

    .line 327
    const/16 v29, 0x0

    .line 326
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move/from16 v2, v27

    move-object/from16 v3, v28

    move-object/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 330
    sget-boolean v27, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSpreadAnimation:Z

    if-eqz v27, :cond_4

    iget-boolean v0, v11, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    move/from16 v27, v0

    if-eqz v27, :cond_d

    .line 350
    :cond_4
    iget-boolean v0, v11, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    move/from16 v27, v0

    if-eqz v27, :cond_5

    iget-boolean v0, v11, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    move/from16 v27, v0

    if-eqz v27, :cond_e

    .line 372
    :cond_5
    iget-boolean v0, v11, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    move/from16 v27, v0

    if-eqz v27, :cond_10

    .line 375
    new-instance v27, Lcom/android/systemui/recents/views/AnimationProps;

    invoke-direct/range {v27 .. v27}, Lcom/android/systemui/recents/views/AnimationProps;-><init>()V

    .line 377
    const/16 v28, 0x5

    move/from16 v0, v28

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v28

    mul-int/lit8 v28, v28, 0x21

    .line 376
    const/16 v29, 0x6

    .line 375
    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/AnimationProps;->setInitialPlayTime(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v27

    .line 380
    const/16 v28, 0x5

    move/from16 v0, v28

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v28

    mul-int/lit8 v28, v28, 0x10

    .line 379
    const/16 v29, 0x4

    .line 375
    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/AnimationProps;->setStartDelay(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v27

    .line 382
    const/16 v28, 0x6

    const/16 v29, 0x12c

    .line 375
    invoke-virtual/range {v27 .. v29}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v27

    .line 383
    const/16 v28, 0x4

    const/16 v29, 0x64

    .line 375
    invoke-virtual/range {v27 .. v29}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v27

    .line 385
    sget-object v28, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->ENTER_FROM_HOME_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 384
    const/16 v29, 0x6

    .line 375
    move-object/from16 v0, v27

    move/from16 v1, v29

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v27

    .line 386
    sget-object v28, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->ENTER_FROM_HOME_ALPHA_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/16 v29, 0x4

    .line 375
    move-object/from16 v0, v27

    move/from16 v1, v29

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v27

    .line 387
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v28

    .line 375
    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/recents/views/AnimationProps;->setListener(Landroid/animation/Animator$AnimatorListener;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v19

    .line 388
    .local v19, "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 390
    add-int/lit8 v27, v22, -0x1

    move/from16 v0, v27

    if-ne v10, v0, :cond_6

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/recents/views/TaskView;->onStartFrontTaskEnterAnimation(Z)V

    .line 315
    .end local v19    # "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    :cond_6
    :goto_3
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_1

    .line 289
    .end local v10    # "i":I
    .end local v18    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v20    # "taskIndexFromBack":I
    .end local v21    # "taskIndexFromFront":I
    .end local v26    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .restart local v14    # "runnable":Ljava/lang/Runnable;
    :cond_7
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mPreparedNewScroll:F

    move/from16 v28, v0

    cmpl-float v27, v27, v28

    if-nez v27, :cond_1

    .line 290
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v27

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    move/from16 v28, v0

    cmpl-float v27, v27, v28

    if-eqz v27, :cond_1

    .line 291
    new-instance v14, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$1;

    .end local v14    # "runnable":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-direct {v14, v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$1;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/views/TaskStackViewScroller;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;)V

    .local v14, "runnable":Ljava/lang/Runnable;
    goto/16 :goto_0

    .line 300
    .end local v14    # "runnable":Ljava/lang/Runnable;
    :cond_8
    if-eqz v14, :cond_9

    .line 301
    new-instance v27, Landroid/os/Handler;

    invoke-direct/range {v27 .. v27}, Landroid/os/Handler;-><init>()V

    const-wide/16 v28, 0x190

    move-object/from16 v0, v27

    move-wide/from16 v1, v28

    invoke-virtual {v0, v14, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 303
    :cond_9
    if-nez v22, :cond_a

    .line 304
    return-void

    .line 306
    :cond_a
    add-int/lit8 v27, v22, -0x1

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/systemui/recents/views/TaskView;

    .line 307
    .restart local v26    # "tv":Lcom/android/systemui/recents/views/TaskView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v27, v0

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    move/from16 v28, v0

    .line 307
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v24

    move/from16 v3, v28

    move-object/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskView;->onStartLaunchTargetEnterAnimation(Lcom/android/systemui/recents/views/TaskViewTransform;IZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    .line 258
    .end local v26    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_b
    return-void

    .line 320
    .restart local v10    # "i":I
    .restart local v18    # "task":Lcom/android/systemui/recents/model/Task;
    .restart local v20    # "taskIndexFromBack":I
    .restart local v21    # "taskIndexFromFront":I
    .restart local v26    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_c
    const/4 v8, 0x0

    .local v8, "currentTaskOccludesLaunchTarget":Z
    goto/16 :goto_2

    .line 332
    .end local v8    # "currentTaskOccludesLaunchTarget":Z
    :cond_d
    new-instance v19, Lcom/android/systemui/recents/views/AnimationProps;

    sget-object v27, Lcom/android/systemui/Interpolators;->SINE_IN_OUT90:Landroid/view/animation/Interpolator;

    .line 333
    new-instance v28, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$2;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$2;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;Lcom/android/systemui/recents/views/TaskView;)V

    .line 332
    const/16 v29, 0x190

    move-object/from16 v0, v19

    move/from16 v1, v29

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    .line 340
    .restart local v19    # "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    const/16 v27, 0x4

    const/16 v28, 0xe9

    move-object/from16 v0, v19

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    .line 341
    const/16 v27, 0x3

    const/16 v28, 0xc8

    move-object/from16 v0, v19

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/AnimationProps;->setStartDelay(II)Lcom/android/systemui/recents/views/AnimationProps;

    .line 342
    const/16 v27, 0x3

    const/16 v28, 0xc8

    move-object/from16 v0, v19

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    .line 343
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 345
    add-int/lit8 v27, v22, -0x1

    move/from16 v0, v27

    if-ne v10, v0, :cond_6

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/android/systemui/recents/views/TaskView;->onStartFrontTaskEnterAnimation(Z)V

    goto/16 :goto_3

    .line 351
    .end local v19    # "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    :cond_e
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    move/from16 v27, v0

    if-eqz v27, :cond_f

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v27, v0

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/systemui/recents/views/TaskStackView;->mScreenPinningEnabled:Z

    move/from16 v28, v0

    .line 352
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v24

    move/from16 v3, v28

    move-object/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskView;->onStartLaunchTargetEnterAnimation(Lcom/android/systemui/recents/views/TaskViewTransform;IZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    goto/16 :goto_3

    .line 357
    :cond_f
    if-eqz v8, :cond_6

    .line 358
    new-instance v19, Lcom/android/systemui/recents/views/AnimationProps;

    .line 359
    sget-object v27, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 360
    new-instance v28, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$3;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$3;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;Lcom/android/systemui/recents/views/TaskView;)V

    .line 358
    move-object/from16 v0, v19

    move/from16 v1, v23

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    .line 367
    .restart local v19    # "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto/16 :goto_3

    .line 393
    .end local v19    # "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    :cond_10
    iget-boolean v0, v11, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    move/from16 v27, v0

    if-eqz v27, :cond_6

    .line 395
    new-instance v27, Lcom/android/systemui/recents/views/AnimationProps;

    invoke-direct/range {v27 .. v27}, Lcom/android/systemui/recents/views/AnimationProps;-><init>()V

    .line 397
    mul-int/lit8 v28, v20, 0x21

    .line 396
    add-int v28, v28, v9

    const/16 v29, 0x6

    .line 395
    move-object/from16 v0, v27

    move/from16 v1, v29

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v27

    .line 399
    sget-object v28, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->ENTER_WHILE_DOCKING_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 398
    const/16 v29, 0x6

    .line 395
    move-object/from16 v0, v27

    move/from16 v1, v29

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v27

    .line 400
    const/16 v28, 0x6

    const/16 v29, 0x30

    .line 395
    invoke-virtual/range {v27 .. v29}, Lcom/android/systemui/recents/views/AnimationProps;->setStartDelay(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v27

    .line 401
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v28

    .line 395
    invoke-virtual/range {v27 .. v28}, Lcom/android/systemui/recents/views/AnimationProps;->setListener(Landroid/animation/Animator$AnimatorListener;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v19

    .line 402
    .restart local v19    # "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto/16 :goto_3
.end method

.method public startExitToHomeAnimation(ZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 19
    .param p1, "animated"    # Z
    .param p2, "postAnimationTrigger"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v9

    .line 415
    .local v9, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v8

    .line 418
    .local v8, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v8}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v16

    if-nez v16, :cond_0

    .line 419
    return-void

    .line 422
    :cond_0
    iget-object v0, v9, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mStackRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 427
    .local v6, "offscreenYOffset":I
    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getUntransformedTaskViewBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 429
    .local v3, "bounds":Landroid/graphics/Rect;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const v17, 0x3f333333    # 0.7f

    mul-float v16, v16, v17

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v7, v16, v17

    .line 433
    .local v7, "scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v14

    .line 434
    .local v14, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v13

    .line 435
    .local v13, "taskViewCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v13, :cond_9

    .line 436
    sub-int v16, v13, v5

    add-int/lit8 v12, v16, -0x1

    .line 437
    .local v12, "taskIndexFromFront":I
    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/recents/views/TaskView;

    .line 438
    .local v15, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v15}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v10

    .line 440
    .local v10, "task":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/android/systemui/recents/views/TaskStackView;->isIgnoredTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 435
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 446
    :cond_1
    if-eqz p1, :cond_7

    .line 448
    sget-boolean v16, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSpreadAnimation:Z

    if-eqz v16, :cond_6

    .line 449
    new-instance v11, Lcom/android/systemui/recents/views/AnimationProps;

    .line 450
    sget-object v16, Lcom/android/systemui/Interpolators;->SINE_IN_OUT90:Landroid/view/animation/Interpolator;

    .line 451
    new-instance v17, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v15}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$4;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;Lcom/android/systemui/recents/views/TaskView;)V

    .line 450
    const/16 v18, 0x14d

    .line 449
    move/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v11, v0, v1, v2}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    .line 458
    .local v11, "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    add-int/lit8 v16, v13, -0x1

    move/from16 v0, v16

    if-eq v5, v0, :cond_2

    add-int/lit8 v16, v13, -0x2

    move/from16 v0, v16

    if-ne v5, v0, :cond_5

    .line 459
    :cond_2
    :goto_2
    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 472
    :cond_3
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 477
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/android/systemui/recents/views/TaskViewTransform;->fillIn(Lcom/android/systemui/recents/views/TaskView;)V

    .line 479
    sget-boolean v16, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSpreadAnimation:Z

    if-eqz v16, :cond_8

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput v7, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->animationScale:F

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/systemui/recents/views/TaskViewTransform;->translationZ:F

    .line 483
    if-eqz p1, :cond_4

    .line 484
    const/16 v16, 0x3

    const/16 v17, 0xa

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    .line 485
    const/16 v16, 0x4

    const/16 v17, 0x12c

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    .line 487
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 492
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v15, v1, v11}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto/16 :goto_1

    .line 458
    :cond_5
    add-int/lit8 v16, v13, -0x3

    move/from16 v0, v16

    if-ne v5, v0, :cond_3

    goto/16 :goto_2

    .line 463
    .end local v11    # "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    :cond_6
    const/16 v16, 0x5

    move/from16 v0, v16

    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v16

    mul-int/lit8 v4, v16, 0x21

    .line 465
    .local v4, "delay":I
    new-instance v16, Lcom/android/systemui/recents/views/AnimationProps;

    invoke-direct/range {v16 .. v16}, Lcom/android/systemui/recents/views/AnimationProps;-><init>()V

    .line 466
    const/16 v17, 0x6

    .line 465
    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/recents/views/AnimationProps;->setStartDelay(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v16

    .line 467
    const/16 v17, 0x6

    const/16 v18, 0xc8

    .line 465
    invoke-virtual/range {v16 .. v18}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v16

    .line 469
    sget-object v17, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->EXIT_TO_HOME_TRANSLATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 468
    const/16 v18, 0x6

    .line 465
    move-object/from16 v0, v16

    move/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v16

    .line 470
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v17

    .line 465
    invoke-virtual/range {v16 .. v17}, Lcom/android/systemui/recents/views/AnimationProps;->setListener(Landroid/animation/Animator$AnimatorListener;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v11

    .restart local v11    # "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    goto/16 :goto_3

    .line 474
    .end local v4    # "delay":I
    .end local v11    # "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    :cond_7
    sget-object v11, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    .restart local v11    # "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    goto/16 :goto_4

    .line 490
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    int-to-float v0, v6

    move/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_5

    .line 413
    .end local v10    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v11    # "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    .end local v12    # "taskIndexFromFront":I
    .end local v15    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_9
    return-void
.end method

.method public startLaunchTaskAnimation(Lcom/android/systemui/recents/views/TaskView;ZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;Z)V
    .locals 16
    .param p1, "launchingTaskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "screenPinningRequested"    # Z
    .param p3, "postAnimationTrigger"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    .param p4, "isFreeformTask"    # Z

    .prologue
    .line 502
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v13}, Lcom/android/systemui/recents/views/TaskStackView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 505
    .local v5, "res":Landroid/content/res/Resources;
    const v13, 0x7f0c003c

    .line 504
    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 507
    .local v10, "taskViewExitToAppDuration":I
    const v13, 0x7f0d035e

    .line 506
    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 509
    .local v8, "taskViewAffiliateGroupEnterOffset":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    .line 510
    .local v4, "launchingTask":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v13}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v11

    .line 511
    .local v11, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v9

    .line 512
    .local v9, "taskViewCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v9, :cond_4

    .line 513
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/recents/views/TaskView;

    .line 514
    .local v12, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v12}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v6

    .line 515
    .local v6, "task":Lcom/android/systemui/recents/model/Task;
    if-eqz v4, :cond_2

    .line 516
    iget-object v13, v4, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    if-eqz v13, :cond_2

    .line 517
    iget-object v13, v4, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    invoke-virtual {v13, v6, v4}, Lcom/android/systemui/recents/model/TaskGrouping;->isTaskAboveTask(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/model/Task;)Z

    move-result v2

    .line 519
    :goto_1
    move-object/from16 v0, p1

    if-ne v12, v0, :cond_0

    if-eqz p4, :cond_3

    .line 529
    :cond_0
    if-eqz v2, :cond_1

    .line 531
    new-instance v7, Lcom/android/systemui/recents/views/AnimationProps;

    .line 532
    sget-object v13, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 533
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v14

    .line 531
    invoke-direct {v7, v10, v13, v14}, Lcom/android/systemui/recents/views/AnimationProps;-><init>(ILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    .line 534
    .local v7, "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 536
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v13, v12}, Lcom/android/systemui/recents/views/TaskViewTransform;->fillIn(Lcom/android/systemui/recents/views/TaskView;)V

    .line 537
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v14, 0x0

    iput v14, v13, Lcom/android/systemui/recents/views/TaskViewTransform;->alpha:F

    .line 538
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v13, v13, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    const/4 v14, 0x0

    int-to-float v15, v8

    invoke-virtual {v13, v14, v15}, Landroid/graphics/RectF;->offset(FF)V

    .line 539
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v13, v12, v14, v7}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 512
    .end local v7    # "taskAnimation":Lcom/android/systemui/recents/views/AnimationProps;
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 515
    :cond_2
    const/4 v2, 0x0

    .local v2, "currentTaskOccludesLaunchTarget":Z
    goto :goto_1

    .line 520
    .end local v2    # "currentTaskOccludesLaunchTarget":Z
    :cond_3
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/android/systemui/recents/views/TaskView;->setClipViewInStack(Z)V

    .line 521
    new-instance v13, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$5;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v12}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$5;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;Lcom/android/systemui/recents/views/TaskView;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    .line 527
    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v12, v10, v0, v1}, Lcom/android/systemui/recents/views/TaskView;->onStartLaunchTargetLaunchAnimation(IZLcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    goto :goto_2

    .line 501
    .end local v6    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v12    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_4
    return-void
.end method

.method public startNewStackScrollAnimation(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V
    .locals 24
    .param p1, "newStack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "animationTrigger"    # Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    .prologue
    .line 734
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v16

    .line 735
    .local v16, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v17

    .line 738
    .local v17, "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v5

    .line 739
    .local v5, "stackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v2, v5, v4}, Lcom/android/systemui/recents/views/TaskStackView;->getCurrentTaskTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 742
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v4}, Lcom/android/systemui/recents/views/TaskStackView;->setTasks(Lcom/android/systemui/recents/model/TaskStack;Z)V

    .line 743
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 746
    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mInitialScrollP:F

    .line 747
    .local v3, "newScroll":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->bindVisibleTaskViews(F)V

    .line 750
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setFocusState(I)V

    .line 752
    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapAction:Z

    if-nez v2, :cond_0

    .line 753
    const/4 v2, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setTaskOverridesForInitialState(Lcom/android/systemui/recents/model/TaskStack;Z)V

    .line 756
    :cond_0
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    .line 757
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->cancelDeferredTaskViewLayoutAnimation()V

    .line 760
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getFocusState()I

    move-result v4

    .line 761
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpFinalTaskTransforms:Ljava/util/ArrayList;

    const/4 v6, 0x0

    .line 760
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/recents/views/TaskStackView;->getLayoutTaskTransforms(FILjava/util/ArrayList;ZLjava/util/ArrayList;)V

    .line 764
    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/model/TaskStack;->getStackFrontMostTask(Z)Lcom/android/systemui/recents/model/Task;

    move-result-object v11

    .line 765
    .local v11, "frontMostTask":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2, v11}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v12

    .line 766
    .local v12, "frontMostTaskView":Lcom/android/systemui/recents/views/TaskView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpFinalTaskTransforms:Ljava/util/ArrayList;

    .line 767
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 766
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 768
    .local v13, "frontMostTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    if-eqz v12, :cond_1

    .line 769
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 770
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getFrontOfStackTransform()Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v4

    sget-object v6, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    .line 769
    invoke-virtual {v2, v12, v4, v6}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 775
    :cond_1
    new-instance v2, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$9;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v12, v13}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$9;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;FLcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    .line 788
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v21

    .line 789
    .local v21, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v20

    .line 790
    .local v20, "taskViewCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    move/from16 v0, v20

    if-ge v14, v0, :cond_6

    .line 791
    move-object/from16 v0, v21

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/systemui/recents/views/TaskView;

    .line 792
    .local v23, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v18

    .line 794
    .local v18, "task":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/views/TaskStackView;->isIgnoredTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 790
    :cond_2
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 764
    .end local v11    # "frontMostTask":Lcom/android/systemui/recents/model/Task;
    .end local v12    # "frontMostTaskView":Lcom/android/systemui/recents/views/TaskView;
    .end local v13    # "frontMostTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v14    # "i":I
    .end local v18    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v20    # "taskViewCount":I
    .end local v21    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    .end local v23    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 797
    .restart local v11    # "frontMostTask":Lcom/android/systemui/recents/model/Task;
    .restart local v12    # "frontMostTaskView":Lcom/android/systemui/recents/views/TaskView;
    .restart local v13    # "frontMostTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .restart local v14    # "i":I
    .restart local v18    # "task":Lcom/android/systemui/recents/model/Task;
    .restart local v20    # "taskViewCount":I
    .restart local v21    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    .restart local v23    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_4
    move-object/from16 v0, v18

    if-ne v0, v11, :cond_5

    if-nez v12, :cond_2

    .line 801
    :cond_5
    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v19

    .line 802
    .local v19, "taskIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpCurrentTaskTransforms:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 803
    .local v10, "fromTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpFinalTaskTransforms:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 806
    .local v22, "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    sget-object v4, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v10, v4}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 808
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->calculateStaggeredAnimDuration(I)I

    move-result v9

    .line 809
    .local v9, "duration":I
    sget-object v15, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_BEHIND_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 811
    .local v15, "interpolator":Landroid/view/animation/Interpolator;
    new-instance v2, Lcom/android/systemui/recents/views/AnimationProps;

    invoke-direct {v2}, Lcom/android/systemui/recents/views/AnimationProps;-><init>()V

    .line 812
    const/4 v4, 0x6

    .line 811
    invoke-virtual {v2, v4, v9}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v2

    .line 813
    const/4 v4, 0x6

    .line 811
    invoke-virtual {v2, v4, v15}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v2

    .line 814
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v4

    .line 811
    invoke-virtual {v2, v4}, Lcom/android/systemui/recents/views/AnimationProps;->setListener(Landroid/animation/Animator$AnimatorListener;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v8

    .line 815
    .local v8, "anim":Lcom/android/systemui/recents/views/AnimationProps;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 816
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1, v8}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto :goto_2

    .line 733
    .end local v8    # "anim":Lcom/android/systemui/recents/views/AnimationProps;
    .end local v9    # "duration":I
    .end local v10    # "fromTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v15    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v18    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v19    # "taskIndex":I
    .end local v22    # "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v23    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_6
    return-void
.end method

.method public startScrollToFocusedTaskAnimation(Lcom/android/systemui/recents/model/Task;Z)Z
    .locals 28
    .param p1, "newFocusedTask"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "requestViewFocus"    # Z

    .prologue
    .line 625
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v18

    .line 626
    .local v18, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v19

    .line 627
    .local v19, "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v17

    .line 629
    .local v17, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v9

    .line 631
    .local v9, "curScroll":F
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v4

    .line 633
    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapAction:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->mMinScrollP:F

    .line 631
    :goto_0
    add-float/2addr v2, v4

    .line 630
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getBoundedStackScroll(F)F

    move-result v3

    .line 635
    .local v3, "newScroll":F
    cmpl-float v2, v3, v9

    if-lez v2, :cond_1

    const/16 v27, 0x1

    .line 636
    .local v27, "willScrollToFront":Z
    :goto_1
    invoke-static {v3, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_2

    const/16 v26, 0x1

    .line 639
    .local v26, "willScroll":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v22

    .line 640
    .local v22, "taskViewCount":I
    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v5

    .line 641
    .local v5, "stackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpCurrentTaskTransforms:Ljava/util/ArrayList;

    invoke-virtual {v2, v5, v4}, Lcom/android/systemui/recents/views/TaskStackView;->getCurrentTaskTransforms(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;->bindVisibleTaskViews(F)V

    .line 648
    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapAction:Z

    if-eqz v2, :cond_3

    .line 649
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setFocusState(I)V

    .line 654
    :goto_3
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(FLcom/android/systemui/recents/views/AnimationProps;)V

    .line 655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->cancelDeferredTaskViewLayoutAnimation()V

    .line 658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getFocusState()I

    move-result v4

    .line 659
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpFinalTaskTransforms:Ljava/util/ArrayList;

    const/4 v6, 0x1

    .line 658
    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/recents/views/TaskStackView;->getLayoutTaskTransforms(FILjava/util/ArrayList;ZLjava/util/ArrayList;)V

    .line 662
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v15

    .line 663
    .local v15, "newFocusedTaskView":Lcom/android/systemui/recents/views/TaskView;
    if-nez v15, :cond_4

    .line 665
    const-string/jumbo v2, "TaskStackAnimationHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "b/27389156 null-task-view prebind:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 666
    const-string/jumbo v6, " postbind:"

    .line 665
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 666
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 665
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 666
    const-string/jumbo v6, " prescroll:"

    .line 665
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 667
    const-string/jumbo v6, " postscroll: "

    .line 665
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const/4 v2, 0x0

    return v2

    .line 633
    .end local v3    # "newScroll":F
    .end local v5    # "stackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    .end local v15    # "newFocusedTaskView":Lcom/android/systemui/recents/views/TaskView;
    .end local v22    # "taskViewCount":I
    .end local v26    # "willScroll":Z
    .end local v27    # "willScrollToFront":Z
    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 635
    .restart local v3    # "newScroll":F
    :cond_1
    const/16 v27, 0x0

    .restart local v27    # "willScrollToFront":Z
    goto/16 :goto_1

    .line 636
    :cond_2
    const/16 v26, 0x0

    .restart local v26    # "willScroll":Z
    goto/16 :goto_2

    .line 652
    .restart local v5    # "stackTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    .restart local v22    # "taskViewCount":I
    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setFocusState(I)V

    goto/16 :goto_3

    .line 670
    .restart local v15    # "newFocusedTaskView":Lcom/android/systemui/recents/views/TaskView;
    :cond_4
    const/4 v2, 0x1

    move/from16 v0, p2

    invoke-virtual {v15, v2, v0}, Lcom/android/systemui/recents/views/TaskView;->setFocusedState(ZZ)V

    .line 674
    new-instance v16, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-direct/range {v16 .. v16}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;-><init>()V

    .line 675
    .local v16, "postAnimTrigger":Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    new-instance v2, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$8;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper$8;-><init>(Lcom/android/systemui/recents/views/TaskStackAnimationHelper;F)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->addLastDecrementRunnable(Ljava/lang/Runnable;)V

    .line 682
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v23

    .line 683
    .local v23, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v22

    .line 684
    move-object/from16 v0, v23

    invoke-interface {v0, v15}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v14

    .line 685
    .local v14, "newFocusTaskViewIndex":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_4
    move/from16 v0, v22

    if-ge v12, v0, :cond_9

    .line 686
    move-object/from16 v0, v23

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/recents/views/TaskView;

    .line 687
    .local v25, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v20

    .line 689
    .local v20, "task":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/views/TaskStackView;->isIgnoredTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 685
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 693
    :cond_5
    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v21

    .line 694
    .local v21, "taskIndex":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpCurrentTaskTransforms:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 695
    .local v11, "fromTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mTmpFinalTaskTransforms:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 698
    .local v24, "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    sget-object v4, Lcom/android/systemui/recents/views/AnimationProps;->IMMEDIATE:Lcom/android/systemui/recents/views/AnimationProps;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0, v11, v4}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    .line 702
    if-eqz v27, :cond_6

    .line 703
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->calculateStaggeredAnimDuration(I)I

    move-result v10

    .line 704
    .local v10, "duration":I
    sget-object v13, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_BEHIND_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 718
    .local v13, "interpolator":Landroid/view/animation/Interpolator;
    :goto_6
    new-instance v2, Lcom/android/systemui/recents/views/AnimationProps;

    invoke-direct {v2}, Lcom/android/systemui/recents/views/AnimationProps;-><init>()V

    .line 719
    const/4 v4, 0x6

    .line 718
    invoke-virtual {v2, v4, v10}, Lcom/android/systemui/recents/views/AnimationProps;->setDuration(II)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v2

    .line 720
    const/4 v4, 0x6

    .line 718
    invoke-virtual {v2, v4, v13}, Lcom/android/systemui/recents/views/AnimationProps;->setInterpolator(ILandroid/view/animation/Interpolator;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v2

    .line 721
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;

    move-result-object v4

    .line 718
    invoke-virtual {v2, v4}, Lcom/android/systemui/recents/views/AnimationProps;->setListener(Landroid/animation/Animator$AnimatorListener;)Lcom/android/systemui/recents/views/AnimationProps;

    move-result-object v8

    .line 722
    .local v8, "anim":Lcom/android/systemui/recents/views/AnimationProps;
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 723
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1, v8}, Lcom/android/systemui/recents/views/TaskStackView;->updateTaskViewToTransform(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/AnimationProps;)V

    goto :goto_5

    .line 706
    .end local v8    # "anim":Lcom/android/systemui/recents/views/AnimationProps;
    .end local v10    # "duration":I
    .end local v13    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_6
    if-ge v12, v14, :cond_7

    .line 707
    sub-int v2, v14, v12

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x32

    add-int/lit16 v10, v2, 0x96

    .line 708
    .restart local v10    # "duration":I
    sget-object v13, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_BEHIND_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .restart local v13    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_6

    .line 709
    .end local v10    # "duration":I
    .end local v13    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_7
    if-le v12, v14, :cond_8

    .line 710
    sub-int v2, v12, v14

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x32

    rsub-int v2, v2, 0x96

    const/16 v4, 0x64

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 711
    .restart local v10    # "duration":I
    sget-object v13, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_IN_FRONT_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .restart local v13    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_6

    .line 713
    .end local v10    # "duration":I
    .end local v13    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_8
    const/16 v10, 0xc8

    .line 714
    .restart local v10    # "duration":I
    sget-object v13, Lcom/android/systemui/recents/views/TaskStackAnimationHelper;->FOCUS_NEXT_TASK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .restart local v13    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_6

    .line 725
    .end local v10    # "duration":I
    .end local v11    # "fromTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v13    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v20    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v21    # "taskIndex":I
    .end local v24    # "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v25    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_9
    return v26
.end method
