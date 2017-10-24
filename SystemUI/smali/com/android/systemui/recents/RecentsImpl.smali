.class public Lcom/android/systemui/recents/RecentsImpl;
.super Ljava/lang/Object;
.source "RecentsImpl.java"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationFinishedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/RecentsImpl$1;,
        Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;
    }
.end annotation


# static fields
.field protected static sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;


# instance fields
.field protected mContext:Landroid/content/Context;

.field mDraggingInRecents:Z

.field protected mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

.field mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

.field protected mHandler:Landroid/os/Handler;

.field mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

.field final mHeaderBarLock:Ljava/lang/Object;

.field protected mLastToggleTime:J

.field mLaunchedWhileDocking:Z

.field mNavBarHeight:I

.field mNavBarWidth:I

.field private mPropagateTaskStackChange:Z

.field private mRecentsWindow:Lcom/android/systemui/recents/desktop/RecentsWindow;

.field mStatusBarHeight:I

.field mTaskBarHeight:I

.field mTaskStackBounds:Landroid/graphics/Rect;

.field mTaskStackListener:Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;

.field protected mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

.field mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field protected mTriggeredFromAltTab:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/RecentsImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mPropagateTaskStackChange:Z

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-boolean v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mPropagateTaskStackChange:Z

    .line 186
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskStackBounds:Landroid/graphics/Rect;

    .line 187
    new-instance v2, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v2}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 195
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBarLock:Ljava/lang/Object;

    .line 201
    new-instance v2, Lcom/android/systemui/recents/misc/DozeTrigger;

    new-instance v3, Lcom/android/systemui/recents/RecentsImpl$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/RecentsImpl$1;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    const/16 v4, 0xe1

    invoke-direct {v2, v4, v3}, Lcom/android/systemui/recents/misc/DozeTrigger;-><init>(ILjava/lang/Runnable;)V

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    .line 215
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 216
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    .line 219
    invoke-static {}, Lcom/android/systemui/recents/misc/ForegroundThread;->get()Lcom/android/systemui/recents/misc/ForegroundThread;

    .line 222
    new-instance v2, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskStackListener:Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;

    .line 223
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 224
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskStackListener:Lcom/android/systemui/recents/RecentsImpl$TaskStackListenerImpl;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerTaskStackListener(Lcom/android/systemui/recents/misc/SystemServicesProxy$TaskStackListener;)V

    .line 227
    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableDesktopMode:Z

    if-eqz v2, :cond_0

    .line 228
    new-instance v2, Lcom/android/systemui/recents/desktop/RecentsWindow;

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/recents/desktop/RecentsWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mRecentsWindow:Lcom/android/systemui/recents/desktop/RecentsWindow;

    .line 233
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 234
    .local v0, "inflater":Landroid/view/LayoutInflater;
    new-instance v2, Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/recents/views/TaskStackView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 235
    const v2, 0x7f040134

    .line 236
    const/4 v3, 0x0

    .line 235
    invoke-virtual {v0, v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskViewHeader;

    iput-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    .line 237
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsImpl;->reloadResources()V

    .line 214
    return-void
.end method

.method private calculateWindowStableInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "inOutInsets"    # Landroid/graphics/Rect;
    .param p2, "windowRect"    # Landroid/graphics/Rect;

    .prologue
    .line 761
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 764
    .local v1, "displayRect":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 765
    .local v0, "appRect":Landroid/graphics/Rect;
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 768
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 769
    .local v2, "windowRectWithInsets":Landroid/graphics/Rect;
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 770
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 771
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 772
    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 773
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 760
    return-void
.end method

.method public static consumeInstanceLoadPlan()Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .locals 2

    .prologue
    .line 659
    sget-object v0, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 660
    .local v0, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/4 v1, 0x0

    sput-object v1, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 661
    return-object v0
.end method

.method private drawThumbnailTransitionBitmap(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "toTask"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "toTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p3, "thumbnail"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    .line 1019
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    .line 1020
    .local v3, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    if-eqz p2, :cond_5

    iget-object v4, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    if-eqz v4, :cond_5

    .line 1021
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBarLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1022
    :try_start_0
    iget-boolean v4, p1, Lcom/android/systemui/recents/model/Task;->isSystemApp:Z

    if-nez v4, :cond_4

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isInSafeMode()Z

    move-result v1

    .line 1023
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v6, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v6, v6

    .line 1024
    iget-object v7, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    float-to-int v7, v7

    .line 1023
    invoke-virtual {v4, v6, v7}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskViewSizeChanged(II)V

    .line 1028
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1029
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1031
    .local v0, "c":Landroid/graphics/Canvas;
    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-eqz v4, :cond_0

    .line 1032
    iget v4, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->animationScale:F

    iget v6, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->animationScale:F

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1037
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskViewHeader;->getIconView()Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1038
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    .line 1039
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1041
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v6, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->bindToTask(Lcom/android/systemui/recents/model/Task;ZZ)V

    .line 1043
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskDataLoaded()V

    .line 1044
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget v6, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->dimAlpha:F

    invoke-virtual {v4, v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->setDimAlpha(F)V

    .line 1046
    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreRound:Z

    if-eqz v4, :cond_2

    .line 1047
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->setRadius(I)V

    .line 1050
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->draw(Landroid/graphics/Canvas;)V

    .line 1051
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1053
    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreRound:Z

    if-eqz v4, :cond_3

    .line 1054
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Lcom/android/systemui/recents/views/TaskViewHeader;->setRadius(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v5

    .line 1059
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4

    .line 1022
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_4
    const/4 v1, 0x0

    .local v1, "disabledInSafeMode":Z
    goto :goto_0

    .line 1021
    .end local v1    # "disabledInSafeMode":Z
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1061
    :cond_5
    return-object v5
.end method

.method private getThumbnailTransitionActivityOptions(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/systemui/recents/views/TaskStackView;Landroid/graphics/Rect;I)Landroid/app/ActivityOptions;
    .locals 40
    .param p1, "runningTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p3, "windowOverrideRect"    # Landroid/graphics/Rect;
    .param p4, "fullscreenTaskId"    # I

    .prologue
    .line 844
    const/16 v27, 0x0

    .line 845
    .local v27, "startedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSpreadAnimation:Z

    if-eqz v5, :cond_0

    .line 846
    new-instance v27, Lcom/android/systemui/recents/RecentsImpl$4;

    .end local v27    # "startedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/RecentsImpl$4;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    .line 857
    :cond_0
    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-eqz v5, :cond_c

    .line 858
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 859
    .local v33, "specs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/AppTransitionAnimationSpec;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v36

    .line 860
    .local v36, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v18

    .line 861
    .local v18, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v35

    .line 863
    .local v35, "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 864
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskStackView;->updateToInitialState()V

    .line 866
    const/4 v14, 0x0

    .line 867
    .local v14, "fullscreenTask":Lcom/android/systemui/recents/model/Task;
    const/4 v12, 0x0

    .line 870
    .local v12, "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v31, v5, -0x1

    .local v31, "i":I
    move-object v4, v12

    .end local v12    # "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v14    # "fullscreenTask":Lcom/android/systemui/recents/model/Task;
    .local v4, "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    :goto_0
    if-ltz v31, :cond_5

    .line 871
    move-object/from16 v0, v36

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/systemui/recents/model/Task;

    .line 872
    .local v19, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 873
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 874
    .local v8, "toTaskRect":Landroid/graphics/Rect;
    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    if-eqz v5, :cond_1

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 880
    :cond_1
    :goto_1
    new-instance v5, Landroid/view/AppTransitionAnimationSpec;

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    const-wide/16 v10, 0xc8

    const-wide/16 v12, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v13}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;FJJ)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v12, v4

    .line 870
    .end local v4    # "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v8    # "toTaskRect":Landroid/graphics/Rect;
    .local v12, "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    :goto_2
    add-int/lit8 v31, v31, -0x1

    move-object v4, v12

    .end local v12    # "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .restart local v4    # "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    goto :goto_0

    .line 875
    .restart local v8    # "toTaskRect":Landroid/graphics/Rect;
    :cond_2
    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3ee66666    # 0.45f

    mul-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v30, v0

    .line 876
    .local v30, "halfW":I
    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3ee66666    # 0.45f

    mul-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v29, v0

    .line 877
    .local v29, "halfH":I
    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    sub-int v5, v5, v30

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    sub-int v6, v6, v29

    .line 878
    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    add-int v7, v7, v30

    move-object/from16 v0, v19

    iget-object v9, v0, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    add-int v9, v9, v29

    .line 877
    invoke-virtual {v8, v5, v6, v7, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 881
    .end local v8    # "toTaskRect":Landroid/graphics/Rect;
    .end local v29    # "halfH":I
    .end local v30    # "halfW":I
    :cond_3
    const/4 v5, -0x1

    move/from16 v0, p4

    if-eq v0, v5, :cond_4

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v0, p4

    if-ne v5, v0, :cond_4

    .line 882
    move-object/from16 v28, v19

    .line 883
    .local v28, "fullscreenTask":Lcom/android/systemui/recents/model/Task;
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move/from16 v0, v31

    if-ge v0, v5, :cond_13

    .line 884
    new-instance v12, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v12}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    .line 885
    .end local v4    # "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .restart local v12    # "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recents/model/Task;

    .line 887
    .local v10, "frontTask":Lcom/android/systemui/recents/model/Task;
    invoke-virtual/range {v35 .. v35}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v11

    .line 888
    const/4 v13, 0x0

    move-object/from16 v9, v18

    move-object/from16 v14, p3

    .line 886
    invoke-virtual/range {v9 .. v14}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransformScreenCoordinates(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v12

    move-object/from16 v14, v28

    .end local v28    # "fullscreenTask":Lcom/android/systemui/recents/model/Task;
    .local v14, "fullscreenTask":Lcom/android/systemui/recents/model/Task;
    goto/16 :goto_2

    .end local v10    # "frontTask":Lcom/android/systemui/recents/model/Task;
    .end local v12    # "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v14    # "fullscreenTask":Lcom/android/systemui/recents/model/Task;
    .restart local v4    # "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    :cond_4
    move-object v12, v4

    .line 881
    .end local v4    # "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .restart local v12    # "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    goto/16 :goto_2

    .line 894
    .end local v12    # "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v19    # "task":Lcom/android/systemui/recents/model/Task;
    .restart local v4    # "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    :cond_5
    const/4 v5, -0x1

    move/from16 v0, p4

    if-eq v0, v5, :cond_a

    if-eqz v14, :cond_a

    .line 895
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 897
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackScrollForTask(Lcom/android/systemui/recents/model/Task;)F

    move-result v5

    .line 896
    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getCalibratedStackScroll(F)F

    move-result v32

    .line 898
    .local v32, "newScroll":F
    invoke-virtual/range {v35 .. v35}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v5

    cmpg-float v5, v32, v5

    if-gez v5, :cond_6

    .line 899
    const/4 v5, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v32

    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(FLcom/android/systemui/recents/views/AnimationProps;)V

    .line 900
    move-object/from16 v0, p2

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->bindVisibleTaskViews(F)V

    .line 905
    .end local v32    # "newScroll":F
    :cond_6
    invoke-virtual/range {v35 .. v35}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v13, v18

    move-object/from16 v18, p3

    .line 904
    invoke-virtual/range {v13 .. v18}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransformScreenCoordinates(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .end local v18    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 907
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 908
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    .line 907
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v5, v6}, Lcom/android/systemui/recents/RecentsImpl;->drawThumbnailTransitionBitmap(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 909
    .local v17, "thumbnail":Landroid/graphics/Bitmap;
    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-eqz v5, :cond_7

    .line 910
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget v6, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->animationScale:F

    invoke-static {v5, v6}, Lcom/android/systemui/recents/misc/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    .line 912
    :cond_7
    if-eqz v4, :cond_8

    .line 913
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget-object v6, v4, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    .line 915
    :cond_8
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 916
    .restart local v8    # "toTaskRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5, v8}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 918
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 919
    if-nez v17, :cond_9

    .line 921
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsImpl;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v5

    return-object v5

    .line 923
    :cond_9
    new-instance v5, Landroid/view/AppTransitionAnimationSpec;

    iget-object v6, v14, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move-object/from16 v0, v17

    invoke-direct {v5, v6, v0, v8}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 929
    .end local v8    # "toTaskRect":Landroid/graphics/Rect;
    .end local v17    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_a
    :goto_3
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Landroid/view/AppTransitionAnimationSpec;

    move-object/from16 v34, v0

    .line 930
    .local v34, "specsArray":[Landroid/view/AppTransitionAnimationSpec;
    invoke-virtual/range {v33 .. v34}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 931
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 932
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    .line 931
    move-object/from16 v0, v34

    move-object/from16 v1, v27

    move-object/from16 v2, p0

    invoke-static {v5, v0, v6, v1, v2}, Landroid/app/ActivityOptions;->makeThumbnailAspectScaleDownAnimation(Landroid/view/View;[Landroid/view/AppTransitionAnimationSpec;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;

    move-result-object v5

    return-object v5

    .line 925
    .end local v34    # "specsArray":[Landroid/view/AppTransitionAnimationSpec;
    .restart local v8    # "toTaskRect":Landroid/graphics/Rect;
    .restart local v17    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_b
    new-instance v15, Landroid/view/AppTransitionAnimationSpec;

    iget-object v5, v14, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v0, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v16, v0

    const-wide/16 v20, 0x12c

    const-wide/16 v22, 0x85

    const/high16 v19, 0x3f800000    # 1.0f

    move-object/from16 v18, v8

    invoke-direct/range {v15 .. v23}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;FJJ)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 935
    .end local v4    # "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v8    # "toTaskRect":Landroid/graphics/Rect;
    .end local v17    # "thumbnail":Landroid/graphics/Bitmap;
    .end local v31    # "i":I
    .end local v33    # "specs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/AppTransitionAnimationSpec;>;"
    .end local v35    # "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .end local v36    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_c
    if-eqz p1, :cond_10

    move-object/from16 v0, p1

    iget v5, v0, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_10

    .line 936
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 937
    .restart local v33    # "specs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/AppTransitionAnimationSpec;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v36

    .line 938
    .restart local v36    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v18

    .line 939
    .restart local v18    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v35

    .line 941
    .restart local v35    # "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 942
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskStackView;->updateToInitialState()V

    .line 944
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v31, v5, -0x1

    .restart local v31    # "i":I
    :goto_4
    if-ltz v31, :cond_f

    .line 945
    move-object/from16 v0, v36

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/systemui/recents/model/Task;

    .line 946
    .restart local v19    # "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 948
    invoke-virtual/range {v35 .. v35}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v23, p3

    .line 947
    invoke-virtual/range {v18 .. v23}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransformScreenCoordinates(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 950
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 951
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    .line 950
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5, v6}, Lcom/android/systemui/recents/RecentsImpl;->drawThumbnailTransitionBitmap(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 953
    .restart local v17    # "thumbnail":Landroid/graphics/Bitmap;
    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-eqz v5, :cond_d

    .line 954
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget v6, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->animationScale:F

    invoke-static {v5, v6}, Lcom/android/systemui/recents/misc/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    .line 957
    :cond_d
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 958
    .restart local v8    # "toTaskRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5, v8}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 959
    new-instance v5, Landroid/view/AppTransitionAnimationSpec;

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move-object/from16 v0, v17

    invoke-direct {v5, v6, v0, v8}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 944
    .end local v8    # "toTaskRect":Landroid/graphics/Rect;
    .end local v17    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_e
    add-int/lit8 v31, v31, -0x1

    goto :goto_4

    .line 962
    .end local v19    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_f
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [Landroid/view/AppTransitionAnimationSpec;

    move-object/from16 v34, v0

    .line 963
    .restart local v34    # "specsArray":[Landroid/view/AppTransitionAnimationSpec;
    invoke-virtual/range {v33 .. v34}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 964
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 965
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    .line 964
    move-object/from16 v0, v34

    move-object/from16 v1, v27

    move-object/from16 v2, p0

    invoke-static {v5, v0, v6, v1, v2}, Landroid/app/ActivityOptions;->makeThumbnailAspectScaleDownAnimation(Landroid/view/View;[Landroid/view/AppTransitionAnimationSpec;Landroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnAnimationFinishedListener;)Landroid/app/ActivityOptions;

    move-result-object v5

    return-object v5

    .line 968
    .end local v18    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .end local v31    # "i":I
    .end local v33    # "specs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/AppTransitionAnimationSpec;>;"
    .end local v34    # "specsArray":[Landroid/view/AppTransitionAnimationSpec;
    .end local v35    # "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .end local v36    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_10
    new-instance v37, Lcom/android/systemui/recents/model/Task;

    invoke-direct/range {v37 .. v37}, Lcom/android/systemui/recents/model/Task;-><init>()V

    .line 969
    .local v37, "toTask":Lcom/android/systemui/recents/model/Task;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v37

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/recents/RecentsImpl;->getThumbnailTransitionTransform(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v39

    .line 972
    .local v39, "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    sget-boolean v5, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSecondViewExpanded:Z

    if-eqz v5, :cond_11

    .line 973
    move-object/from16 v0, v39

    iget-object v5, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v0, v39

    iget v6, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->animationScale:F

    invoke-static {v5, v6}, Lcom/android/systemui/recents/misc/Utilities;->scaleRectAboutCenter(Landroid/graphics/RectF;F)V

    .line 977
    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/RecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    .line 976
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2, v5}, Lcom/android/systemui/recents/RecentsImpl;->drawThumbnailTransitionBitmap(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 978
    .restart local v17    # "thumbnail":Landroid/graphics/Bitmap;
    if-eqz v17, :cond_12

    .line 979
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/RectF;

    move-object/from16 v38, v0

    .line 980
    .local v38, "toTaskRect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v20, v0

    .line 981
    move-object/from16 v0, v38

    iget v5, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v5

    move/from16 v22, v0

    move-object/from16 v0, v38

    iget v5, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v5

    move/from16 v23, v0

    .line 982
    invoke-virtual/range {v38 .. v38}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v0, v5

    move/from16 v24, v0

    invoke-virtual/range {v38 .. v38}, Landroid/graphics/RectF;->height()F

    move-result v5

    float-to-int v0, v5

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    move-object/from16 v21, v17

    .line 980
    invoke-static/range {v20 .. v27}, Landroid/app/ActivityOptions;->makeThumbnailAspectScaleDownAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v5

    return-object v5

    .line 986
    .end local v38    # "toTaskRect":Landroid/graphics/RectF;
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/RecentsImpl;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v5

    return-object v5

    .end local v17    # "thumbnail":Landroid/graphics/Bitmap;
    .end local v37    # "toTask":Lcom/android/systemui/recents/model/Task;
    .end local v39    # "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .restart local v4    # "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .restart local v18    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .restart local v19    # "task":Lcom/android/systemui/recents/model/Task;
    .restart local v28    # "fullscreenTask":Lcom/android/systemui/recents/model/Task;
    .restart local v31    # "i":I
    .restart local v33    # "specs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/AppTransitionAnimationSpec;>;"
    .restart local v35    # "stackScroller":Lcom/android/systemui/recents/views/TaskStackViewScroller;
    .restart local v36    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_13
    move-object v12, v4

    .end local v4    # "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .restart local v12    # "frontTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    move-object/from16 v14, v28

    .end local v28    # "fullscreenTask":Lcom/android/systemui/recents/model/Task;
    .restart local v14    # "fullscreenTask":Lcom/android/systemui/recents/model/Task;
    goto/16 :goto_2
.end method

.method private getThumbnailTransitionTransform(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/model/Task;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 7
    .param p1, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p2, "runningTaskOut"    # Lcom/android/systemui/recents/model/Task;
    .param p3, "windowOverrideRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 996
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v6

    .line 997
    .local v6, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v6}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    .line 998
    .local v1, "launchTask":Lcom/android/systemui/recents/model/Task;
    if-eqz v1, :cond_0

    .line 999
    invoke-virtual {p2, v1}, Lcom/android/systemui/recents/model/Task;->copyFrom(Lcom/android/systemui/recents/model/Task;)V

    .line 1007
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/views/TaskStackView;->updateLayoutAlgorithm(Z)V

    .line 1008
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->updateToInitialState()V

    .line 1009
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v0

    .line 1010
    invoke-virtual {p1}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object v5, p3

    .line 1009
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getStackTransformScreenCoordinates(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;Landroid/graphics/Rect;)Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 1011
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    return-object v0

    .line 1002
    :cond_0
    invoke-virtual {v6, v0}, Lcom/android/systemui/recents/model/TaskStack;->getStackFrontMostTask(Z)Lcom/android/systemui/recents/model/Task;

    move-result-object v1

    .line 1003
    invoke-virtual {p2, v1}, Lcom/android/systemui/recents/model/Task;->copyFrom(Lcom/android/systemui/recents/model/Task;)V

    goto :goto_0
.end method

.method private getWindowRectOverride(I)Landroid/graphics/Rect;
    .locals 7
    .param p1, "growTarget"    # I

    .prologue
    .line 1166
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1167
    const/4 v0, 0x0

    return-object v0

    .line 1169
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1170
    .local v2, "result":Landroid/graphics/Rect;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v6

    .line 1172
    .local v6, "displayRect":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 1173
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDockedDividerSize(Landroid/content/Context;)I

    move-result v5

    .line 1171
    const/4 v1, 0x4

    move v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;III)V

    .line 1174
    return-object v2
.end method

.method private preloadIcon(I)V
    .locals 4
    .param p1, "runningTaskId"    # I

    .prologue
    .line 781
    new-instance v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 782
    .local v0, "launchOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    iput p1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 783
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    .line 784
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    .line 785
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 779
    return-void
.end method

.method private reloadResources()V
    .locals 8

    .prologue
    const v4, 0x7f0d0345

    .line 668
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 671
    .local v7, "res":Landroid/content/res/Resources;
    const v0, 0x1050017

    .line 670
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mStatusBarHeight:I

    .line 673
    const v0, 0x1050018

    .line 672
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mNavBarHeight:I

    .line 675
    const v0, 0x105001a

    .line 674
    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mNavBarWidth:I

    .line 677
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableLowerAppbarHeight:Z

    if-eqz v0, :cond_0

    .line 678
    const v1, 0x7f0d034a

    .line 681
    .local v1, "tHeaderBarHeight":I
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move v2, v1

    move v3, v1

    move v5, v1

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getDimensionForDevice(Landroid/content/Context;IIIIII)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    .line 667
    return-void

    .line 679
    .end local v1    # "tHeaderBarHeight":I
    :cond_0
    const v1, 0x7f0d0344

    .restart local v1    # "tHeaderBarHeight":I
    goto :goto_0
.end method

.method private startRecentsActivity(Landroid/app/ActivityOptions;)V
    .locals 4
    .param p1, "opts"    # Landroid/app/ActivityOptions;

    .prologue
    .line 1181
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1182
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.systemui"

    const-string/jumbo v2, "com.android.systemui.recents.RecentsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1183
    const v1, 0x10804000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1188
    const-string/jumbo v1, "RecentsImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startRecentsActivity for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    if-eqz p1, :cond_0

    .line 1191
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 1195
    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;

    invoke-direct {v2}, Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1180
    return-void

    .line 1193
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private updateHeaderBarLayout(Lcom/android/systemui/recents/model/TaskStack;Landroid/graphics/Rect;)V
    .locals 12
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "windowRectOverride"    # Landroid/graphics/Rect;

    .prologue
    const/4 v10, 0x0

    .line 700
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v6

    .line 701
    .local v6, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 702
    .local v1, "displayRect":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 703
    .local v7, "systemInsets":Landroid/graphics/Rect;
    invoke-virtual {v6, v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getStableInsets(Landroid/graphics/Rect;)V

    .line 704
    if-eqz p2, :cond_4

    .line 705
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 715
    .local v2, "windowRect":Landroid/graphics/Rect;
    :goto_0
    iput v10, v7, Landroid/graphics/Rect;->top:I

    .line 717
    invoke-direct {p0, v7, v2}, Lcom/android/systemui/recents/RecentsImpl;->calculateWindowStableInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 718
    invoke-virtual {v2, v10, v10}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 720
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v0

    .line 723
    .local v0, "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    invoke-virtual {v0, v7}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->setSystemInsets(Landroid/graphics/Rect;)Z

    .line 724
    if-eqz p1, :cond_3

    .line 725
    iget v3, v7, Landroid/graphics/Rect;->top:I

    .line 726
    iget v4, v7, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskStackBounds:Landroid/graphics/Rect;

    .line 725
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getTaskStackBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 727
    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->reset()V

    .line 728
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskStackBounds:Landroid/graphics/Rect;

    .line 729
    invoke-static {p1}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;->getStackStateForStack(Lcom/android/systemui/recents/model/TaskStack;)Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;

    move-result-object v4

    .line 728
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->initialize(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$StackState;)V

    .line 730
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3, p1, v10}, Lcom/android/systemui/recents/views/TaskStackView;->setTasks(Lcom/android/systemui/recents/model/TaskStack;Z)V

    .line 732
    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;->getUntransformedTaskViewBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 733
    .local v8, "taskViewBounds":Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 734
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 735
    .local v9, "taskViewWidth":I
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBarLock:Ljava/lang/Object;

    monitor-enter v4

    .line 736
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v3

    if-ne v3, v9, :cond_0

    .line 737
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v3

    iget v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    if-eq v3, v5, :cond_1

    .line 738
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    .line 739
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v9, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 740
    iget v10, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 738
    invoke-virtual {v3, v5, v10}, Lcom/android/systemui/recents/views/TaskViewHeader;->measure(II)V

    .line 742
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11, v9, v5}, Lcom/android/systemui/recents/views/TaskViewHeader;->layout(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 746
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 747
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-eq v3, v9, :cond_5

    .line 750
    :cond_2
    :goto_1
    iget v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 749
    invoke-static {v9, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    .line 699
    .end local v8    # "taskViewBounds":Landroid/graphics/Rect;
    .end local v9    # "taskViewWidth":I
    :cond_3
    return-void

    .line 706
    .end local v0    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .end local v2    # "windowRect":Landroid/graphics/Rect;
    :cond_4
    invoke-virtual {v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect()Landroid/graphics/Rect;

    move-result-object v2

    .restart local v2    # "windowRect":Landroid/graphics/Rect;
    goto/16 :goto_0

    .line 735
    .restart local v0    # "stackLayout":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm;
    .restart local v8    # "taskViewBounds":Landroid/graphics/Rect;
    .restart local v9    # "taskViewWidth":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 748
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mThumbTransitionBitmapCache:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mTaskBarHeight:I

    if-eq v3, v4, :cond_3

    goto :goto_1
.end method


# virtual methods
.method public cancelPreloadingRecents()V
    .locals 0

    .prologue
    .line 485
    return-void
.end method

.method public dockTopTask(IIILandroid/graphics/Rect;Z)V
    .locals 9
    .param p1, "topTaskId"    # I
    .param p2, "dragMode"    # I
    .param p3, "stackCreateMode"    # I
    .param p4, "initialBounds"    # Landroid/graphics/Rect;
    .param p5, "showHelpPopup"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 635
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v8

    .line 639
    .local v8, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v8, p1, p3, p4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->moveTaskToDockedStack(IILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;

    invoke-direct {v2, p2, p4}, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 642
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-object v7, v0, Lcom/android/systemui/recents/RecentsConfiguration;->mLaunchState:Lcom/android/systemui/recents/RecentsActivityLaunchState;

    .line 643
    .local v7, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iput-boolean p5, v7, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedSplitScreenWithHelpPopup:Z

    .line 647
    if-nez p2, :cond_1

    move v2, v4

    .line 651
    :goto_0
    const/4 v6, -0x1

    move-object v0, p0

    move v3, v1

    move v5, v1

    .line 645
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/RecentsImpl;->showRecents(ZZZZZI)V

    .line 634
    .end local v7    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    :cond_0
    return-void

    .restart local v7    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    :cond_1
    move v2, v1

    .line 647
    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1285
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 1286
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "RecentsImpl"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, " [0x"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "]"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1287
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mPropagateTaskStackChange="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mPropagateTaskStackChange:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 1288
    const-string/jumbo v1, " mLastToggleTime="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mLastToggleTime:J

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1290
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/recents/views/TaskStackView;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1284
    return-void
.end method

.method protected getHomeTransitionActivityOptions()Landroid/app/ActivityOptions;
    .locals 5

    .prologue
    .line 814
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSpreadAnimation:Z

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 818
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/recents/RecentsImpl$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/recents/RecentsImpl$3;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    .line 816
    const v3, 0x7f0500ae

    .line 817
    const v4, 0x7f0500b0

    .line 815
    invoke-static {v0, v3, v4, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0

    .line 831
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 834
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    .line 832
    const v2, 0x7f0500ad

    .line 833
    const v3, 0x7f0500af

    .line 834
    const/4 v4, 0x0

    .line 831
    invoke-static {v0, v2, v3, v1, v4}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method protected getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;
    .locals 5

    .prologue
    .line 792
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 795
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mHandler:Landroid/os/Handler;

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSpreadAnimation:Z

    if-eqz v0, :cond_0

    .line 796
    new-instance v0, Lcom/android/systemui/recents/RecentsImpl$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsImpl$2;-><init>(Lcom/android/systemui/recents/RecentsImpl;)V

    .line 793
    :goto_0
    const v3, 0x7f0500b1

    .line 794
    const v4, 0x7f0500b2

    .line 792
    invoke-static {v1, v3, v4, v2, v0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0

    .line 806
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideRecents(ZZ)V
    .locals 2
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    .line 346
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsImpl;->showNextTask()V

    .line 352
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    .line 353
    return-void

    .line 364
    :cond_0
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSplitLayout:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mPropagateTaskStackChange:Z

    if-eqz v0, :cond_1

    .line 365
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mPropagateTaskStackChange:Z

    .line 371
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;

    invoke-direct {v1, p1, p2}, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 345
    return-void
.end method

.method protected isRecentsActivityVisible(Landroid/util/MutableBoolean;)Z
    .locals 1
    .param p1, "isHomeStackVisible"    # Landroid/util/MutableBoolean;

    .prologue
    .line 1154
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/recents/RecentsImpl;->isRecentsActivityVisible(Landroid/util/MutableBoolean;Landroid/util/MutableInt;)Z

    move-result v0

    return v0
.end method

.method protected isRecentsActivityVisible(Landroid/util/MutableBoolean;Landroid/util/MutableInt;)Z
    .locals 2
    .param p1, "isHomeStackVisible"    # Landroid/util/MutableBoolean;
    .param p2, "fullscreenTaskId"    # Landroid/util/MutableInt;

    .prologue
    .line 1160
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 1161
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible(Landroid/util/MutableBoolean;Landroid/util/MutableInt;)Z

    move-result v1

    return v1
.end method

.method public onAnimationFinished()V
    .locals 2

    .prologue
    .line 1202
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowLastAnimationFrameEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowLastAnimationFrameEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1201
    return-void
.end method

.method public onBootCompleted()V
    .locals 5

    .prologue
    .line 243
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    .line 244
    .local v1, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v2

    .line 245
    .local v2, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 246
    new-instance v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 247
    .local v0, "launchOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getIconCacheSize()I

    move-result v3

    iput v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 248
    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getThumbnailCacheSize()I

    move-result v3

    iput v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 249
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    .line 250
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v2, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 240
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 2

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsImpl;->reloadResources()V

    .line 258
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->reloadDisplayConfiguration()V

    .line 260
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/TaskStackView;->reloadOnConfigurationChange(Z)V

    .line 261
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->onConfigurationChanged()V

    .line 255
    return-void
.end method

.method public onDraggingInRecents(F)V
    .locals 2
    .param p1, "distanceFromTop"    # F

    .prologue
    .line 490
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEvent;

    invoke-direct {v1, p1}, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEvent;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->sendOntoMainThread(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 489
    return-void
.end method

.method public onDraggingInRecentsEnded(F)V
    .locals 2
    .param p1, "velocity"    # F

    .prologue
    .line 494
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;

    invoke-direct {v1, p1}, Lcom/android/systemui/recents/events/ui/DraggingInRecentsEndedEvent;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->sendOntoMainThread(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 493
    return-void
.end method

.method public onStartScreenPinning(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taskId"    # I

    .prologue
    move-object v0, p1

    .line 286
    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    .line 287
    .local v0, "app":Lcom/android/systemui/SystemUIApplication;
    const-class v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v2}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 288
    .local v1, "statusBar":Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    if-eqz v1, :cond_0

    .line 289
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showScreenPinningRequest(IZ)V

    .line 285
    :cond_0
    return-void
.end method

.method public onVisibilityChanged(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "visible"    # Z

    .prologue
    .line 271
    iput-boolean p2, p0, Lcom/android/systemui/recents/RecentsImpl;->mPropagateTaskStackChange:Z

    move-object v0, p1

    .line 273
    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    .line 274
    .local v0, "app":Lcom/android/systemui/SystemUIApplication;
    const-class v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v2}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 275
    .local v1, "statusBar":Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    if-eqz v1, :cond_0

    .line 276
    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateRecentsVisibility(Z)V

    .line 269
    :cond_0
    return-void
.end method

.method public preloadRecents()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 461
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    .line 462
    .local v3, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    new-instance v0, Landroid/util/MutableBoolean;

    invoke-direct {v0, v7}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 463
    .local v0, "isHomeStackVisible":Landroid/util/MutableBoolean;
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsImpl;->isRecentsActivityVisible(Landroid/util/MutableBoolean;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 464
    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    .line 465
    .local v2, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    .line 466
    .local v1, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v5

    sput-object v5, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 467
    sget-object v8, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    iget-boolean v5, v0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v5, :cond_2

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->preloadRawTasks(Z)V

    .line 468
    sget-object v8, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    if-eqz v2, :cond_3

    iget v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    :goto_1
    iget-boolean v9, v0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v9, :cond_4

    :goto_2
    invoke-virtual {v1, v8, v5, v6}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 469
    sget-object v5, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v4

    .line 470
    .local v4, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 473
    if-eqz v2, :cond_0

    .line 474
    iget v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-direct {p0, v5}, Lcom/android/systemui/recents/RecentsImpl;->preloadIcon(I)V

    .line 480
    :cond_0
    invoke-direct {p0, v4, v10}, Lcom/android/systemui/recents/RecentsImpl;->updateHeaderBarLayout(Lcom/android/systemui/recents/model/TaskStack;Landroid/graphics/Rect;)V

    .line 458
    .end local v1    # "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .end local v2    # "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v4    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    :cond_1
    return-void

    .restart local v1    # "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    .restart local v2    # "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_2
    move v5, v7

    .line 467
    goto :goto_0

    .line 468
    :cond_3
    const/4 v5, -0x1

    goto :goto_1

    :cond_4
    move v6, v7

    goto :goto_2
.end method

.method public showNextAffiliatedTask()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 623
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "overview_affiliated_task_next"

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 624
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/RecentsImpl;->showRelativeAffiliatedTask(Z)V

    .line 621
    return-void
.end method

.method public showNextTask()V
    .locals 15

    .prologue
    const/4 v13, 0x0

    .line 501
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v7

    .line 502
    .local v7, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v4

    .line 503
    .local v4, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v12}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v5

    .line 504
    .local v5, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/4 v12, -0x1

    invoke-virtual {v4, v5, v12, v13}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 505
    invoke-virtual {v5}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v0

    .line 508
    .local v0, "focusedStack":Lcom/android/systemui/recents/model/TaskStack;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v12

    if-nez v12, :cond_1

    :cond_0
    return-void

    .line 511
    :cond_1
    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    .line 512
    .local v6, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    if-nez v6, :cond_2

    return-void

    .line 515
    :cond_2
    iget v12, v6, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    invoke-static {v12}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isHomeStack(I)Z

    move-result v2

    .line 516
    .local v2, "isRunningTaskInHomeStack":Z
    invoke-virtual {v0}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v10

    .line 517
    .local v10, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    const/4 v11, 0x0

    .line 518
    .local v11, "toTask":Lcom/android/systemui/recents/model/Task;
    const/4 v3, 0x0

    .line 519
    .local v3, "launchOpts":Landroid/app/ActivityOptions;
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 520
    .local v9, "taskCount":I
    add-int/lit8 v1, v9, -0x1

    .local v1, "i":I
    :goto_0
    const/4 v12, 0x1

    if-lt v1, v12, :cond_3

    .line 521
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/model/Task;

    .line 522
    .local v8, "task":Lcom/android/systemui/recents/model/Task;
    if-eqz v2, :cond_4

    .line 523
    add-int/lit8 v12, v1, -0x1

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "toTask":Lcom/android/systemui/recents/model/Task;
    check-cast v11, Lcom/android/systemui/recents/model/Task;

    .line 524
    .local v11, "toTask":Lcom/android/systemui/recents/model/Task;
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 525
    const v13, 0x7f0500b7

    .line 526
    const v14, 0x7f0500ac

    .line 524
    invoke-static {v12, v13, v14}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    .line 538
    .end local v3    # "launchOpts":Landroid/app/ActivityOptions;
    .end local v8    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v11    # "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_3
    :goto_1
    if-nez v11, :cond_6

    .line 540
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 541
    const v13, 0x7f0500b8

    .line 540
    invoke-static {v12, v13}, Landroid/app/ActivityOptions;->makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;

    move-result-object v12

    .line 539
    invoke-virtual {v7, v12}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    .line 542
    return-void

    .line 528
    .restart local v3    # "launchOpts":Landroid/app/ActivityOptions;
    .restart local v8    # "task":Lcom/android/systemui/recents/model/Task;
    .local v11, "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_4
    iget-object v12, v8, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v12, v12, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget v13, v6, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-ne v12, v13, :cond_5

    .line 529
    add-int/lit8 v12, v1, -0x1

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "toTask":Lcom/android/systemui/recents/model/Task;
    check-cast v11, Lcom/android/systemui/recents/model/Task;

    .line 530
    .local v11, "toTask":Lcom/android/systemui/recents/model/Task;
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    .line 531
    const v13, 0x7f0500ba

    .line 532
    const v14, 0x7f0500b9

    .line 530
    invoke-static {v12, v13, v14}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v3

    .local v3, "launchOpts":Landroid/app/ActivityOptions;
    goto :goto_1

    .line 520
    .local v3, "launchOpts":Landroid/app/ActivityOptions;
    .local v11, "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 546
    .end local v3    # "launchOpts":Landroid/app/ActivityOptions;
    .end local v8    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v11    # "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_6
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    iget-object v13, v11, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v14, v11, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {v7, v12, v13, v14, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/String;Landroid/app/ActivityOptions;)Z

    .line 500
    return-void
.end method

.method public showPrevAffiliatedTask()V
    .locals 3

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "overview_affiliated_task_prev"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 630
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsImpl;->showRelativeAffiliatedTask(Z)V

    .line 627
    return-void
.end method

.method public showRecents(ZZZZZI)V
    .locals 11
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "draggingInRecents"    # Z
    .param p3, "animate"    # Z
    .param p4, "launchedWhileDockingTask"    # Z
    .param p5, "fromHome"    # Z
    .param p6, "growTarget"    # I

    .prologue
    .line 296
    iput-boolean p1, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    .line 297
    iput-boolean p2, p0, Lcom/android/systemui/recents/RecentsImpl;->mDraggingInRecents:Z

    .line 298
    iput-boolean p4, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    .line 301
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableDesktopMode:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsImpl;->showRecentsWindow()V

    .line 303
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->isAsleep()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    .line 328
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v10

    .line 329
    .local v10, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    if-nez p4, :cond_5

    move v7, p2

    .line 330
    :goto_1
    new-instance v9, Landroid/util/MutableBoolean;

    invoke-direct {v9, v7}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 332
    .local v9, "isHomeStackVisible":Landroid/util/MutableBoolean;
    new-instance v8, Landroid/util/MutableInt;

    const/4 v0, -0x1

    invoke-direct {v8, v0}, Landroid/util/MutableInt;-><init>(I)V

    .line 334
    .local v8, "fullscreenTaskId":Landroid/util/MutableInt;
    if-nez v7, :cond_6

    invoke-virtual {p0, v9, v8}, Lcom/android/systemui/recents/RecentsImpl;->isRecentsActivityVisible(Landroid/util/MutableBoolean;Landroid/util/MutableInt;)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_6

    .line 295
    .end local v8    # "fullscreenTaskId":Landroid/util/MutableInt;
    .end local v9    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    .end local v10    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :goto_2
    return-void

    .line 309
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 315
    if-nez p1, :cond_3

    .line 316
    return-void

    .line 318
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    goto :goto_0

    .line 319
    :cond_4
    if-eqz p1, :cond_1

    .line 322
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->startDozing()V

    .line 323
    return-void

    .line 329
    .restart local v10    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_5
    const/4 v7, 0x1

    .local v7, "forceVisible":Z
    goto :goto_1

    .line 336
    .end local v7    # "forceVisible":Z
    .restart local v8    # "fullscreenTaskId":Landroid/util/MutableInt;
    .restart local v9    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    :cond_6
    :try_start_1
    invoke-virtual {v10}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    .line 337
    .local v1, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-boolean v0, v9, Landroid/util/MutableBoolean;->value:Z

    if-nez v0, :cond_7

    move/from16 v2, p5

    .line 338
    :goto_3
    iget v5, v8, Landroid/util/MutableInt;->value:I

    move-object v0, p0

    move v3, p3

    move/from16 v4, p6

    .line 337
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/RecentsImpl;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;ZZII)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 340
    .end local v1    # "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v8    # "fullscreenTaskId":Landroid/util/MutableInt;
    .end local v9    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    .end local v10    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :catch_0
    move-exception v6

    .line 341
    .local v6, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v0, "RecentsImpl"

    const-string/jumbo v2, "Failed to launch RecentsActivity"

    invoke-static {v0, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 337
    .end local v6    # "e":Landroid/content/ActivityNotFoundException;
    .restart local v1    # "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v8    # "fullscreenTaskId":Landroid/util/MutableInt;
    .restart local v9    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    .restart local v10    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_7
    const/4 v2, 0x1

    goto :goto_3
.end method

.method showRecentsWindow()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 1249
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mRecentsWindow:Lcom/android/systemui/recents/desktop/RecentsWindow;

    if-eqz v7, :cond_0

    .line 1250
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mRecentsWindow:Lcom/android/systemui/recents/desktop/RecentsWindow;

    invoke-virtual {v7}, Lcom/android/systemui/recents/desktop/RecentsWindow;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1251
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;

    sget-object v8, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->RIGHT:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-direct {v7, v8}, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;)V

    invoke-virtual {v6, v7}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 1248
    :cond_0
    :goto_0
    return-void

    .line 1254
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    .line 1255
    .local v5, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v2

    .line 1258
    .local v2, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    .line 1259
    .local v3, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-boolean v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v7, :cond_4

    if-eqz v3, :cond_4

    .line 1260
    iget v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 1264
    .local v4, "runningTaskId":I
    :goto_1
    new-instance v0, Landroid/util/MutableBoolean;

    invoke-direct {v0, v6}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 1265
    .local v0, "isHomeStackVisible":Landroid/util/MutableBoolean;
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsImpl;->isRecentsActivityVisible(Landroid/util/MutableBoolean;)Z

    .line 1267
    iget-boolean v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    if-nez v7, :cond_2

    sget-object v7, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    if-nez v7, :cond_3

    .line 1268
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v7

    sput-object v7, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 1270
    :cond_3
    iget-boolean v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v7, :cond_5

    iget-boolean v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    if-nez v7, :cond_5

    sget-object v7, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v7}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1275
    :goto_2
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    .line 1276
    .local v1, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iput v4, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    .line 1277
    iget-boolean v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    iput-boolean v6, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    .line 1279
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mRecentsWindow:Lcom/android/systemui/recents/desktop/RecentsWindow;

    invoke-virtual {v6}, Lcom/android/systemui/recents/desktop/RecentsWindow;->show()V

    goto :goto_0

    .line 1261
    .end local v0    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    .end local v1    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    .end local v4    # "runningTaskId":I
    :cond_4
    const/4 v4, -0x1

    .restart local v4    # "runningTaskId":I
    goto :goto_1

    .line 1271
    .restart local v0    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    :cond_5
    sget-object v7, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    iget-boolean v8, v0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v8, :cond_6

    :goto_3
    invoke-virtual {v2, v7, v4, v6}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    goto :goto_2

    :cond_6
    const/4 v6, 0x1

    goto :goto_3
.end method

.method public showRelativeAffiliatedTask(Z)V
    .locals 20
    .param p1, "showNextTask"    # Z

    .prologue
    .line 553
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v11

    .line 554
    .local v11, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v7

    .line 555
    .local v7, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v9

    .line 556
    .local v9, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/16 v17, -0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v9, v0, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 557
    invoke-virtual {v9}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v3

    .line 560
    .local v3, "focusedStack":Lcom/android/systemui/recents/model/TaskStack;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v17

    if-nez v17, :cond_1

    :cond_0
    return-void

    .line 563
    :cond_1
    invoke-virtual {v11}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v10

    .line 564
    .local v10, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    if-nez v10, :cond_2

    return-void

    .line 566
    :cond_2
    iget v0, v10, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isHomeStack(I)Z

    move-result v17

    if-eqz v17, :cond_3

    return-void

    .line 569
    :cond_3
    invoke-virtual {v3}, Lcom/android/systemui/recents/model/TaskStack;->getStackTasks()Ljava/util/ArrayList;

    move-result-object v14

    .line 570
    .local v14, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    const/4 v15, 0x0

    .line 571
    .local v15, "toTask":Lcom/android/systemui/recents/model/Task;
    const/4 v6, 0x0

    .line 572
    .local v6, "launchOpts":Landroid/app/ActivityOptions;
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 573
    .local v13, "taskCount":I
    const/4 v8, 0x0

    .line 574
    .local v8, "numAffiliatedTasks":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v13, :cond_5

    .line 575
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/recents/model/Task;

    .line 576
    .local v12, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v0, v12, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v17, v0

    iget v0, v10, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 577
    iget-object v4, v12, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    .line 579
    .local v4, "group":Lcom/android/systemui/recents/model/TaskGrouping;
    if-eqz p1, :cond_7

    .line 580
    invoke-virtual {v4, v12}, Lcom/android/systemui/recents/model/TaskGrouping;->getNextTaskInGroup(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/model/Task$TaskKey;

    move-result-object v16

    .line 581
    .local v16, "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    .line 582
    const v18, 0x7f0500b7

    .line 583
    const v19, 0x7f0500b6

    .line 581
    invoke-static/range {v17 .. v19}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v6

    .line 590
    .local v6, "launchOpts":Landroid/app/ActivityOptions;
    :goto_1
    if-eqz v16, :cond_4

    .line 591
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/systemui/recents/model/TaskStack;->findTaskWithId(I)Lcom/android/systemui/recents/model/Task;

    move-result-object v15

    .line 593
    .end local v15    # "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_4
    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskGrouping;->getTaskCount()I

    move-result v8

    .line 599
    .end local v4    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .end local v6    # "launchOpts":Landroid/app/ActivityOptions;
    .end local v12    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v16    # "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    :cond_5
    if-nez v15, :cond_a

    .line 600
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v8, v0, :cond_6

    .line 601
    if-eqz p1, :cond_9

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    .line 604
    const v18, 0x7f0500b5

    .line 603
    invoke-static/range {v17 .. v18}, Landroid/app/ActivityOptions;->makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;

    move-result-object v17

    .line 602
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    .line 611
    :cond_6
    :goto_2
    return-void

    .line 585
    .restart local v4    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .local v6, "launchOpts":Landroid/app/ActivityOptions;
    .restart local v12    # "task":Lcom/android/systemui/recents/model/Task;
    .restart local v15    # "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_7
    invoke-virtual {v4, v12}, Lcom/android/systemui/recents/model/TaskGrouping;->getPrevTaskInGroup(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/model/Task$TaskKey;

    move-result-object v16

    .line 586
    .restart local v16    # "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    .line 587
    const v18, 0x7f0500ba

    .line 588
    const v19, 0x7f0500b9

    .line 586
    invoke-static/range {v17 .. v19}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v6

    .local v6, "launchOpts":Landroid/app/ActivityOptions;
    goto :goto_1

    .line 574
    .end local v4    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .end local v16    # "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    .local v6, "launchOpts":Landroid/app/ActivityOptions;
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 607
    .end local v6    # "launchOpts":Landroid/app/ActivityOptions;
    .end local v12    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v15    # "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    .line 608
    const v18, 0x7f0500b8

    .line 607
    invoke-static/range {v17 .. v18}, Landroid/app/ActivityOptions;->makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;

    move-result-object v17

    .line 606
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    goto :goto_2

    .line 615
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string/jumbo v18, "overview_affiliated_task_launch"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    iget-object v0, v15, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v18, v0

    iget-object v0, v15, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v11, v0, v1, v2, v6}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/String;Landroid/app/ActivityOptions;)Z

    .line 552
    return-void
.end method

.method protected startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;ZZII)V
    .locals 14
    .param p1, "runningTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "isHomeStackVisible"    # Z
    .param p3, "animate"    # Z
    .param p4, "growTarget"    # I
    .param p5, "fullscreenTaskId"    # I

    .prologue
    .line 1076
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v4

    .line 1077
    .local v4, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v3

    .line 1079
    .local v3, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-boolean v11, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v11, :cond_6

    if-eqz p1, :cond_6

    .line 1080
    iget v6, p1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 1086
    .local v6, "runningTaskId":I
    :goto_0
    iget-boolean v11, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v11, :cond_0

    iget-boolean v11, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    if-nez v11, :cond_0

    sget-object v11, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    if-nez v11, :cond_1

    .line 1088
    :cond_0
    iget-object v11, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v11}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v11

    sput-object v11, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 1090
    :cond_1
    iget-boolean v11, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v11, :cond_7

    iget-boolean v11, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    if-nez v11, :cond_7

    sget-object v11, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v11}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1094
    :goto_1
    sget-object v11, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v11}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v7

    .line 1095
    .local v7, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v7}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v11

    if-lez v11, :cond_9

    const/4 v2, 0x1

    .line 1096
    .local v2, "hasRecentTasks":Z
    :goto_2
    if-eqz p1, :cond_2

    if-eqz p2, :cond_a

    :cond_2
    const/4 v9, 0x0

    .line 1099
    .local v9, "useThumbnailTransition":Z
    :goto_3
    if-nez v9, :cond_3

    iget-boolean v11, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-eqz v11, :cond_b

    :cond_3
    const/4 v11, 0x0

    :goto_4
    iput-boolean v11, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    .line 1100
    if-nez v9, :cond_c

    iget-boolean v11, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    :goto_5
    iput-boolean v11, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    .line 1101
    iget-boolean v11, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    iput-boolean v11, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    .line 1102
    iget-boolean v11, p0, Lcom/android/systemui/recents/RecentsImpl;->mDraggingInRecents:Z

    iput-boolean v11, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDragGesture:Z

    .line 1103
    iput v6, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    .line 1104
    iget-boolean v11, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    iput-boolean v11, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    .line 1106
    move/from16 v0, p5

    iput v0, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFullscreenTaskId:I

    .line 1111
    invoke-direct {p0, v6}, Lcom/android/systemui/recents/RecentsImpl;->preloadIcon(I)V

    .line 1114
    move/from16 v0, p4

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/RecentsImpl;->getWindowRectOverride(I)Landroid/graphics/Rect;

    move-result-object v10

    .line 1116
    .local v10, "windowOverrideRect":Landroid/graphics/Rect;
    sget-boolean v11, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-nez v11, :cond_4

    :cond_4
    if-nez v10, :cond_5

    .line 1118
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect()Landroid/graphics/Rect;

    move-result-object v10

    .line 1121
    :cond_5
    invoke-direct {p0, v7, v10}, Lcom/android/systemui/recents/RecentsImpl;->updateHeaderBarLayout(Lcom/android/systemui/recents/model/TaskStack;Landroid/graphics/Rect;)V

    .line 1125
    iget-object v11, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v11}, Lcom/android/systemui/recents/views/TaskStackView;->computeStackVisibilityReport()Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;

    move-result-object v8

    .line 1128
    .local v8, "stackVr":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    iget v11, v8, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;->numVisibleTasks:I

    iput v11, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleTasks:I

    .line 1129
    iget v11, v8, Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;->numVisibleThumbnails:I

    iput v11, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleThumbnails:I

    .line 1131
    if-nez p3, :cond_d

    .line 1132
    iget-object v11, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-static {v11, v12, v13}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/systemui/recents/RecentsImpl;->startRecentsActivity(Landroid/app/ActivityOptions;)V

    .line 1133
    return-void

    .line 1081
    .end local v2    # "hasRecentTasks":Z
    .end local v6    # "runningTaskId":I
    .end local v7    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v8    # "stackVr":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    .end local v9    # "useThumbnailTransition":Z
    .end local v10    # "windowOverrideRect":Landroid/graphics/Rect;
    :cond_6
    const/4 v6, -0x1

    .restart local v6    # "runningTaskId":I
    goto/16 :goto_0

    .line 1091
    :cond_7
    sget-object v12, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    if-eqz p2, :cond_8

    const/4 v11, 0x0

    :goto_6
    invoke-virtual {v4, v12, v6, v11}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    goto :goto_1

    :cond_8
    const/4 v11, 0x1

    goto :goto_6

    .line 1095
    .restart local v7    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    :cond_9
    const/4 v2, 0x0

    .restart local v2    # "hasRecentTasks":Z
    goto :goto_2

    :cond_a
    move v9, v2

    .line 1096
    goto :goto_3

    .line 1099
    .restart local v9    # "useThumbnailTransition":Z
    :cond_b
    const/4 v11, 0x1

    goto :goto_4

    .line 1100
    :cond_c
    const/4 v11, 0x1

    goto :goto_5

    .line 1137
    .restart local v8    # "stackVr":Lcom/android/systemui/recents/views/TaskStackLayoutAlgorithm$VisibilityReport;
    .restart local v10    # "windowOverrideRect":Landroid/graphics/Rect;
    :cond_d
    if-eqz v9, :cond_e

    .line 1139
    iget-object v11, p0, Lcom/android/systemui/recents/RecentsImpl;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move/from16 v0, p5

    invoke-direct {p0, p1, v11, v10, v0}, Lcom/android/systemui/recents/RecentsImpl;->getThumbnailTransitionActivityOptions(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/systemui/recents/views/TaskStackView;Landroid/graphics/Rect;I)Landroid/app/ActivityOptions;

    move-result-object v5

    .line 1148
    .local v5, "opts":Landroid/app/ActivityOptions;
    :goto_7
    invoke-direct {p0, v5}, Lcom/android/systemui/recents/RecentsImpl;->startRecentsActivity(Landroid/app/ActivityOptions;)V

    .line 1149
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iput-wide v12, p0, Lcom/android/systemui/recents/RecentsImpl;->mLastToggleTime:J

    .line 1074
    return-void

    .line 1144
    .end local v5    # "opts":Landroid/app/ActivityOptions;
    :cond_e
    if-eqz v2, :cond_f

    .line 1145
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsImpl;->getHomeTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v5

    .restart local v5    # "opts":Landroid/app/ActivityOptions;
    goto :goto_7

    .line 1146
    .end local v5    # "opts":Landroid/app/ActivityOptions;
    :cond_f
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsImpl;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v5

    .restart local v5    # "opts":Landroid/app/ActivityOptions;
    goto :goto_7
.end method

.method public toggleRecents(I)V
    .locals 15
    .param p1, "growTarget"    # I

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mFastAltTabTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    return-void

    .line 381
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mDraggingInRecents:Z

    .line 382
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    .line 383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    .line 385
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v14

    .line 387
    .local v14, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableDesktopMode:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsImpl;->toggleRecentsWindow()V

    .line 389
    return-void

    .line 394
    :cond_1
    :try_start_0
    new-instance v12, Landroid/util/MutableBoolean;

    const/4 v0, 0x1

    invoke-direct {v12, v0}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 395
    .local v12, "isHomeStackVisible":Landroid/util/MutableBoolean;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/systemui/recents/RecentsImpl;->mLastToggleTime:J

    sub-long v10, v2, v4

    .line 397
    .local v10, "elapsedTime":J
    new-instance v9, Landroid/util/MutableInt;

    const/4 v0, -0x1

    invoke-direct {v9, v0}, Landroid/util/MutableInt;-><init>(I)V

    .line 400
    .local v9, "fullscreenTaskId":Landroid/util/MutableInt;
    invoke-virtual {p0, v12, v9}, Lcom/android/systemui/recents/RecentsImpl;->isRecentsActivityVisible(Landroid/util/MutableBoolean;Landroid/util/MutableInt;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 402
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getDebugFlags()Lcom/android/systemui/recents/RecentsDebugFlags;

    move-result-object v7

    .line 403
    .local v7, "debugFlags":Lcom/android/systemui/recents/RecentsDebugFlags;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v6

    .line 404
    .local v6, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v6}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v13

    .line 405
    .local v13, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-boolean v0, v13, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-nez v0, :cond_5

    .line 407
    invoke-virtual {v7}, Lcom/android/systemui/recents/RecentsDebugFlags;->isPagingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 408
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapMinTime()I

    move-result v0

    int-to-long v2, v0

    cmp-long v0, v2, v10

    if-gez v0, :cond_4

    .line 409
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    int-to-long v2, v0

    cmp-long v0, v10, v2

    if-gez v0, :cond_4

    .line 412
    :cond_2
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAppList:Z

    if-eqz v0, :cond_3

    .line 413
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 434
    :goto_0
    return-void

    .line 416
    :cond_3
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;

    invoke-direct {v2}, Lcom/android/systemui/recents/events/activity/LaunchNextTaskRequestEvent;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 453
    .end local v6    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .end local v7    # "debugFlags":Lcom/android/systemui/recents/RecentsDebugFlags;
    .end local v9    # "fullscreenTaskId":Landroid/util/MutableInt;
    .end local v10    # "elapsedTime":J
    .end local v12    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    .end local v13    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    :catch_0
    move-exception v8

    .line 454
    .local v8, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v0, "RecentsImpl"

    const-string/jumbo v2, "Failed to launch RecentsActivity"

    invoke-static {v0, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 375
    .end local v8    # "e":Landroid/content/ActivityNotFoundException;
    :goto_1
    return-void

    .line 420
    .restart local v6    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .restart local v7    # "debugFlags":Lcom/android/systemui/recents/RecentsDebugFlags;
    .restart local v9    # "fullscreenTaskId":Landroid/util/MutableInt;
    .restart local v10    # "elapsedTime":J
    .restart local v12    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    .restart local v13    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/events/activity/IterateRecentsEvent;

    invoke-direct {v2}, Lcom/android/systemui/recents/events/activity/IterateRecentsEvent;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0

    .line 427
    :cond_5
    const-wide/16 v2, 0x15e

    cmp-long v0, v10, v2

    if-gez v0, :cond_6

    .line 428
    return-void

    .line 431
    :cond_6
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;

    invoke-direct {v2}, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 432
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mLastToggleTime:J

    goto :goto_0

    .line 440
    .end local v6    # "config":Lcom/android/systemui/recents/RecentsConfiguration;
    .end local v7    # "debugFlags":Lcom/android/systemui/recents/RecentsDebugFlags;
    .end local v13    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    :cond_7
    const-wide/16 v2, 0x15e

    cmp-long v0, v10, v2

    if-gez v0, :cond_8

    .line 441
    return-void

    .line 445
    :cond_8
    invoke-virtual {v14}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    .line 446
    .local v1, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-boolean v2, v12, Landroid/util/MutableBoolean;->value:Z

    .line 447
    iget v5, v9, Landroid/util/MutableInt;->value:I

    .line 446
    const/4 v3, 0x1

    move-object v0, p0

    move/from16 v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/RecentsImpl;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;ZZII)V

    .line 450
    const-string/jumbo v0, "recentapps"

    invoke-virtual {v14, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 451
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/recents/RecentsImpl;->mLastToggleTime:J
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method toggleRecentsWindow()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 1207
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mRecentsWindow:Lcom/android/systemui/recents/desktop/RecentsWindow;

    if-eqz v7, :cond_0

    .line 1208
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mRecentsWindow:Lcom/android/systemui/recents/desktop/RecentsWindow;

    invoke-virtual {v7}, Lcom/android/systemui/recents/desktop/RecentsWindow;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1209
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mRecentsWindow:Lcom/android/systemui/recents/desktop/RecentsWindow;

    invoke-virtual {v6}, Lcom/android/systemui/recents/desktop/RecentsWindow;->dismiss()V

    .line 1206
    :cond_0
    :goto_0
    return-void

    .line 1212
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    .line 1213
    .local v5, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v2

    .line 1216
    .local v2, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-virtual {v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    .line 1217
    .local v3, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-boolean v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v7, :cond_4

    if-eqz v3, :cond_4

    .line 1218
    iget v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 1222
    .local v4, "runningTaskId":I
    :goto_1
    new-instance v0, Landroid/util/MutableBoolean;

    invoke-direct {v0, v6}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 1223
    .local v0, "isHomeStackVisible":Landroid/util/MutableBoolean;
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsImpl;->isRecentsActivityVisible(Landroid/util/MutableBoolean;)Z

    .line 1225
    iget-boolean v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    if-nez v7, :cond_2

    sget-object v7, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    if-nez v7, :cond_3

    .line 1226
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v7

    sput-object v7, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 1228
    :cond_3
    iget-boolean v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mLaunchedWhileDocking:Z

    if-nez v7, :cond_5

    iget-boolean v7, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    if-nez v7, :cond_5

    sget-object v7, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v7}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1233
    :goto_2
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    .line 1234
    .local v1, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iput v4, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    .line 1235
    iget-boolean v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mTriggeredFromAltTab:Z

    iput-boolean v6, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    .line 1237
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsImpl;->mRecentsWindow:Lcom/android/systemui/recents/desktop/RecentsWindow;

    invoke-virtual {v6}, Lcom/android/systemui/recents/desktop/RecentsWindow;->show()V

    goto :goto_0

    .line 1219
    .end local v0    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    .end local v1    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    .end local v4    # "runningTaskId":I
    :cond_4
    const/4 v4, -0x1

    .restart local v4    # "runningTaskId":I
    goto :goto_1

    .line 1229
    .restart local v0    # "isHomeStackVisible":Landroid/util/MutableBoolean;
    :cond_5
    sget-object v7, Lcom/android/systemui/recents/RecentsImpl;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    iget-boolean v8, v0, Landroid/util/MutableBoolean;->value:Z

    if-eqz v8, :cond_6

    :goto_3
    invoke-virtual {v2, v7, v4, v6}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    goto :goto_2

    :cond_6
    const/4 v6, 0x1

    goto :goto_3
.end method
