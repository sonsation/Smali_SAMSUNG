.class public Lcom/android/systemui/recents/views/RecentsTransitionHelper;
.super Ljava/lang/Object;
.source "RecentsTransitionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;,
        Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;
    }
.end annotation


# static fields
.field private static final SPECS_WAITING:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/AppTransitionAnimationSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private FREEFORM_HEIGHT_RATIO:F

.field private FREEFORM_WIDTH_RATIO:F

.field private mAppTransitionAnimationSpecs:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/AppTransitionAnimationSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mStartScreenPinningRunnable:Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;

.field private mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;


# direct methods
.method static synthetic -get0()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->SPECS_WAITING:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mAppTransitionAnimationSpecs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/recents/views/RecentsTransitionHelper;)Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mStartScreenPinningRunnable:Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mAppTransitionAnimationSpecs:Ljava/util/List;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;IZLandroid/graphics/Rect;)Ljava/util/List;
    .locals 1
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p3, "destinationStack"    # I
    .param p4, "isFreeformDragging"    # Z
    .param p5, "bounds"    # Landroid/graphics/Rect;

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->composeAnimationSpecs(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;IZLandroid/graphics/Rect;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Landroid/app/ActivityOptions;Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V
    .locals 0
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p3, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p4, "opts"    # Landroid/app/ActivityOptions;
    .param p5, "transitionFuture"    # Landroid/view/IAppTransitionAnimationSpecsFuture;
    .param p6, "animStartedListener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->startTaskActivity(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Landroid/app/ActivityOptions;Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->SPECS_WAITING:Ljava/util/List;

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const v0, 0x3f2b851f    # 0.67f

    iput v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->FREEFORM_WIDTH_RATIO:F

    .line 85
    iput v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->FREEFORM_HEIGHT_RATIO:F

    .line 95
    sget-object v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->SPECS_WAITING:Ljava/util/List;

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mAppTransitionAnimationSpecs:Ljava/util/List;

    .line 99
    new-instance v0, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v0}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 111
    new-instance v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;-><init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;)V

    .line 110
    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mStartScreenPinningRunnable:Lcom/android/systemui/recents/views/RecentsTransitionHelper$StartScreenPinningRunnableRunnable;

    .line 114
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mContext:Landroid/content/Context;

    .line 115
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mHandler:Landroid/os/Handler;

    .line 117
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iput v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->FREEFORM_WIDTH_RATIO:F

    .line 119
    iput v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->FREEFORM_HEIGHT_RATIO:F

    .line 113
    :cond_0
    return-void
.end method

.method private static composeAnimationSpec(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Z)Landroid/view/AppTransitionAnimationSpec;
    .locals 1
    .param p0, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p1, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "transform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p3, "addHeaderBitmap"    # Z

    .prologue
    .line 586
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->composeAnimationSpec(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)Landroid/view/AppTransitionAnimationSpec;

    move-result-object v0

    return-object v0
.end method

.method private static composeAnimationSpec(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)Landroid/view/AppTransitionAnimationSpec;
    .locals 10
    .param p0, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p1, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "transform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p3, "addHeaderBitmap"    # Z
    .param p4, "addDuration"    # Z

    .prologue
    const/4 v0, 0x0

    .line 592
    const/4 v3, 0x0

    .line 593
    .local v3, "b":Landroid/graphics/Bitmap;
    if-eqz p3, :cond_0

    .line 594
    invoke-static {p1, p2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->composeHeaderBitmap(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 595
    .local v3, "b":Landroid/graphics/Bitmap;
    if-nez v3, :cond_0

    .line 596
    return-object v0

    .line 600
    .end local v3    # "b":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 602
    .local v4, "taskRect":Landroid/graphics/Rect;
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-eqz v0, :cond_1

    .line 603
    iget-object v0, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v1, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->animationScale:F

    invoke-static {v0, v1}, Lcom/android/systemui/recents/misc/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    .line 606
    :cond_1
    iget-object v0, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v0, v4}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 607
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v1

    .line 608
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 607
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/model/TaskStack;->getStackFrontMostTask(Z)Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    .line 609
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    .line 607
    if-eq v0, v1, :cond_2

    .line 610
    iget v0, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 613
    :cond_2
    if-eqz p4, :cond_4

    .line 614
    new-instance v1, Landroid/view/AppTransitionAnimationSpec;

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    const-wide/16 v6, 0x14d

    const-wide/16 v8, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct/range {v1 .. v9}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;FJJ)V

    return-object v1

    .line 608
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 617
    :cond_4
    new-instance v0, Landroid/view/AppTransitionAnimationSpec;

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-direct {v0, v1, v3, v4}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    return-object v0
.end method

.method private composeAnimationSpecs(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;IZLandroid/graphics/Rect;)Ljava/util/List;
    .locals 28
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p3, "destinationStack"    # I
    .param p4, "isFreeformDragging"    # Z
    .param p5, "bounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/model/Task;",
            "Lcom/android/systemui/recents/views/TaskStackView;",
            "IZ",
            "Landroid/graphics/Rect;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/AppTransitionAnimationSpec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    const/4 v3, -0x1

    move/from16 v0, p3

    if-eq v0, v3, :cond_0

    move/from16 v22, p3

    .line 383
    .local v22, "targetStackId":I
    :goto_0
    invoke-static/range {v22 .. v22}, Landroid/app/ActivityManager$StackId;->useAnimationSpecForAppTransition(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 384
    const/4 v3, 0x0

    return-object v3

    .line 382
    .end local v22    # "targetStackId":I
    :cond_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v0, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->stackId:I

    move/from16 v22, v0

    goto :goto_0

    .line 388
    .restart local v22    # "targetStackId":I
    :cond_1
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v24

    .line 389
    .local v24, "taskView":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v20

    .line 390
    .local v20, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 391
    .local v16, "offscreenTaskRect":Landroid/graphics/Rect;
    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getFrontOfStackTransform()Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 395
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .local v18, "specs":Ljava/util/List;, "Ljava/util/List<Landroid/view/AppTransitionAnimationSpec;>;"
    const/16 v27, 0x0

    .line 399
    .local v27, "windowOverrideRect":Landroid/graphics/Rect;
    sget-boolean v3, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-nez v3, :cond_2

    .line 401
    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect()Landroid/graphics/Rect;

    move-result-object v27

    .line 403
    .local v27, "windowOverrideRect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 404
    .local v2, "fullscreenTask":Lcom/android/systemui/recents/model/Task;
    sget-boolean v3, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-eqz v3, :cond_c

    .line 405
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v19

    .line 406
    .local v19, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v25

    .line 407
    .local v25, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v3

    iget v12, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFullscreenTaskId:I

    .line 408
    .local v12, "fullscreenTaskId":I
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 409
    .local v23, "taskCount":I
    add-int/lit8 v15, v23, -0x1

    .end local v2    # "fullscreenTask":Lcom/android/systemui/recents/model/Task;
    .local v15, "i":I
    :goto_1
    if-ltz v15, :cond_a

    .line 410
    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/recents/model/Task;

    .line 411
    .local v21, "t":Lcom/android/systemui/recents/model/Task;
    if-eqz p4, :cond_5

    const/4 v3, 0x2

    move/from16 v0, v22

    if-ne v0, v3, :cond_5

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/Task;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 413
    if-nez v24, :cond_4

    .line 414
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->composeOffscreenAnimationSpec(Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;)Landroid/view/AppTransitionAnimationSpec;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    :cond_3
    :goto_2
    add-int/lit8 v15, v15, -0x1

    goto :goto_1

    .line 416
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/views/TaskViewTransform;->fillIn(Lcom/android/systemui/recents/views/TaskView;)V

    .line 417
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/views/TaskViewTransform;->setRect(Landroid/graphics/Rect;)V

    .line 418
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->transformToScreenCoordinates(Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 420
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v4, 0x0

    .line 419
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-static {v0, v1, v3, v4}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->composeAnimationSpec(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Z)Landroid/view/AppTransitionAnimationSpec;

    move-result-object v17

    .line 421
    .local v17, "spec":Landroid/view/AppTransitionAnimationSpec;
    if-eqz v17, :cond_3

    .line 422
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 425
    .end local v17    # "spec":Landroid/view/AppTransitionAnimationSpec;
    :cond_5
    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 427
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 428
    .local v6, "taskRect":Landroid/graphics/Rect;
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_6

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 434
    :cond_6
    :goto_3
    new-instance v3, Landroid/view/AppTransitionAnimationSpec;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    const-wide/16 v8, 0xe9

    const-wide/16 v10, 0xc8

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v11}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;FJJ)V

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 429
    :cond_7
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ee66666    # 0.45f

    mul-float/2addr v3, v4

    float-to-int v14, v3

    .line 430
    .local v14, "halfW":I
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ee66666    # 0.45f

    mul-float/2addr v3, v4

    float-to-int v13, v3

    .line 431
    .local v13, "halfH":I
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    sub-int/2addr v3, v14

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    sub-int/2addr v4, v13

    .line 432
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    add-int/2addr v5, v14

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    add-int/2addr v7, v13

    .line 431
    invoke-virtual {v6, v3, v4, v5, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    .line 435
    .end local v6    # "taskRect":Landroid/graphics/Rect;
    .end local v13    # "halfH":I
    .end local v14    # "halfW":I
    :cond_8
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    if-eq v3, v12, :cond_9

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/Task;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 437
    :cond_9
    move-object/from16 v2, v21

    .local v2, "fullscreenTask":Lcom/android/systemui/recents/model/Task;
    goto/16 :goto_2

    .line 440
    .end local v2    # "fullscreenTask":Lcom/android/systemui/recents/model/Task;
    .end local v21    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_a
    if-nez v2, :cond_b

    .line 441
    return-object v18

    .line 443
    :cond_b
    move-object/from16 p1, v2

    .line 444
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v24

    .line 451
    .end local v12    # "fullscreenTaskId":I
    .end local v15    # "i":I
    .end local v19    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v23    # "taskCount":I
    .end local v25    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_c
    const/4 v3, 0x1

    move/from16 v0, v22

    if-eq v0, v3, :cond_d

    const/4 v3, 0x3

    move/from16 v0, v22

    if-ne v0, v3, :cond_f

    .line 454
    :cond_d
    if-nez v24, :cond_13

    .line 455
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->composeOffscreenAnimationSpec(Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;)Landroid/view/AppTransitionAnimationSpec;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    :cond_e
    :goto_4
    return-object v18

    .line 452
    :cond_f
    const/4 v3, -0x1

    move/from16 v0, v22

    if-eq v0, v3, :cond_d

    .line 453
    sget-boolean v3, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-eqz v3, :cond_10

    if-nez v2, :cond_d

    .line 471
    :cond_10
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v19

    .line 472
    .restart local v19    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v25

    .line 473
    .restart local v25    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 474
    .restart local v23    # "taskCount":I
    add-int/lit8 v15, v23, -0x1

    .restart local v15    # "i":I
    :goto_5
    if-ltz v15, :cond_18

    .line 475
    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/recents/model/Task;

    .line 476
    .restart local v21    # "t":Lcom/android/systemui/recents/model/Task;
    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v3

    if-nez v3, :cond_11

    const/4 v3, 0x2

    move/from16 v0, v22

    if-ne v0, v3, :cond_12

    .line 477
    :cond_11
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v26

    .line 478
    .local v26, "tv":Lcom/android/systemui/recents/views/TaskView;
    if-nez v26, :cond_16

    .line 481
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->composeOffscreenAnimationSpec(Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;)Landroid/view/AppTransitionAnimationSpec;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    .end local v26    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_12
    :goto_6
    add-int/lit8 v15, v15, -0x1

    goto :goto_5

    .line 457
    .end local v15    # "i":I
    .end local v19    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v21    # "t":Lcom/android/systemui/recents/model/Task;
    .end local v23    # "taskCount":I
    .end local v25    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/views/TaskViewTransform;->fillIn(Lcom/android/systemui/recents/views/TaskView;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->transformToScreenCoordinates(Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 460
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 461
    sget-boolean v3, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-eqz v3, :cond_14

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_14
    const/4 v3, 0x0

    .line 460
    :goto_7
    const/4 v5, 0x1

    .line 459
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-static {v0, v1, v4, v5, v3}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->composeAnimationSpec(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;ZZ)Landroid/view/AppTransitionAnimationSpec;

    move-result-object v17

    .line 462
    .restart local v17    # "spec":Landroid/view/AppTransitionAnimationSpec;
    if-eqz v17, :cond_e

    .line 463
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 461
    .end local v17    # "spec":Landroid/view/AppTransitionAnimationSpec;
    :cond_15
    const/4 v3, 0x1

    goto :goto_7

    .line 483
    .restart local v15    # "i":I
    .restart local v19    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .restart local v21    # "t":Lcom/android/systemui/recents/model/Task;
    .restart local v23    # "taskCount":I
    .restart local v25    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    .restart local v26    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/views/TaskViewTransform;->fillIn(Lcom/android/systemui/recents/views/TaskView;)V

    .line 485
    if-eqz p4, :cond_17

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/model/Task;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 486
    const-string/jumbo v3, "RecentsTransitionHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "composeAnimationSpecs() :: dragging freeform task = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", bounds = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/views/TaskViewTransform;->setRect(Landroid/graphics/Rect;)V

    .line 490
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 491
    const/4 v4, 0x0

    .line 490
    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->transformToScreenCoordinates(Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 493
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    const/4 v4, 0x1

    .line 492
    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-static {v0, v1, v3, v4}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->composeAnimationSpec(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;Z)Landroid/view/AppTransitionAnimationSpec;

    move-result-object v17

    .line 494
    .restart local v17    # "spec":Landroid/view/AppTransitionAnimationSpec;
    if-eqz v17, :cond_12

    .line 495
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 501
    .end local v17    # "spec":Landroid/view/AppTransitionAnimationSpec;
    .end local v21    # "t":Lcom/android/systemui/recents/model/Task;
    .end local v26    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_18
    return-object v18
.end method

.method private static composeHeaderBitmap(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p1, "transform"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 546
    iget v4, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    .line 548
    .local v4, "scale":F
    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-eqz v5, :cond_0

    .line 549
    iget v4, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->animationScale:F

    .line 552
    :cond_0
    iget-object v5, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v3, v5

    .line 553
    .local v3, "headerWidth":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v4

    float-to-int v2, v5

    .line 554
    .local v2, "headerHeight":I
    if-eqz v3, :cond_1

    if-nez v2, :cond_2

    .line 555
    :cond_1
    return-object v7

    .line 558
    :cond_2
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 562
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 563
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-virtual {v1, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 565
    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreRound:Z

    if-eqz v5, :cond_3

    .line 566
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->setRadius(I)V

    .line 569
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v5, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->draw(Landroid/graphics/Canvas;)V

    .line 570
    invoke-virtual {v1, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 572
    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreRound:Z

    if-eqz v5, :cond_4

    .line 573
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->setRadius(I)V

    .line 577
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    return-object v5
.end method

.method private static composeOffscreenAnimationSpec(Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;)Landroid/view/AppTransitionAnimationSpec;
    .locals 3
    .param p0, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p1, "taskRect"    # Landroid/graphics/Rect;

    .prologue
    .line 509
    new-instance v0, Landroid/view/AppTransitionAnimationSpec;

    iget-object v1, p0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public static composeTaskBitmap(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p1, "transform"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 513
    iget v4, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    .line 515
    .local v4, "scale":F
    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-eqz v5, :cond_0

    .line 516
    iget v4, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->animationScale:F

    .line 519
    :cond_0
    iget-object v5, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float/2addr v5, v4

    float-to-int v3, v5

    .line 520
    .local v3, "fromWidth":I
    iget-object v5, p1, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    mul-float/2addr v5, v4

    float-to-int v2, v5

    .line 521
    .local v2, "fromHeight":I
    if-eqz v3, :cond_1

    if-nez v2, :cond_2

    .line 522
    :cond_1
    const-string/jumbo v5, "RecentsTransitionHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Could not compose thumbnail for task: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 523
    const-string/jumbo v7, " at transform: "

    .line 522
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v9, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 526
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v8}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 527
    return-object v0

    .line 530
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_2
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 529
    invoke-static {v3, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 535
    .restart local v0    # "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 536
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-virtual {v1, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 537
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskView;->draw(Landroid/graphics/Canvas;)V

    .line 538
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 540
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    return-object v5
.end method

.method private freeformLaunchBounds(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskStackView;)Landroid/graphics/Rect;
    .locals 13
    .param p1, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;

    .prologue
    .line 126
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 127
    .local v1, "displayRect":Landroid/graphics/Rect;
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v10

    iget v7, v10, Landroid/content/res/Configuration;->orientation:I

    .line 128
    .local v7, "orientation":I
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v10

    if-nez v10, :cond_0

    .line 129
    const/4 v10, 0x2

    if-ne v7, v10, :cond_5

    .line 130
    const/high16 v10, 0x3f000000    # 0.5f

    iput v10, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->FREEFORM_WIDTH_RATIO:F

    .line 131
    const v10, 0x3f2b851f    # 0.67f

    iput v10, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->FREEFORM_HEIGHT_RATIO:F

    .line 138
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    iget v11, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->FREEFORM_WIDTH_RATIO:F

    mul-float/2addr v10, v11

    float-to-int v3, v10

    .line 139
    .local v3, "freeformWidth":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    iget v11, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->FREEFORM_HEIGHT_RATIO:F

    mul-float/2addr v10, v11

    float-to-int v2, v10

    .line 140
    .local v2, "freeformHeight":I
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v11

    mul-float/2addr v10, v11

    int-to-float v11, v3

    sub-float/2addr v10, v11

    float-to-int v10, v10

    div-int/lit8 v5, v10, 0x2

    .line 141
    .local v5, "intervalWidth":I
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getScaleY()F

    move-result v11

    mul-float/2addr v10, v11

    int-to-float v11, v2

    sub-float/2addr v10, v11

    float-to-int v10, v10

    div-int/lit8 v4, v10, 0x2

    .line 142
    .local v4, "intervalHeight":I
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getLocationOnScreen()[I

    move-result-object v6

    .line 143
    .local v6, "location":[I
    const/4 v10, 0x0

    aget v10, v6, v10

    add-int v8, v10, v5

    .line 144
    .local v8, "viewX":I
    const/4 v10, 0x1

    aget v10, v6, v10

    add-int v9, v10, v4

    .line 146
    .local v9, "viewY":I
    new-instance v0, Landroid/graphics/Rect;

    add-int v10, v8, v3

    add-int v11, v9, v2

    invoke-direct {v0, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 147
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v10, v0, Landroid/graphics/Rect;->left:I

    if-ltz v10, :cond_1

    iget v10, v0, Landroid/graphics/Rect;->right:I

    iget v11, v1, Landroid/graphics/Rect;->right:I

    if-le v10, v11, :cond_2

    .line 148
    :cond_1
    iget v10, v0, Landroid/graphics/Rect;->left:I

    if-gez v10, :cond_6

    .line 149
    const/4 v10, 0x0

    iput v10, v0, Landroid/graphics/Rect;->left:I

    .line 150
    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 156
    :cond_2
    :goto_1
    iget v10, v0, Landroid/graphics/Rect;->top:I

    if-ltz v10, :cond_3

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    if-le v10, v11, :cond_4

    .line 157
    :cond_3
    iget v10, v0, Landroid/graphics/Rect;->top:I

    if-gez v10, :cond_7

    .line 158
    const/4 v10, 0x0

    iput v10, v0, Landroid/graphics/Rect;->top:I

    .line 159
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 165
    :cond_4
    :goto_2
    const-string/jumbo v10, "RecentsTransitionHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "freeformLaunchBounds :: bounds = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-object v0

    .line 133
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v2    # "freeformHeight":I
    .end local v3    # "freeformWidth":I
    .end local v4    # "intervalHeight":I
    .end local v5    # "intervalWidth":I
    .end local v6    # "location":[I
    .end local v8    # "viewX":I
    .end local v9    # "viewY":I
    :cond_5
    const v10, 0x3f2b851f    # 0.67f

    iput v10, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->FREEFORM_WIDTH_RATIO:F

    .line 134
    const/high16 v10, 0x3f000000    # 0.5f

    iput v10, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->FREEFORM_HEIGHT_RATIO:F

    goto/16 :goto_0

    .line 152
    .restart local v0    # "bounds":Landroid/graphics/Rect;
    .restart local v2    # "freeformHeight":I
    .restart local v3    # "freeformWidth":I
    .restart local v4    # "intervalHeight":I
    .restart local v5    # "intervalWidth":I
    .restart local v6    # "location":[I
    .restart local v8    # "viewX":I
    .restart local v9    # "viewY":I
    :cond_6
    iget v10, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v3

    iput v10, v0, Landroid/graphics/Rect;->left:I

    .line 153
    iget v10, v1, Landroid/graphics/Rect;->right:I

    iput v10, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 161
    :cond_7
    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v2

    iput v10, v0, Landroid/graphics/Rect;->top:I

    .line 162
    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    iput v10, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_2
.end method

.method private startTaskActivity(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Landroid/app/ActivityOptions;Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V
    .locals 6
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p3, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p4, "opts"    # Landroid/app/ActivityOptions;
    .param p5, "transitionFuture"    # Landroid/view/IAppTransitionAnimationSpecsFuture;
    .param p6, "animStartedListener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .prologue
    .line 293
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 295
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    const-string/jumbo v3, "RecentsTransitionHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startTaskActivity for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mContext:Landroid/content/Context;

    iget-object v4, p2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v5, p2, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v5, p4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/String;Landroid/app/ActivityOptions;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 299
    const/4 v2, 0x0

    .line 300
    .local v2, "taskIndexFromFront":I
    invoke-virtual {p1, p2}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v1

    .line 301
    .local v1, "taskIndex":I
    const/4 v3, -0x1

    if-le v1, v3, :cond_0

    .line 302
    invoke-virtual {p1}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v3

    sub-int/2addr v3, v1

    add-int/lit8 v2, v3, -0x1

    .line 304
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;

    invoke-direct {v4, v2}, Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 315
    .end local v1    # "taskIndex":I
    .end local v2    # "taskIndexFromFront":I
    :goto_0
    if-eqz p5, :cond_1

    .line 317
    invoke-virtual {p0, p6}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->wrapStartedListener(Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/os/IRemoteCallback;

    move-result-object v3

    const/4 v4, 0x1

    .line 316
    invoke-virtual {v0, p5, v3, v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V

    .line 292
    :cond_1
    return-void

    .line 307
    :cond_2
    if-eqz p3, :cond_3

    .line 308
    invoke-virtual {p3}, Lcom/android/systemui/recents/views/TaskView;->dismissTask()V

    .line 312
    :cond_3
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/activity/LaunchTaskFailedEvent;

    invoke-direct {v4}, Lcom/android/systemui/recents/events/activity/LaunchTaskFailedEvent;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0
.end method


# virtual methods
.method public composeDockAnimationSpec(Lcom/android/systemui/recents/views/TaskView;Landroid/graphics/Rect;)Ljava/util/List;
    .locals 4
    .param p1, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Landroid/graphics/Rect;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/AppTransitionAnimationSpec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 367
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/views/TaskViewTransform;->fillIn(Lcom/android/systemui/recents/views/TaskView;)V

    .line 368
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    .line 369
    .local v0, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-static {p1, v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->composeTaskBitmap(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskViewTransform;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 370
    .local v1, "thumbnail":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/view/AppTransitionAnimationSpec;

    iget-object v3, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-direct {v2, v3, v1, p2}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getAppTransitionFuture(Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;)Landroid/view/IAppTransitionAnimationSpecsFuture;
    .locals 1
    .param p1, "composer"    # Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;

    .prologue
    .line 328
    monitor-enter p0

    .line 329
    :try_start_0
    sget-object v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->SPECS_WAITING:Ljava/util/List;

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->mAppTransitionAnimationSpecs:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 331
    new-instance v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$6;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$6;-><init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;)V

    return-object v0

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public launchTaskFromRecents(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;ZLandroid/graphics/Rect;IZ)V
    .locals 22
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p3, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p4, "taskView"    # Lcom/android/systemui/recents/views/TaskView;
    .param p5, "screenPinningRequested"    # Z
    .param p6, "bounds"    # Landroid/graphics/Rect;
    .param p7, "destinationStack"    # I
    .param p8, "isFreeformDragging"    # Z

    .prologue
    .line 177
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v16

    .line 178
    .local v16, "opts":Landroid/app/ActivityOptions;
    if-eqz p6, :cond_1

    .line 180
    sget-boolean v5, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v5, :cond_3

    if-eqz p8, :cond_3

    .line 181
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->freeformLaunchBounds(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/TaskStackView;)Landroid/graphics/Rect;

    move-result-object v20

    .line 182
    .local v20, "targetBounds":Landroid/graphics/Rect;
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v20, 0x0

    .end local v20    # "targetBounds":Landroid/graphics/Rect;
    :cond_0
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    .line 190
    :cond_1
    :goto_0
    const/4 v5, -0x1

    move/from16 v0, p7

    if-ne v0, v5, :cond_2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/systemui/recents/RecentsConfiguration;->isInMultiWindowMode:Z

    if-eqz v5, :cond_2

    .line 191
    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/app/ActivityOptions;->setLaunchStackId(I)V

    .line 197
    :cond_2
    if-eqz p4, :cond_5

    .line 198
    new-instance v4, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p6

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$1;-><init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;IZLandroid/graphics/Rect;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->getAppTransitionFuture(Lcom/android/systemui/recents/views/RecentsTransitionHelper$AnimationSpecComposer;)Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object v21

    .line 205
    .local v21, "transitionFuture":Landroid/view/IAppTransitionAnimationSpecsFuture;
    new-instance v4, Lcom/android/systemui/recents/views/RecentsTransitionHelper$2;

    move-object/from16 v5, p0

    move/from16 v6, p8

    move-object/from16 v7, p4

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p5

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$2;-><init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper;ZLcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;Z)V

    .local v4, "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    move-object/from16 v10, v21

    .line 241
    .end local v21    # "transitionFuture":Landroid/view/IAppTransitionAnimationSpecsFuture;
    :goto_1
    if-nez p4, :cond_6

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    move-object/from16 v9, v16

    move-object v11, v4

    .line 244
    invoke-direct/range {v5 .. v11}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->startTaskActivity(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Landroid/app/ActivityOptions;Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 263
    :goto_2
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    .line 264
    const-string/jumbo v6, "homekey"

    .line 263
    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 176
    return-void

    .line 185
    .end local v4    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    :cond_3
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    :goto_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    goto :goto_0

    :cond_4
    move-object/from16 v5, p6

    goto :goto_3

    .line 228
    :cond_5
    const/4 v10, 0x0

    .line 229
    .local v10, "transitionFuture":Landroid/view/IAppTransitionAnimationSpecsFuture;
    new-instance v4, Lcom/android/systemui/recents/views/RecentsTransitionHelper$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v4, v0, v1, v2}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$3;-><init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;)V

    .restart local v4    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    goto :goto_1

    .line 246
    .end local v10    # "transitionFuture":Landroid/view/IAppTransitionAnimationSpecsFuture;
    :cond_6
    new-instance v19, Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;-><init>(Lcom/android/systemui/recents/views/TaskView;ZZ)V

    .line 248
    .local v19, "launchStartedEvent":Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    if-eqz v5, :cond_7

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/systemui/recents/model/TaskGrouping;->isFrontMostTask(Lcom/android/systemui/recents/model/Task;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 258
    :cond_7
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p4

    move-object/from16 v17, v10

    move-object/from16 v18, v4

    .line 259
    invoke-direct/range {v12 .. v18}, Lcom/android/systemui/recents/views/RecentsTransitionHelper;->startTaskActivity(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Landroid/app/ActivityOptions;Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    goto :goto_2

    .line 249
    :cond_8
    new-instance v11, Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p4

    move-object/from16 v17, v10

    move-object/from16 v18, v4

    invoke-direct/range {v11 .. v18}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$4;-><init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskView;Landroid/app/ActivityOptions;Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/android/systemui/recents/events/activity/LaunchTaskStartedEvent;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    .line 256
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_2
.end method

.method public wrapStartedListener(Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/os/IRemoteCallback;
    .locals 1
    .param p1, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .prologue
    const/4 v0, 0x0

    .line 268
    if-nez p1, :cond_0

    .line 269
    return-object v0

    .line 271
    :cond_0
    new-instance v0, Lcom/android/systemui/recents/views/RecentsTransitionHelper$5;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recents/views/RecentsTransitionHelper$5;-><init>(Lcom/android/systemui/recents/views/RecentsTransitionHelper;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    return-object v0
.end method
