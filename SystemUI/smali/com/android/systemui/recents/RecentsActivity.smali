.class public Lcom/android/systemui/recents/RecentsActivity;
.super Landroid/app/Activity;
.source "RecentsActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/RecentsActivity$-void__init___LambdaImpl0;,
        Lcom/android/systemui/recents/RecentsActivity$1;,
        Lcom/android/systemui/recents/RecentsActivity$2;,
        Lcom/android/systemui/recents/RecentsActivity$3;,
        Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;
    }
.end annotation


# instance fields
.field private launchDockedTaskFromFullRecents:Z

.field private mFinishedOnStartup:Z

.field private mFocusTimerDuration:I

.field private mHandler:Landroid/os/Handler;

.field private mHelpPopup:Lcom/android/systemui/recents/views/AbstractHelpPopup;

.field private mHomeIntent:Landroid/content/Intent;

.field private mIgnoreAltTabRelease:Z

.field private mIncompatibleAppOverlay:Landroid/view/View;

.field private mIsVisible:Z

.field private mIterateTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

.field private mLastDeviceOrientation:I

.field private mLastDisplayDensity:I

.field private mLastTabKeyEventTime:J

.field private mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

.field private mReceivedNewIntent:Z

.field private final mRecentsDrawnEventListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

.field mRecentsViewStub:Landroid/view/ViewStub;

.field private mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

.field private final mSendEnterWindowAnimationCompleteRunnable:Ljava/lang/Runnable;

.field mSlidingView:Lcom/android/systemui/recents/views/RecentsSlidingView;

.field final mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mUpdateFocusOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

.field private final mUserInteractionEvent:Lcom/android/systemui/recents/events/ui/UserInteractionEvent;


# direct methods
.method static synthetic -com_android_systemui_recents_RecentsActivity_lambda$2()V
    .locals 2

    .prologue
    .line 158
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 0
    return-void
.end method

.method static synthetic -get0(Lcom/android/systemui/recents/RecentsActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/RecentsActivity;)Lcom/android/systemui/recents/views/RecentsView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/RecentsActivity;)Landroid/view/ViewTreeObserver$OnDrawListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mUpdateFocusOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 125
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastDeviceOrientation:I

    .line 156
    new-instance v0, Lcom/android/systemui/recents/events/ui/UserInteractionEvent;

    invoke-direct {v0}, Lcom/android/systemui/recents/events/ui/UserInteractionEvent;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mUserInteractionEvent:Lcom/android/systemui/recents/events/ui/UserInteractionEvent;

    .line 157
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$-void__init___LambdaImpl0;

    invoke-direct {v0}, Lcom/android/systemui/recents/RecentsActivity$-void__init___LambdaImpl0;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mSendEnterWindowAnimationCompleteRunnable:Ljava/lang/Runnable;

    .line 207
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$1;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 226
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$2;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    .line 225
    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsDrawnEventListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 236
    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$3;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    .line 235
    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mUpdateFocusOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    .line 116
    return-void
.end method

.method private reloadStackView()V
    .locals 14

    .prologue
    .line 539
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v7

    .line 540
    .local v7, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-static {}, Lcom/android/systemui/recents/RecentsImpl;->consumeInstanceLoadPlan()Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v6

    .line 541
    .local v6, "loadPlan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    if-nez v6, :cond_0

    .line 542
    invoke-virtual {v7, p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v6

    .line 546
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    .line 547
    .local v1, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v2

    .line 548
    .local v2, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    invoke-virtual {v6}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v11

    if-nez v11, :cond_1

    .line 549
    iget v12, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    .line 550
    iget-boolean v11, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-nez v11, :cond_4

    iget-boolean v11, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    .line 549
    :goto_0
    invoke-virtual {v7, v6, v12, v11}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 553
    :cond_1
    new-instance v5, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v5}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 554
    .local v5, "loadOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    iget v11, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    iput v11, v5, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 555
    iget v11, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleTasks:I

    iput v11, v5, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 556
    iget v11, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleThumbnails:I

    iput v11, v5, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 557
    invoke-virtual {v7, p0, v6, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 558
    invoke-virtual {v6}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v8

    .line 559
    .local v8, "stack":Lcom/android/systemui/recents/model/TaskStack;
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    iget-boolean v13, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsVisible:Z

    invoke-virtual {v8}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v11

    if-nez v11, :cond_5

    const/4 v11, 0x1

    :goto_1
    invoke-virtual {v12, v13, v11}, Lcom/android/systemui/recents/views/RecentsView;->onReload(ZZ)V

    .line 560
    iget-object v11, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/4 v12, 0x1

    invoke-virtual {v11, v8, v12}, Lcom/android/systemui/recents/views/RecentsView;->updateStack(Lcom/android/systemui/recents/model/TaskStack;Z)V

    .line 563
    iget-boolean v11, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    if-eqz v11, :cond_6

    const/4 v0, 0x0

    .line 564
    .local v0, "animateNavBarScrim":Z
    :goto_2
    iget-object v12, p0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-virtual {v8}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v11

    if-lez v11, :cond_7

    const/4 v11, 0x1

    :goto_3
    const/4 v13, 0x0

    invoke-virtual {v12, v0, v11, v13}, Lcom/android/systemui/recents/views/SystemBarScrimViews;->updateNavBarScrim(ZZLcom/android/systemui/recents/views/AnimationProps;)V

    .line 568
    iget-boolean v11, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-nez v11, :cond_9

    .line 569
    iget-boolean v11, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-eqz v11, :cond_8

    const/4 v10, 0x0

    .line 570
    .local v10, "wasLaunchedByAm":Z
    :goto_4
    if-eqz v10, :cond_2

    .line 574
    iget-object v11, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    new-instance v12, Lcom/android/systemui/recents/RecentsActivity$5;

    invoke-direct {v12, p0}, Lcom/android/systemui/recents/RecentsActivity$5;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 586
    :cond_2
    iget-boolean v11, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-eqz v11, :cond_a

    .line 587
    const-string/jumbo v11, "overview_trigger_alttab"

    const/4 v12, 0x1

    invoke-static {p0, v11, v12}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 593
    :goto_5
    iget-boolean v11, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-eqz v11, :cond_c

    .line 594
    invoke-virtual {v8}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v3

    .line 595
    .local v3, "launchTarget":Lcom/android/systemui/recents/model/Task;
    if-eqz v3, :cond_b

    .line 596
    invoke-virtual {v8, v3}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v4

    .line 598
    .local v4, "launchTaskIndexInStack":I
    :goto_6
    const-string/jumbo v11, "overview_source_app"

    const/4 v12, 0x1

    invoke-static {p0, v11, v12}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 600
    const-string/jumbo v11, "overview_source_app_index"

    invoke-static {p0, v11, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 606
    .end local v3    # "launchTarget":Lcom/android/systemui/recents/model/Task;
    .end local v4    # "launchTaskIndexInStack":I
    :goto_7
    iget-object v11, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v11}, Lcom/android/systemui/recents/views/RecentsView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v9

    .line 607
    .local v9, "taskCount":I
    const-string/jumbo v11, "overview_task_count"

    invoke-static {p0, v11, v9}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 610
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 611
    const-string/jumbo v11, "GATE"

    const-string/jumbo v12, "<GATE-M> TASK_MGR_LOADED </GATE-M>"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_3
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsVisible:Z

    .line 536
    return-void

    .line 550
    .end local v0    # "animateNavBarScrim":Z
    .end local v5    # "loadOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    .end local v8    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v9    # "taskCount":I
    .end local v10    # "wasLaunchedByAm":Z
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 559
    .restart local v5    # "loadOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    .restart local v8    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    :cond_5
    const/4 v11, 0x0

    goto :goto_1

    .line 563
    :cond_6
    const/4 v0, 0x1

    .restart local v0    # "animateNavBarScrim":Z
    goto :goto_2

    .line 564
    :cond_7
    const/4 v11, 0x0

    goto :goto_3

    .line 569
    :cond_8
    const/4 v10, 0x1

    goto :goto_4

    .line 568
    :cond_9
    const/4 v10, 0x0

    goto :goto_4

    .line 589
    .restart local v10    # "wasLaunchedByAm":Z
    :cond_a
    const-string/jumbo v11, "overview_trigger_nav_btn"

    const/4 v12, 0x1

    invoke-static {p0, v11, v12}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_5

    .line 597
    .restart local v3    # "launchTarget":Lcom/android/systemui/recents/model/Task;
    :cond_b
    const/4 v4, 0x0

    .restart local v4    # "launchTaskIndexInStack":I
    goto :goto_6

    .line 602
    .end local v3    # "launchTarget":Lcom/android/systemui/recents/model/Task;
    .end local v4    # "launchTaskIndexInStack":I
    :cond_c
    const-string/jumbo v11, "overview_source_home"

    const/4 v12, 0x1

    invoke-static {p0, v11, v12}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_7
.end method


# virtual methods
.method dismissRecentsToFocusedTask(I)Z
    .locals 2
    .param p1, "logCategory"    # I

    .prologue
    .line 267
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 268
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/views/RecentsView;->launchFocusedTask(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 272
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method dismissRecentsToFocusedTaskOrHome()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 293
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 294
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/views/RecentsView;->launchFocusedTask(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 298
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)V

    .line 299
    return v2

    .line 301
    :cond_1
    return v3
.end method

.method dismissRecentsToHome(Z)V
    .locals 2
    .param p1, "animateTaskViews"    # Z

    .prologue
    .line 314
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(ZZLandroid/app/ActivityOptions;)V

    .line 313
    return-void
.end method

.method dismissRecentsToHome(ZZ)V
    .locals 1
    .param p1, "triggeredFromHomeKey"    # Z
    .param p2, "animateTaskViews"    # Z

    .prologue
    .line 306
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(ZZLandroid/app/ActivityOptions;)V

    .line 305
    return-void
.end method

.method dismissRecentsToHome(ZZLandroid/app/ActivityOptions;)V
    .locals 6
    .param p1, "triggeredFromHomeKey"    # Z
    .param p2, "animateTaskViews"    # Z
    .param p3, "overrideAnimation"    # Landroid/app/ActivityOptions;

    .prologue
    .line 325
    new-instance v0, Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;

    invoke-direct {v0, p2}, Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;-><init>(Z)V

    .line 327
    .local v0, "dismissEvent":Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;
    if-eqz p1, :cond_0

    .line 328
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mHomeIntent:Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.FROM_HOME_KEY"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 332
    :goto_0
    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mHomeIntent:Landroid/content/Intent;

    invoke-direct {v1, p0, v2, p3}, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;-><init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    .line 333
    .local v1, "runnable":Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;
    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSpreadAnimation:Z

    if-eqz v2, :cond_1

    .line 334
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 339
    :goto_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 340
    const-string/jumbo v3, "homekey"

    .line 339
    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 341
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 323
    return-void

    .line 330
    .end local v1    # "runnable":Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mHomeIntent:Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.FROM_HOME_KEY"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 337
    .restart local v1    # "runnable":Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;->addPostAnimationCallback(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method dismissRecentsToHomeIfVisible(Z)Z
    .locals 2
    .param p1, "animated"    # Z

    .prologue
    .line 346
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 347
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)V

    .line 350
    const/4 v1, 0x1

    return v1

    .line 352
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method dismissRecentsToLaunchTargetTaskOrHome()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 279
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 280
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 282
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->launchPreviousTask()Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 284
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)V

    .line 286
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 1125
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1126
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Lcom/android/systemui/recents/events/EventBus;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1127
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1129
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 1131
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "RecentsActivity"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1132
    const-string/jumbo v1, " visible="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsVisible:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "Y"

    :goto_0
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1133
    const-string/jumbo v1, " [0x"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "]"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1134
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 1136
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-eqz v1, :cond_0

    .line 1137
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1, p1, p3}, Lcom/android/systemui/recents/views/RecentsView;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1124
    :cond_0
    return-void

    .line 1132
    :cond_1
    const-string/jumbo v1, "N"

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 810
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 811
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 809
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 901
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    .line 903
    .local v0, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-boolean v1, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-nez v1, :cond_1

    .line 904
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivity;->launchDockedTaskFromFullRecents:Z

    .line 902
    if-eqz v1, :cond_2

    .line 905
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v1

    .line 902
    if-eqz v1, :cond_2

    .line 906
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/activity/UndockingTaskEvent;

    invoke-direct {v2}, Lcom/android/systemui/recents/events/activity/UndockingTaskEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 897
    :goto_0
    return-void

    .line 910
    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;

    invoke-direct {v2}, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;

    .prologue
    .line 994
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    .line 995
    .local v0, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget v1, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    .line 996
    .local v1, "launchToTaskId":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 997
    iget-object v3, p1, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;->launchTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;->launchTask:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    if-eq v1, v3, :cond_1

    .line 998
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    .line 999
    .local v2, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget v3, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->cancelWindowTransition(I)V

    .line 1000
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getTaskId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->cancelThumbnailTransition(I)V

    .line 993
    .end local v2    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_1
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DebugFlagsChangedEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/DebugFlagsChangedEvent;

    .prologue
    .line 1095
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->finish()V

    .line 1093
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DockedFirstAnimationFrameEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/DockedFirstAnimationFrameEvent;

    .prologue
    .line 989
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 990
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->invalidate()V

    .line 988
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsDrawnEventListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1106
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->invalidate()V

    .line 1104
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/EnterRecentsWindowLastAnimationFrameEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/EnterRecentsWindowLastAnimationFrameEvent;

    .prologue
    .line 975
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/UpdateFreeformTaskViewVisibilityEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/UpdateFreeformTaskViewVisibilityEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 976
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 977
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->invalidate()V

    .line 974
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ExitRecentsWindowFirstAnimationFrameEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/ExitRecentsWindowFirstAnimationFrameEvent;

    .prologue
    .line 981
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->isLastTaskLaunchedFreeform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 982
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/UpdateFreeformTaskViewVisibilityEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/UpdateFreeformTaskViewVisibilityEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 984
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 985
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->invalidate()V

    .line 980
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/HideRecentsEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/HideRecentsEvent;

    .prologue
    const/4 v1, 0x1

    .line 955
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpPopup:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    if-eqz v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpPopup:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->dismiss()V

    .line 959
    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;->triggeredFromAltTab:Z

    if-eqz v0, :cond_2

    .line 961
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIgnoreAltTabRelease:Z

    if-nez v0, :cond_1

    .line 962
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToFocusedTaskOrHome()Z

    .line 953
    :cond_1
    :goto_0
    return-void

    .line 964
    :cond_2
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;->triggeredFromHomeKey:Z

    if-eqz v0, :cond_1

    .line 965
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(ZZ)V

    .line 968
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mUserInteractionEvent:Lcom/android/systemui/recents/events/ui/UserInteractionEvent;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/IterateRecentsEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/IterateRecentsEvent;

    .prologue
    .line 926
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getDebugFlags()Lcom/android/systemui/recents/RecentsDebugFlags;

    move-result-object v0

    .line 929
    .local v0, "debugFlags":Lcom/android/systemui/recents/RecentsDebugFlags;
    const/4 v1, 0x0

    .line 930
    .local v1, "timerIndicatorDuration":I
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsDebugFlags;->isFastToggleRecentsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 931
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 932
    const v3, 0x7f0c0040

    .line 931
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 934
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mIterateTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/misc/DozeTrigger;->setDozeDuration(I)V

    .line 935
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mIterateTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/DozeTrigger;->isDozing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 936
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mIterateTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/DozeTrigger;->startDozing()V

    .line 943
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;

    invoke-direct {v3, v1}, Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 945
    const/16 v2, 0x114

    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 925
    return-void

    .line 938
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mIterateTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/DozeTrigger;->poke()V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskFailedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchTaskFailedEvent;

    .prologue
    const/4 v1, 0x1

    .line 1084
    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)V

    .line 1086
    const-string/jumbo v0, "overview_task_launch_failed"

    invoke-static {p0, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1082
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;

    .prologue
    .line 1079
    const-string/jumbo v0, "overview_task_launch_index"

    iget v1, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;->taskIndexFromStackFront:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1078
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;

    .prologue
    .line 917
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    .line 918
    .local v0, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    iget-boolean v1, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-eqz v1, :cond_0

    .line 919
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)V

    .line 916
    :goto_0
    return-void

    .line 921
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToLaunchTargetTaskOrHome()Z

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/ScreenPinningRequestEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/android/systemui/recents/events/component/ScreenPinningRequestEvent;

    .prologue
    .line 1090
    const-string/jumbo v0, "overview_screen_pinned"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1089
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;

    .prologue
    .line 1065
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    .line 1066
    .local v0, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCloseAllLayout:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p1, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;->launchHome:Z

    if-eqz v1, :cond_1

    .line 1071
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)V

    .line 1075
    :goto_0
    const-string/jumbo v1, "overview_task_all_dismissed"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1064
    return-void

    .line 1067
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v1

    .line 1066
    if-eqz v1, :cond_0

    .line 1068
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    iget v2, p1, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;->msgResId:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->showEmptyView(I)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;

    .prologue
    .line 1056
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 1057
    .local v0, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;->task:Lcom/android/systemui/recents/model/Task;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->deleteTaskData(Lcom/android/systemui/recents/model/Task;Z)V

    .line 1060
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    .line 1061
    .local v1, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->removeTask(I)V

    .line 1054
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/HideIncompatibleAppOverlayEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/HideIncompatibleAppOverlayEvent;

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIncompatibleAppOverlay:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIncompatibleAppOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1047
    const/4 v1, 0x0

    .line 1046
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1048
    const-wide/16 v2, 0x96

    .line 1046
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1049
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 1046
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1044
    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;

    .prologue
    const/4 v4, 0x0

    .line 1006
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 1007
    const-string/jumbo v2, "package"

    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1006
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1008
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1010
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isUPSModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1011
    const v1, 0x1080c000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1013
    new-instance v1, Landroid/os/UserHandle;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v4, v1}, Lcom/android/systemui/recents/RecentsActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 1022
    :goto_0
    const-string/jumbo v1, "overview_app_info"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1004
    return-void

    .line 1016
    :cond_0
    invoke-static {p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    .line 1018
    new-instance v2, Landroid/os/UserHandle;

    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 1016
    invoke-virtual {v1, v4, v2}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/ShowIncompatibleAppOverlayEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/ShowIncompatibleAppOverlayEvent;

    .prologue
    .line 1028
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;

    .prologue
    .line 1101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIgnoreAltTabRelease:Z

    .line 1098
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/UserInteractionEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/ui/UserInteractionEvent;

    .prologue
    .line 950
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIterateTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    .line 948
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 685
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 688
    invoke-static {p0}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    .line 689
    .local v0, "newDeviceConfiguration":Landroid/content/res/Configuration;
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v1

    .line 690
    .local v1, "numStackTasks":I
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;

    .line 691
    iget v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastDeviceOrientation:I

    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v5, :cond_3

    move v2, v3

    .line 692
    :goto_0
    iget v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastDisplayDensity:I

    iget v6, v0, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v5, v6, :cond_4

    move v6, v3

    :goto_1
    if-lez v1, :cond_5

    move v5, v3

    .line 690
    :goto_2
    invoke-direct {v8, v4, v2, v6, v5}, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;-><init>(ZZZZ)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 694
    iget v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastDeviceOrientation:I

    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v4, :cond_0

    .line 695
    iget v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastDisplayDensity:I

    iget v4, v0, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v2, v4, :cond_1

    .line 696
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v4, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;

    invoke-direct {v4, v3}, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v2, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 699
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpPopup:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastDeviceOrientation:I

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v3, :cond_2

    .line 700
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpPopup:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->updateContentsSize()V

    .line 703
    :cond_2
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastDeviceOrientation:I

    .line 704
    iget v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastDisplayDensity:I

    .line 684
    return-void

    :cond_3
    move v2, v4

    .line 691
    goto :goto_0

    :cond_4
    move v6, v4

    .line 692
    goto :goto_1

    :cond_5
    move v5, v4

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f13033f

    const/16 v6, 0x700

    const/4 v7, 0x2

    const/4 v5, 0x1

    .line 358
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 359
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishedOnStartup:Z

    .line 363
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    .line 364
    .local v3, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    if-nez v3, :cond_0

    .line 365
    iput-boolean v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishedOnStartup:Z

    .line 366
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->finish()V

    .line 367
    return-void

    .line 371
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v4

    invoke-virtual {v4, p0, v7}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;I)V

    .line 374
    new-instance v4, Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    invoke-direct {v4}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    .line 375
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    invoke-virtual {v4, p0}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->register(Landroid/content/Context;)V

    .line 378
    const v4, 0x7f040123

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/RecentsActivity;->setContentView(I)V

    .line 379
    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/RecentsActivity;->takeKeyEvents(Z)V

    .line 381
    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAppList:Z

    if-eqz v4, :cond_6

    .line 382
    invoke-virtual {p0, v8}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    iput-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsViewStub:Landroid/view/ViewStub;

    .line 383
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsViewStub:Landroid/view/ViewStub;

    const v5, 0x7f040131

    invoke-virtual {v4, v5}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 384
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsViewStub:Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/RecentsSlidingView;

    iput-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mSlidingView:Lcom/android/systemui/recents/views/RecentsSlidingView;

    .line 385
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mSlidingView:Lcom/android/systemui/recents/views/RecentsSlidingView;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/views/RecentsSlidingView;->bindViews(Landroid/view/View;)V

    .line 386
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mSlidingView:Lcom/android/systemui/recents/views/RecentsSlidingView;

    const v5, 0x7f13035c

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/views/RecentsSlidingView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/RecentsView;

    iput-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    .line 387
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mSlidingView:Lcom/android/systemui/recents/views/RecentsSlidingView;

    invoke-virtual {v4, v6}, Lcom/android/systemui/recents/views/RecentsSlidingView;->setSystemUiVisibility(I)V

    .line 399
    :goto_0
    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreButton:Z

    if-eqz v4, :cond_1

    .line 400
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v4

    invoke-static {v3}, Lcom/android/systemui/recents/misc/Utilities;->hasSamsungMembers(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/systemui/recents/RecentsConfiguration;->hasSamsungMembers:Z

    .line 403
    :cond_1
    new-instance v4, Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-direct {v4, p0}, Lcom/android/systemui/recents/views/SystemBarScrimViews;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    .line 409
    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableFreeformInTaskStack:Z

    if-nez v4, :cond_2

    .line 411
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v5, v5, 0x4000

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 415
    :cond_2
    invoke-static {p0}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    .line 416
    .local v0, "appConfiguration":Landroid/content/res/Configuration;
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastDeviceOrientation:I

    .line 417
    iget v4, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastDisplayDensity:I

    .line 418
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c003f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mFocusTimerDuration:I

    .line 419
    new-instance v4, Lcom/android/systemui/recents/misc/DozeTrigger;

    iget v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mFocusTimerDuration:I

    new-instance v6, Lcom/android/systemui/recents/RecentsActivity$4;

    invoke-direct {v6, p0}, Lcom/android/systemui/recents/RecentsActivity$4;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/recents/misc/DozeTrigger;-><init>(ILjava/lang/Runnable;)V

    iput-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mIterateTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    .line 427
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/RecentsView;->getBackgroundScrim()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 430
    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAppList:Z

    if-nez v4, :cond_3

    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreButton:Z

    if-nez v4, :cond_3

    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCloseAllLayout:Z

    if-eqz v4, :cond_4

    .line 431
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    .line 432
    const v4, 0x7f130346

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 433
    const v5, 0x7f130344

    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 431
    invoke-virtual {v6, v4, v5}, Lcom/android/systemui/recents/views/RecentsView;->setRecentsContainerView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 438
    :cond_4
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mHomeIntent:Landroid/content/Intent;

    .line 439
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mHomeIntent:Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.category.HOME"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mHomeIntent:Landroid/content/Intent;

    const/high16 v5, 0x10200000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 444
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 445
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 446
    const-string/jumbo v4, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 447
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Lcom/android/systemui/recents/RecentsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 449
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x40

    invoke-virtual {v4, v5}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 452
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 453
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v4, v4, 0x400

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 454
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    .line 455
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 458
    new-instance v4, Lcom/android/systemui/recents/views/AbstractHelpPopup;

    const-string/jumbo v5, "RecentsFullscreenHelpPopup"

    invoke-direct {v4, p0, v5, v7}, Lcom/android/systemui/recents/views/AbstractHelpPopup;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpPopup:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    .line 461
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->isInMultiWindowMode()Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/systemui/recents/RecentsConfiguration;->isInMultiWindowMode:Z

    .line 465
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->reloadStackView()V

    .line 468
    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAppList:Z

    if-eqz v4, :cond_5

    .line 469
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mSlidingView:Lcom/android/systemui/recents/views/RecentsSlidingView;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->isInMultiWindowMode()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/views/RecentsSlidingView;->reload(Z)V

    .line 357
    :cond_5
    return-void

    .line 391
    .end local v0    # "appConfiguration":Landroid/content/res/Configuration;
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_6
    invoke-virtual {p0, v8}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    iput-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsViewStub:Landroid/view/ViewStub;

    .line 392
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsViewStub:Landroid/view/ViewStub;

    const v5, 0x7f04013a

    invoke-virtual {v4, v5}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 393
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsViewStub:Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/RecentsView;

    iput-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    .line 395
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v4, v6}, Lcom/android/systemui/recents/views/RecentsView;->setSystemUiVisibility(I)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 792
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 795
    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishedOnStartup:Z

    if-eqz v0, :cond_0

    .line 796
    return-void

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 803
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->unregister()V

    .line 805
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 791
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 816
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 817
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mScrimViews:Lcom/android/systemui/recents/views/SystemBarScrimViews;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    .line 815
    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 11

    .prologue
    const v10, 0x7f0f05e4

    const v6, 0x7f0f05e3

    const/4 v9, 0x1

    const v7, 0x7f0f05e8

    const v8, 0x7f0f0045

    .line 621
    invoke-super {p0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    .line 626
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mSendEnterWindowAnimationCompleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 627
    iget-boolean v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mReceivedNewIntent:Z

    if-nez v4, :cond_4

    .line 628
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mSendEnterWindowAnimationCompleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 634
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsVisible:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpPopup:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isMultiWindowSettingEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 635
    const/4 v3, 0x0

    .line 636
    .local v3, "needToShow":Z
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->isInMultiWindowMode()Z

    move-result v1

    .line 637
    .local v1, "inMultiWindowMode":Z
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v4

    iget-boolean v0, v4, Lcom/android/systemui/recents/RecentsConfiguration;->hasSoftNaviBar:Z

    .line 638
    .local v0, "hasSoftNavigationBar":Z
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v2

    .line 639
    .local v2, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    if-nez v1, :cond_6

    const-string/jumbo v4, "RecentsFullscreenHelpPopup"

    invoke-static {p0, v4}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->getPersistentState(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 640
    const/4 v3, 0x1

    .line 641
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpPopup:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    const-string/jumbo v5, "RecentsFullscreenHelpPopup"

    invoke-virtual {v4, v5, v9}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->initialize(Ljava/lang/String;I)V

    .line 642
    if-eqz v0, :cond_5

    .line 643
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpPopup:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    const v5, 0x7f02043d

    invoke-virtual {v4, v5, v6, v10, v8}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->addContent(IIII)V

    .line 665
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 666
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpPopup:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->show()V

    .line 669
    .end local v0    # "hasSoftNavigationBar":Z
    .end local v1    # "inMultiWindowMode":Z
    .end local v2    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    .end local v3    # "needToShow":Z
    :cond_1
    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreButton:Z

    if-nez v4, :cond_2

    sget-boolean v4, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAppList:Z

    if-eqz v4, :cond_3

    .line 670
    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;

    invoke-direct {v5, v9}, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;-><init>(Z)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 620
    :cond_3
    return-void

    .line 630
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mSendEnterWindowAnimationCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 646
    .restart local v0    # "hasSoftNavigationBar":Z
    .restart local v1    # "inMultiWindowMode":Z
    .restart local v2    # "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    .restart local v3    # "needToShow":Z
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpPopup:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    const v5, 0x7f020438

    invoke-virtual {v4, v5, v6, v10, v8}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->addContent(IIII)V

    goto :goto_1

    .line 649
    :cond_6
    if-eqz v1, :cond_0

    iget-boolean v4, v2, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedSplitScreenWithHelpPopup:Z

    if-eqz v4, :cond_0

    .line 650
    const-string/jumbo v4, "RecentsSplitscreenHelpPopup"

    invoke-static {p0, v4}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->getPersistentState(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    .line 649
    if-eqz v4, :cond_0

    .line 651
    const/4 v3, 0x1

    .line 652
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpPopup:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    const-string/jumbo v5, "RecentsSplitscreenHelpPopup"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->initialize(Ljava/lang/String;I)V

    .line 653
    if-eqz v0, :cond_7

    .line 654
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpPopup:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    const v5, 0x7f02043a

    .line 655
    const v6, 0x7f0f05e7

    .line 654
    invoke-virtual {v4, v5, v7, v7, v6}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->addContent(IIII)V

    .line 656
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpPopup:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    const v5, 0x7f02043c

    const v6, 0x7f0f05ea

    .line 657
    const v7, 0x7f0f05ea

    .line 656
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->addContent(IIII)V

    goto :goto_1

    .line 659
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpPopup:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    const v5, 0x7f020439

    .line 660
    const v6, 0x7f0f05e7

    .line 659
    invoke-virtual {v4, v5, v7, v7, v6}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->addContent(IIII)V

    .line 661
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpPopup:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    const v5, 0x7f02043b

    const v6, 0x7f0f05e9

    .line 662
    const v7, 0x7f0f05e9

    .line 661
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->addContent(IIII)V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 830
    sparse-switch p1, :sswitch_data_0

    .line 876
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    return v3

    .line 832
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0041

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 833
    .local v0, "altTabKeyDelay":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 834
    iget-wide v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastTabKeyEventTime:J

    .line 833
    sub-long/2addr v4, v6

    .line 834
    int-to-long v6, v0

    .line 833
    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    const/4 v2, 0x1

    .line 835
    .local v2, "hasRepKeyTimeElapsed":Z
    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-lez v3, :cond_1

    if-eqz v2, :cond_2

    .line 837
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v1

    .line 838
    .local v1, "backward":Z
    if-eqz v1, :cond_4

    .line 839
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/ui/focus/FocusPreviousTaskViewEvent;

    invoke-direct {v4}, Lcom/android/systemui/recents/events/ui/focus/FocusPreviousTaskViewEvent;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 844
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastTabKeyEventTime:J

    .line 847
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 848
    iput-boolean v8, p0, Lcom/android/systemui/recents/RecentsActivity;->mIgnoreAltTabRelease:Z

    .line 851
    .end local v1    # "backward":Z
    :cond_2
    return v9

    .line 833
    .end local v2    # "hasRepKeyTimeElapsed":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "hasRepKeyTimeElapsed":Z
    goto :goto_0

    .line 841
    .restart local v1    # "backward":Z
    :cond_4
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    .line 842
    new-instance v4, Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;

    invoke-direct {v4, v8}, Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;-><init>(I)V

    .line 841
    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_1

    .line 854
    .end local v0    # "altTabKeyDelay":I
    .end local v1    # "backward":Z
    .end local v2    # "hasRepKeyTimeElapsed":Z
    :sswitch_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    .line 855
    new-instance v4, Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;

    invoke-direct {v4, v8}, Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;-><init>(I)V

    .line 854
    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 856
    return v9

    .line 859
    :sswitch_2
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/ui/focus/FocusPreviousTaskViewEvent;

    invoke-direct {v4}, Lcom/android/systemui/recents/events/ui/focus/FocusPreviousTaskViewEvent;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 860
    return v9

    .line 864
    :sswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-gtz v3, :cond_0

    .line 865
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/ui/focus/DismissFocusedTaskViewEvent;

    invoke-direct {v4}, Lcom/android/systemui/recents/events/ui/focus/DismissFocusedTaskViewEvent;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 868
    const-string/jumbo v3, "overview_task_dismissed_source"

    invoke-static {p0, v3, v8}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 870
    return v9

    .line 830
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x3d -> :sswitch_0
        0x43 -> :sswitch_3
        0x70 -> :sswitch_3
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 881
    packed-switch p1, :pswitch_data_0

    .line 888
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 883
    :pswitch_0
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreButton:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->showMenuIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 884
    const/4 v0, 0x1

    return v0

    .line 881
    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 14
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 709
    invoke-super {p0, p1}, Landroid/app/Activity;->onMultiWindowModeChanged(Z)V

    .line 711
    sget-boolean v9, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAppList:Z

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mSlidingView:Lcom/android/systemui/recents/views/RecentsSlidingView;

    if-eqz v9, :cond_0

    .line 712
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mSlidingView:Lcom/android/systemui/recents/views/RecentsSlidingView;

    invoke-virtual {v9, p1}, Lcom/android/systemui/recents/views/RecentsSlidingView;->onMultiWindowModeChanged(Z)V

    .line 717
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 718
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    .line 719
    .local v1, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v4

    .line 720
    .local v4, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    invoke-virtual {v4, p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v3

    .line 721
    .local v3, "loadPlan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/4 v9, -0x1

    invoke-virtual {v4, v3, v9, v11}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 724
    new-instance v2, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v2}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 725
    .local v2, "loadOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    iget v9, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleTasks:I

    iput v9, v2, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 726
    iget v9, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleThumbnails:I

    iput v9, v2, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 728
    iput-boolean v10, v2, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadInvisibleActivities:Z

    .line 730
    invoke-virtual {v4, p0, v3, v2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 732
    invoke-virtual {v3}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v8

    .line 733
    .local v8, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v8}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v5

    .line 734
    .local v5, "numStackTasks":I
    if-lez v5, :cond_2

    const/4 v6, 0x1

    .line 737
    .local v6, "showDeferredAnimation":Z
    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v7

    .line 738
    .local v7, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v9

    iput-boolean p1, v9, Lcom/android/systemui/recents/RecentsConfiguration;->isInMultiWindowMode:Z

    .line 743
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-eqz v9, :cond_1

    iget-boolean v9, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaDockGesture:Z

    if-eqz v9, :cond_3

    .line 749
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v12

    new-instance v13, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;

    .line 751
    if-lez v5, :cond_4

    move v9, v10

    .line 749
    :goto_2
    invoke-direct {v13, v10, v11, v11, v9}, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;-><init>(ZZZZ)V

    invoke-virtual {v12, v13}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 752
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v9

    new-instance v10, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;

    .line 753
    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v11

    .line 752
    invoke-direct {v10, p1, v6, v8, v11}, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;-><init>(ZZLcom/android/systemui/recents/model/TaskStack;Z)V

    invoke-virtual {v9, v10}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 708
    return-void

    .line 734
    .end local v6    # "showDeferredAnimation":Z
    .end local v7    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "showDeferredAnimation":Z
    goto :goto_0

    .line 743
    .restart local v7    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_3
    if-eqz p1, :cond_1

    .line 744
    invoke-virtual {v7}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v9

    .line 743
    if-eqz v9, :cond_1

    .line 745
    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v9

    iget-object v12, p0, Lcom/android/systemui/recents/RecentsActivity;->mUpdateFocusOnDrawListener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v9, v12}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    goto :goto_1

    :cond_4
    move v9, v11

    .line 751
    goto :goto_2
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 513
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 516
    const-string/jumbo v0, "update_focus"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    iput-boolean v2, p0, Lcom/android/systemui/recents/RecentsActivity;->launchDockedTaskFromFullRecents:Z

    .line 518
    return-void

    .line 521
    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mReceivedNewIntent:Z

    .line 524
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->reloadStackView()V

    .line 527
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAppList:Z

    if-eqz v0, :cond_1

    .line 528
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mSlidingView:Lcom/android/systemui/recents/views/RecentsSlidingView;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->isInMultiWindowMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsSlidingView;->reload(Z)V

    .line 512
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 677
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 679
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIgnoreAltTabRelease:Z

    .line 680
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIterateTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    .line 676
    return-void
.end method

.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1114
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsActivity$6;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->post(Ljava/lang/Runnable;)Z

    .line 1120
    const/4 v0, 0x1

    return v0
.end method

.method protected onStart()V
    .locals 5

    .prologue
    const/high16 v4, 0x100000

    const/4 v3, 0x0

    .line 476
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 479
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 480
    const/16 v0, 0xe0

    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 483
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCloseAllLayout:Z

    if-eqz v0, :cond_0

    .line 484
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;

    invoke-direct {v1, v3}, Lcom/android/systemui/recents/events/ui/ToggleRecentsCloseAllButtonEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 486
    :cond_0
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableMoreButton:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableAppList:Z

    if-eqz v0, :cond_2

    .line 487
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;

    invoke-direct {v1, v3}, Lcom/android/systemui/recents/events/ui/ToggleRecentsButtonsContainerEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 492
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsDrawnEventListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 495
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isUPSModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 496
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 501
    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/recents/RecentsActivity;->launchDockedTaskFromFullRecents:Z

    .line 505
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableBixby:Z

    if-eqz v0, :cond_3

    .line 506
    invoke-static {}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->getInstance()Lcom/android/systemui/recents/bixby/EmRecentsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->getBixbyHandler()Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->activate(Lcom/android/systemui/recents/bixby/IBixbyRecentsViewHandler;)V

    .line 475
    :cond_3
    return-void

    .line 498
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 758
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 761
    iput-boolean v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsVisible:Z

    .line 762
    iput-boolean v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mReceivedNewIntent:Z

    .line 763
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 764
    const/16 v2, 0xe0

    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 767
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpPopup:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    if-eqz v2, :cond_0

    .line 768
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mHelpPopup:Lcom/android/systemui/recents/views/AbstractHelpPopup;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->dismiss()V

    .line 775
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    .line 776
    .local v0, "config":Lcom/android/systemui/recents/RecentsConfiguration;
    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    .line 777
    .local v1, "launchState":Lcom/android/systemui/recents/RecentsActivityLaunchState;
    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsActivityLaunchState;->reset()V

    .line 779
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    iput-boolean v4, v2, Lcom/android/systemui/recents/RecentsConfiguration;->blockTouchAction:Z

    .line 780
    iput-boolean v4, p0, Lcom/android/systemui/recents/RecentsActivity;->launchDockedTaskFromFullRecents:Z

    .line 784
    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableBixby:Z

    if-eqz v2, :cond_1

    .line 785
    invoke-static {}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->getInstance()Lcom/android/systemui/recents/bixby/EmRecentsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/bixby/EmRecentsManager;->deactivate()V

    .line 757
    :cond_1
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 822
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 823
    .local v0, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    if-eqz v0, :cond_0

    .line 824
    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->onTrimMemory(I)V

    .line 821
    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    .prologue
    .line 893
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mUserInteractionEvent:Lcom/android/systemui/recents/events/ui/UserInteractionEvent;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 892
    return-void
.end method
