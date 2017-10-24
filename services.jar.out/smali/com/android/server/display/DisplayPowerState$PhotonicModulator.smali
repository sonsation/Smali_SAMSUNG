.class final Lcom/android/server/display/DisplayPowerState$PhotonicModulator;
.super Ljava/lang/Thread;
.source "DisplayPowerState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhotonicModulator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayPowerState$PhotonicModulator$1;
    }
.end annotation


# static fields
.field private static final INITIAL_BACKLIGHT:I = -0x1

.field private static final INITIAL_SCREEN_STATE:I = 0x1


# instance fields
.field private mActualBacklight:I

.field private mActualState:I

.field private mBacklightChangeInProgress:Z

.field private mFinalMarkerPostion:I

.field private final mLock:Ljava/lang/Object;

.field private mPendingBacklight:I

.field private mPendingRequestDisplayState:Z

.field private mPendingState:I

.field private mPhotonicModulatorTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

.field private final mRequestDisplayStateDoneListener:Ljava/lang/Runnable;

.field private mStateChangeInProgress:Z

.field final synthetic this$0:Lcom/android/server/display/DisplayPowerState;


# direct methods
.method static synthetic -get0(Lcom/android/server/display/DisplayPowerState$PhotonicModulator;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/display/DisplayPowerState$PhotonicModulator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingRequestDisplayState:Z

    return p1
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayPowerState;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/display/DisplayPowerState;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 449
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    .line 450
    const-string/jumbo v0, "PhotonicModulator"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 434
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    .line 436
    iput v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    .line 437
    iput v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    .line 438
    iput v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    .line 439
    iput v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:I

    .line 446
    new-instance v0, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPhotonicModulatorTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    .line 606
    new-instance v0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator$1;-><init>(Lcom/android/server/display/DisplayPowerState$PhotonicModulator;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mRequestDisplayStateDoneListener:Ljava/lang/Runnable;

    .line 452
    invoke-static {p1}, Lcom/android/server/display/DisplayPowerState;->-get2(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/DisplayBlanker;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/display/DisplayPowerState;->-get8(Lcom/android/server/display/DisplayPowerState;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mRequestDisplayStateDoneListener:Ljava/lang/Runnable;

    invoke-interface {v0, v1, v2}, Lcom/android/server/display/DisplayBlanker;->registerRequestDisplayStateDoneListener(ILjava/lang/Runnable;)V

    .line 449
    return-void
.end method

.method private getFinalMarkerPosition(I)I
    .locals 4
    .param p1, "backlight"    # I

    .prologue
    const/16 v3, 0xff

    const/4 v2, 0x0

    .line 583
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS_V3:Z

    if-eqz v1, :cond_0

    if-lez p1, :cond_0

    .line 584
    div-int/lit8 p1, p1, 0x64

    .line 586
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    iget v1, v1, Lcom/android/server/display/DisplayPowerState;->mFinalBrightnessDiff:I

    sub-int v0, p1, v1

    .line 588
    .local v0, "finalMarkerPosition":I
    if-gtz v0, :cond_1

    return v2

    .line 589
    :cond_1
    if-lt v0, v3, :cond_2

    return v3

    .line 590
    :cond_2
    return v0
.end method

.method private setBrightness(I)V
    .locals 3
    .param p1, "backlight"    # I

    .prologue
    .line 597
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerState;->-get1(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/lights/Light;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 598
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v1, p1}, Lcom/android/server/display/DisplayPowerState;->-set3(Lcom/android/server/display/DisplayPowerState;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :goto_0
    return-void

    .line 599
    :catch_0
    move-exception v0

    .line 600
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "DisplayPowerState"

    const-string/jumbo v2, "Faild to set brightness"

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 489
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 490
    :try_start_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 491
    const-string/jumbo v0, "Photonic Modulator State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mPendingState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mPendingBacklight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mActualState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mActualBacklight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mStateChangeInProgress="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mBacklightChangeInProgress="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBacklightChangeInProgress:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 488
    return-void

    .line 489
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 504
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPhotonicModulatorTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    const-string/jumbo v6, "LCD_Task is start"

    const-wide/16 v8, 0xa

    invoke-virtual {v5, v6, v8, v9}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->printTotalTime(Ljava/lang/String;J)V

    .line 512
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 513
    :try_start_0
    iget v3, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    .line 514
    .local v3, "state":I
    iget v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    if-eq v3, v5, :cond_8

    const/4 v4, 0x1

    .line 515
    .local v4, "stateChanged":Z
    :goto_1
    iget v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    .line 516
    .local v0, "backlight":I
    iget v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:I

    if-eq v0, v5, :cond_9

    const/4 v1, 0x1

    .line 517
    .local v1, "backlightChanged":Z
    :goto_2
    if-nez v4, :cond_1

    .line 519
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v5}, Lcom/android/server/display/DisplayPowerState;->-wrap1(Lcom/android/server/display/DisplayPowerState;)V

    .line 520
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    .line 522
    :cond_1
    if-nez v1, :cond_2

    .line 523
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBacklightChangeInProgress:Z

    .line 525
    :cond_2
    if-nez v4, :cond_3

    if-eqz v1, :cond_a

    .line 532
    :cond_3
    if-eqz v4, :cond_4

    .line 533
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingRequestDisplayState:Z

    .line 536
    :cond_4
    iput v3, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualState:I

    .line 537
    iput v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mActualBacklight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 541
    invoke-static {}, Lcom/android/server/display/DisplayPowerState;->-get0()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 542
    const-string/jumbo v5, "DisplayPowerState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Updating screen state: state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 543
    invoke-static {v3}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v7

    .line 542
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 543
    const-string/jumbo v7, ", backlight="

    .line 542
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_5
    :goto_3
    if-eqz v1, :cond_6

    .line 555
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->setBrightness(I)V

    .line 559
    :cond_6
    if-eqz v4, :cond_7

    .line 560
    invoke-static {}, Lcom/android/server/display/DisplayPowerState;->-get9()I

    move-result v5

    if-eqz v5, :cond_c

    .line 561
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v5}, Lcom/android/server/display/DisplayPowerState;->-get2(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/DisplayBlanker;

    move-result-object v5

    invoke-interface {v5, v3, v0}, Lcom/android/server/display/DisplayBlanker;->requestDisplayState(II)V

    .line 570
    :cond_7
    :goto_4
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    iget-boolean v5, v5, Lcom/android/server/display/DisplayPowerState;->mUseMarkTracker:Z

    if-eqz v5, :cond_0

    .line 571
    iget v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mFinalMarkerPostion:I

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->getFinalMarkerPosition(I)I

    move-result v6

    if-eq v5, v6, :cond_0

    .line 572
    const-string/jumbo v5, "DisplayPowerState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Tracking!!: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->getFinalMarkerPosition(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v5}, Lcom/android/server/display/DisplayPowerState;->-get7(Lcom/android/server/display/DisplayPowerState;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "brightness_pms_marker_screen"

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->getFinalMarkerPosition(I)I

    move-result v7

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 574
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->getFinalMarkerPosition(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mFinalMarkerPostion:I

    goto/16 :goto_0

    .line 514
    .end local v0    # "backlight":I
    .end local v1    # "backlightChanged":Z
    .end local v4    # "stateChanged":Z
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "stateChanged":Z
    goto/16 :goto_1

    .line 516
    .restart local v0    # "backlight":I
    :cond_9
    const/4 v1, 0x0

    .restart local v1    # "backlightChanged":Z
    goto/16 :goto_2

    .line 527
    :cond_a
    :try_start_1
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    monitor-exit v6

    goto/16 :goto_0

    .line 512
    .end local v0    # "backlight":I
    .end local v1    # "backlightChanged":Z
    .end local v3    # "state":I
    .end local v4    # "stateChanged":Z
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 547
    .restart local v0    # "backlight":I
    .restart local v1    # "backlightChanged":Z
    .restart local v3    # "state":I
    .restart local v4    # "stateChanged":Z
    :cond_b
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v5}, Lcom/android/server/display/DisplayPowerState;->-get3(Lcom/android/server/display/DisplayPowerState;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 548
    const-string/jumbo v5, "DisplayPowerState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Updating screen state ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v7}, Lcom/android/server/display/DisplayPowerState;->-get8(Lcom/android/server/display/DisplayPowerState;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]: state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 549
    invoke-static {v3}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v7

    .line 548
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 549
    const-string/jumbo v7, ", backlight (by ColorFade)="

    .line 548
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v5, v10}, Lcom/android/server/display/DisplayPowerState;->-set0(Lcom/android/server/display/DisplayPowerState;Z)Z

    goto/16 :goto_3

    .line 563
    :cond_c
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v5}, Lcom/android/server/display/DisplayPowerState;->-get2(Lcom/android/server/display/DisplayPowerState;)Lcom/android/server/display/DisplayBlanker;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v6}, Lcom/android/server/display/DisplayPowerState;->-get8(Lcom/android/server/display/DisplayPowerState;)I

    move-result v6

    invoke-interface {v5, v6, v3, v0}, Lcom/android/server/display/DisplayBlanker;->requestDisplayState(III)V

    goto/16 :goto_4

    .line 528
    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/InterruptedException;
    goto :goto_5
.end method

.method public setState(II)Z
    .locals 8
    .param p1, "state"    # I
    .param p2, "backlight"    # I

    .prologue
    const/4 v3, 0x0

    .line 456
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 457
    :try_start_0
    iget v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    if-eq p1, v5, :cond_4

    const/4 v2, 0x1

    .line 458
    .local v2, "stateChanged":Z
    :goto_0
    iget v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    if-eq p2, v5, :cond_5

    const/4 v0, 0x1

    .line 459
    .local v0, "backlightChanged":Z
    :goto_1
    if-nez v2, :cond_0

    if-eqz v0, :cond_2

    .line 460
    :cond_0
    invoke-static {}, Lcom/android/server/display/DisplayPowerState;->-get0()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 461
    const-string/jumbo v5, "DisplayPowerState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Requesting new screen state: state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 462
    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v7

    .line 461
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 462
    const-string/jumbo v7, ", backlight="

    .line 461
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_1
    :goto_2
    iput p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingState:I

    .line 472
    iput p2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingBacklight:I

    .line 474
    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    if-nez v5, :cond_7

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBacklightChangeInProgress:Z

    .line 475
    :goto_3
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    .line 476
    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBacklightChangeInProgress:Z

    .line 478
    if-nez v1, :cond_2

    .line 479
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPhotonicModulatorTimeMeasurement:Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;

    invoke-virtual {v5}, Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;->resetTime()V

    .line 480
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 483
    :cond_2
    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mStateChangeInProgress:Z

    if-nez v5, :cond_3

    .line 484
    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mPendingRequestDisplayState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_8

    :cond_3
    :goto_4
    monitor-exit v4

    .line 483
    return v3

    .line 457
    .end local v0    # "backlightChanged":Z
    .end local v2    # "stateChanged":Z
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "stateChanged":Z
    goto :goto_0

    .line 458
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "backlightChanged":Z
    goto :goto_1

    .line 465
    :cond_6
    :try_start_1
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v5}, Lcom/android/server/display/DisplayPowerState;->-get3(Lcom/android/server/display/DisplayPowerState;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 466
    const-string/jumbo v5, "DisplayPowerState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Requesting new screen state: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    invoke-static {v7}, Lcom/android/server/display/DisplayPowerState;->-get8(Lcom/android/server/display/DisplayPowerState;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] state="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 467
    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v7

    .line 466
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 467
    const-string/jumbo v7, ", backlight (By colorFade)="

    .line 466
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 456
    .end local v0    # "backlightChanged":Z
    .end local v2    # "stateChanged":Z
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 474
    .restart local v0    # "backlightChanged":Z
    .restart local v2    # "stateChanged":Z
    :cond_7
    const/4 v1, 0x1

    .local v1, "changeInProgress":Z
    goto :goto_3

    .line 484
    .end local v1    # "changeInProgress":Z
    :cond_8
    const/4 v3, 0x1

    goto :goto_4
.end method
