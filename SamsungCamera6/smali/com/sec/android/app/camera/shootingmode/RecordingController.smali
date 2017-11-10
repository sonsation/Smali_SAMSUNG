.class public abstract Lcom/sec/android/app/camera/shootingmode/RecordingController;
.super Ljava/lang/Object;
.source "RecordingController.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;
.implements Lcom/samsung/android/camera/core/SemCamera$ImageEffectEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingUtil;,
        Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;,
        Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingEventHandler;,
        Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;,
        Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;,
        Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingCommand;
    }
.end annotation


# static fields
.field protected static final ANIMATION_DURATION_100:I = 0x64

.field protected static final ANIMATION_DURATION_130:I = 0x82

.field protected static final ANIMATION_DURATION_300:I = 0x12c

.field protected static final ANIMATION_DURATION_470:I = 0x1d6

.field protected static final ANIMATION_DURATION_570:I = 0x23a

.field protected static final BLINK_REC_INDICATOR_INTERVAL:I = 0x1f4

.field private static final CHECK_RECORDING_TICK_TIME_INTERVAL:I = 0x64

.field private static final CHECK_RECORDING_TICK_TIME_MSG:I = 0x1

.field protected static final DB_RECORDINGMODE_FAST_MOTION:Ljava/lang/String; = "2"

.field protected static final DB_RECORDINGMODE_HYPER_MOTION:Ljava/lang/String; = "5"

.field protected static final DB_RECORDINGMODE_KEY:Ljava/lang/String; = "recording_mode"

.field protected static final DB_RECORDINGMODE_MULTI_TRACK:Ljava/lang/String; = "4"

.field protected static final DB_RECORDINGMODE_SLOW_MOTION:Ljava/lang/String; = "1"

.field protected static final DEFAULT_RECORDING_FPS:I = 0x7530

.field protected static final MINIMUM_REMAIN_TIME_TO_SNAPSHOT:I = 0x5

.field protected static final ONE_SECOND:I = 0x1

.field protected static final RECORDING_EVENT_CANCELLED:I = 0x4

.field protected static final RECORDING_EVENT_PAUSED:I = 0x2

.field protected static final RECORDING_EVENT_RESUMED:I = 0x1

.field protected static final RECORDING_EVENT_STARTED:I = 0x0

.field protected static final RECORDING_EVENT_STOPPED:I = 0x3

.field protected static final RECORDING_TICK_INTERVAL_DEFAULT:I = 0x3e8

.field protected static final RECORDING_TICK_INTERVAL_MAX:I = 0x3e8

.field protected static final RECORDING_TICK_INTERVAL_MIN:I = 0x64

.field protected static final SECONDS_IN_AN_HOUR:I = 0xe10

.field protected static final SECONDS_IN_A_MINUTE:I = 0x3c

.field private static final SHOW_CALL_POPUP_TOAST:I = 0x1

.field private static final SHOW_CALL_POPUP_TOAST_DELAY:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "RecordingController"

.field protected static final UNLIMITED_RECORDING_TIME:I = -0x1


# instance fields
.field protected mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field protected mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mCurrentRecordingFileSize:J

.field private mCurrentRecordingFileTime:J

.field private mCurrentRecordingTimeInMilliSecond:J

.field protected mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private mIsRecordingFailedByVideoCapability:Z

.field private mIsRecordingRestrictedByCallState:Z

.field private mIsRecordingRestrictedByOverHeat:Z

.field private mIsRecordingTimeLimitedByLowStorage:Z

.field private mIsRecordingTimeLimitedBySystem:Z

.field private mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mMaxRecordingTimeLimitByStorage:I

.field private mMaxRecordingTimeLimitBySystem:I

.field protected mMaxRecordingTimeLimitInSecond:I

.field private mPreviousRecordingTime:J

.field private mRecordingErrorHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;

.field private mRecordingEventHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingEventHandler;

.field private mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

.field private mRecordingState:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

.field protected mTickInterval:I


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V
    .locals 5

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInSecond:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mTickInterval:I

    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingState:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingTimeInMilliSecond:J

    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileSize:J

    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mPreviousRecordingTime:J

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitByStorage:I

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitBySystem:I

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByOverHeat:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByCallState:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedByLowStorage:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedBySystem:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingFailedByVideoCapability:Z

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$1;-><init>(Lcom/sec/android/app/camera/shootingmode/RecordingController;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/RecordingController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByOverHeat:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/shootingmode/RecordingController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByOverHeat:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/RecordingController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->restrictRecording(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/shootingmode/RecordingController;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->checkRecordingTickTime()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/RecordingController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByCallState:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/shootingmode/RecordingController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByCallState:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/RecordingController;)Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingEventHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingEventHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingEventHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/RecordingController;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->restrictRecording(ZZ)V

    return-void
.end method

.method static synthetic access$502(Lcom/sec/android/app/camera/shootingmode/RecordingController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingFailedByVideoCapability:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/shootingmode/RecordingController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->handleRecordingError(I)V

    return-void
.end method

.method private checkRecordingTickTime()V
    .locals 6

    const-wide/16 v4, 0x3e8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getTotalRecordingTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingTimeInMilliSecond:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mTickInterval:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getTotalRecordingTime()J

    move-result-wide v0

    div-long/2addr v0, v4

    iget-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingTimeInMilliSecond:J

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getTotalRecordingTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingTimeInMilliSecond:J

    iget-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingTimeInMilliSecond:J

    iget-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileSize:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onRecordingTick(JJ)V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_PAUSING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return-void
.end method

.method private handleRecordingError(I)V
    .locals 5

    const-string v0, "RecordingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRecordingError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->cancelRecording()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->unregisterRecordingController()V

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingFailedByVideoCapability:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingFailedByVideoCapability:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "RecordingController"

    const-string v1, "Return, camera is finishing"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->cancelRecording()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a0284

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0a01fa

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showCameraDialog(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, -0x4

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->finishOnError(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0xf
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private restrictRecording(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->restrictRecording(ZZ)V

    return-void
.end method

.method private restrictRecording(ZZ)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const-string v0, "RecordingController"

    const-string v1, "restrictRecording : true"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onRecordingRestricted(ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByOverHeat:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByCallState:Z

    if-nez v0, :cond_0

    const-string v0, "RecordingController"

    const-string v1, "restrictRecording : false"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2, v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onRecordingRestricted(ZZ)V

    goto :goto_0
.end method

.method private startRecordingTickTimer()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->stopInactivityTimer()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getTotalRecordingTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onRecordingTick(JJ)V

    return-void
.end method

.method private updateMaxRecordingTimeLimit()V
    .locals 4

    const/4 v2, -0x1

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRequestedRecordingDurationLimit()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRequestedRecordingDurationLimit()I

    move-result v0

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedBySystem:Z

    if-eqz v1, :cond_1

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitBySystem:I

    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedByLowStorage:Z

    if-eqz v1, :cond_2

    if-ne v0, v2, :cond_4

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitByStorage:I

    :cond_2
    :goto_1
    const-string v1, "RecordingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMaxRecordingTimeLimit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInSecond:I

    return-void

    :cond_3
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitBySystem:I

    if-ge v1, v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitBySystem:I

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitByStorage:I

    if-ge v1, v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitByStorage:I

    goto :goto_1
.end method


# virtual methods
.method protected abstract cancelRecording()V
.end method

.method protected checkAvailableRecordingStorage()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getRemainRecordingTime()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitByStorage:I

    const-string v0, "RecordingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAvailableRecordingStorage : Remain RecTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitByStorage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitByStorage:I

    const/16 v1, 0xe10

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedByLowStorage:Z

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->updateMaxRecordingTimeLimit()V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedByLowStorage:Z

    goto :goto_0
.end method

.method protected finishRecordingPreviewVI()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->needToResizeForCamcorderPreviewAspectRatio()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderAntiShake()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleRequestNotifyPreviewStarted()V

    goto :goto_0
.end method

.method protected getCurrentRecordingFileSize()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileSize:J

    return-wide v0
.end method

.method protected getCurrentRecordingFileTimeInSecond()J
    .locals 4

    iget-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method protected getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingState:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    return-object v0
.end method

.method protected getTotalRecordingTime()J
    .locals 4

    iget-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mPreviousRecordingTime:J

    iget-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method protected isRecordingControlAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingState:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STARTING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingState:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORD_STOPPING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isRecordingRestricted()Z
    .locals 4

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByOverHeat:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isTemperatureHighToRecord()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "RecordingController"

    const-string v2, "RecordingRestricted - over heat temperature"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByCallState:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCallStatus()I

    move-result v1

    if-ne v1, v0, :cond_3

    :cond_2
    const-string v1, "RecordingController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RecordingRestricted - calling ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByCallState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "],["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCallStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isRecordingTimeLimited()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getRequestedRecordingDurationLimit()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "RecordingController"

    const-string v2, "RecordingTimeLimited - requested recording duration limit"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedBySystem:Z

    if-eqz v1, :cond_1

    const-string v1, "RecordingController"

    const-string v2, "RecordingTimeLimited - system limitation"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedByLowStorage:Z

    if-eqz v1, :cond_2

    const-string v1, "RecordingController"

    const-string v2, "RecordingTimeLimited - low storage"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isRecordingTimeRestricted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract isSnapShotAvailable()Z
.end method

.method protected limitRecordingTimeBySystem(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedBySystem:Z

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitBySystem:I

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->updateMaxRecordingTimeLimit()V

    return-void
.end method

.method public onChangeCamcorderParameters(Lcom/samsung/android/camera/core/SemCamera$Parameters;)V
    .locals 8

    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_SNAPSHOT:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->isSnapShotAvailable()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const-string v5, "RecordingController"

    const-string v6, "Wrong camcorder resolution id"

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-nez v5, :cond_f

    sget v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_640X480_PICTURE_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_640X480_PICTURE_HEIGHT:I

    :goto_0
    const-string v5, "RecordingController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setPictureSize : pictureWidth = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pictureHeight = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v2, v1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setPictureSize(II)V

    invoke-virtual {p1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getPreviewSize()Lcom/samsung/android/camera/core/SemCamera$Size;

    move-result-object v5

    iget v5, v5, Lcom/samsung/android/camera/core/SemCamera$Size;->width:I

    invoke-virtual {p1}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->getPreviewSize()Lcom/samsung/android/camera/core/SemCamera$Size;

    move-result-object v6

    iget v6, v6, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    invoke-static {v4, v5, v6}, Lcom/sec/android/app/camera/util/Util;->findThumbnailSize(Ljava/util/List;II)Lcom/samsung/android/camera/core/SemCamera$Size;

    move-result-object v3

    if-eqz v3, :cond_0

    iget v5, v3, Lcom/samsung/android/camera/core/SemCamera$Size;->width:I

    iget v6, v3, Lcom/samsung/android/camera/core/SemCamera$Size;->height:I

    invoke-virtual {p1, v5, v6}, Lcom/samsung/android/camera/core/SemCamera$Parameters;->setJpegThumbnailSize(II)V

    :cond_0
    return-void

    :sswitch_0
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-nez v5, :cond_1

    sget v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_3840X2160_PICTURE_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_3840X2160_PICTURE_HEIGHT:I

    goto :goto_0

    :cond_1
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_2560X1440_PICTURE_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_2560X1440_PICTURE_HEIGHT:I

    goto :goto_0

    :sswitch_1
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-nez v5, :cond_2

    sget v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_2560X1440_PICTURE_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_2560X1440_PICTURE_HEIGHT:I

    goto :goto_0

    :cond_2
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_2560X1440_PICTURE_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_2560X1440_PICTURE_HEIGHT:I

    goto :goto_0

    :sswitch_2
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-nez v5, :cond_3

    sget v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1920X1080_PICTURE_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1920X1080_PICTURE_HEIGHT:I

    goto :goto_0

    :cond_3
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_1920X1080_PICTURE_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_1920X1080_PICTURE_HEIGHT:I

    goto/16 :goto_0

    :sswitch_3
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-nez v5, :cond_4

    sget v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1920X1080_60FPS_PICTURE_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1920X1080_60FPS_PICTURE_HEIGHT:I

    goto/16 :goto_0

    :cond_4
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_1920X1080_PICTURE_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_1920X1080_PICTURE_HEIGHT:I

    goto/16 :goto_0

    :sswitch_4
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-nez v5, :cond_5

    sget v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1440X1440_PICTURE_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1440X1440_PICTURE_HEIGHT:I

    goto/16 :goto_0

    :cond_5
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_1440X1440_PICTURE_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_1440X1440_PICTURE_HEIGHT:I

    goto/16 :goto_0

    :sswitch_5
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-nez v5, :cond_6

    sget v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1280X720_PICTURE_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1280X720_PICTURE_HEIGHT:I

    goto/16 :goto_0

    :cond_6
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_1280X720_PICTURE_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_1280X720_PICTURE_HEIGHT:I

    goto/16 :goto_0

    :sswitch_6
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-nez v5, :cond_7

    sget v2, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMCORDER_RESOLUTION_PICTURE_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->COVER_CAMCORDER_RESOLUTION_PICTURE_HEIGHT:I

    goto/16 :goto_0

    :cond_7
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SQUARE_PREVIEW_WIDTH_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMERA_SQUARE_PREVIEW_WIDTH_HEIGHT:I

    goto/16 :goto_0

    :sswitch_7
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-nez v5, :cond_8

    sget v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1072X1072_PICTURE_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_1072X1072_PICTURE_HEIGHT:I

    goto/16 :goto_0

    :cond_8
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_1072X1072_PICTURE_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_1072X1072_PICTURE_HEIGHT:I

    goto/16 :goto_0

    :sswitch_8
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-nez v5, :cond_9

    sget v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_960X960_PICTURE_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_960X960_PICTURE_HEIGHT:I

    goto/16 :goto_0

    :cond_9
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_960X960_PICTURE_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_960X960_PICTURE_HEIGHT:I

    goto/16 :goto_0

    :sswitch_9
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-nez v5, :cond_a

    sget v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_960X720_PICTURE_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_960X720_PICTURE_HEIGHT:I

    goto/16 :goto_0

    :cond_a
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_960X720_PICTURE_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_960X720_PICTURE_HEIGHT:I

    goto/16 :goto_0

    :sswitch_a
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-nez v5, :cond_b

    sget v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_720X480_PICTURE_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_720X480_PICTURE_HEIGHT:I

    goto/16 :goto_0

    :cond_b
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_720X480_PICTURE_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_720X480_PICTURE_HEIGHT:I

    goto/16 :goto_0

    :sswitch_b
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-nez v5, :cond_c

    sget v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_640X480_PICTURE_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_640X480_PICTURE_HEIGHT:I

    goto/16 :goto_0

    :cond_c
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_640X480_PICTURE_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_640X480_PICTURE_HEIGHT:I

    goto/16 :goto_0

    :sswitch_c
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-nez v5, :cond_d

    sget v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_320X240_PICTURE_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_320X240_PICTURE_HEIGHT:I

    goto/16 :goto_0

    :cond_d
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_320X240_PICTURE_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_320X240_PICTURE_HEIGHT:I

    goto/16 :goto_0

    :sswitch_d
    iget-object v5, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-nez v5, :cond_e

    sget v2, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_320X240_PICTURE_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->BACK_CAMCORDER_RESOLUTION_320X240_PICTURE_HEIGHT:I

    goto/16 :goto_0

    :cond_e
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_320X240_PICTURE_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_320X240_PICTURE_HEIGHT:I

    goto/16 :goto_0

    :cond_f
    sget v2, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_640X480_PICTURE_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/feature/Feature;->FRONT_CAMCORDER_RESOLUTION_640X480_PICTURE_HEIGHT:I

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_b
        0xd -> :sswitch_2
        0xe -> :sswitch_5
        0xf -> :sswitch_a
        0x12 -> :sswitch_c
        0x13 -> :sswitch_d
        0x15 -> :sswitch_1
        0x22 -> :sswitch_9
        0x28 -> :sswitch_0
        0x2a -> :sswitch_3
        0x2f -> :sswitch_7
        0x34 -> :sswitch_4
        0x3c -> :sswitch_6
        0x3e -> :sswitch_8
    .end sparse-switch
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3

    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    const-string v0, "RecordingController"

    const-string v1, "onError - MEDIA_RECORDER_ERROR_UNKNOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->cancelRecording()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, -0x4

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->finishOnError(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    const-string v0, "RecordingController"

    const-string v1, "onError - SEM_MEDIA_RECORDER_ERROR_BUFFER_OVERFLOW"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onStopRecordingRequested(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/4 v1, -0x6

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->finishOnError(I)V

    goto :goto_0
.end method

.method public onImageEffectInfo(Ljava/lang/String;)V
    .locals 6

    const-string v1, "RecordingController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onImageEffectInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "multiduration"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\\D"

    const-string v4, ""

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v4, v0

    iput-wide v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    if-nez v0, :cond_0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->startRecordingTickTimer()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->checkRecordingTickTime()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "multimaxduration"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "RecordingController"

    const-string v4, "onImageEffectInfo - MAX_DURATION_REACHED"

    invoke-static {v1, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "\\D"

    const-string v4, ""

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v4, v0

    iput-wide v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onRecordingMaxDurationReached()V

    goto :goto_0

    :cond_2
    const-string v1, "multimaxsize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "RecordingController"

    const-string v4, "onImageEffectInfo - MAX_FILESIZE_REACHED"

    invoke-static {v1, v4}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "\\D"

    const-string v4, ""

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileSize:J

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onRecordingMaxFileSizeReached()V

    goto :goto_0

    :cond_3
    const-string v1, "multisize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\\D"

    const-string v4, ""

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileSize:J

    goto :goto_0
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 4

    const/16 v0, 0x320

    if-ne p2, v0, :cond_2

    const-string v0, "RecordingController"

    const-string v1, "onInfo - MEDIA_RECORDER_INFO_MAX_DURATION_REACHED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isRecorderStopping()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "RecordingController"

    const-string v1, "onInfo - already scheduled to stop video recording so returned."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getTotalRecordingTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileSize:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onRecordingTick(JJ)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onRecordingMaxDurationReached()V

    goto :goto_0

    :cond_2
    const/16 v0, 0x321

    if-ne p2, v0, :cond_3

    const-string v0, "RecordingController"

    const-string v1, "onInfo - MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onRecordingMaxFileSizeReached()V

    goto :goto_0

    :cond_3
    const/16 v0, 0x384

    if-ne p2, v0, :cond_4

    int-to-long v0, p3

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileSize:J

    goto :goto_0

    :cond_4
    const/16 v0, 0x385

    if-ne p2, v0, :cond_0

    int-to-long v0, p3

    iput-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    const-string v0, "RecordingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInfo - SEM_MEDIA_RECORDER_INFO_DURATION_IN_PROGRESS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_0

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->startRecordingTickTimer()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->checkRecordingTickTime()V

    goto :goto_0
.end method

.method public onMediaRecorderPrepared(Landroid/media/MediaRecorder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onMediaRecorderPreparedEvent(Landroid/media/MediaRecorder;)V

    return-void
.end method

.method protected abstract onMediaRecorderPreparedEvent(Landroid/media/MediaRecorder;)V
.end method

.method public onRecordingCancelled()V
    .locals 4

    const-wide/16 v2, 0x0

    const-string v0, "RecordingController"

    const-string v1, "onRecordingCancelled"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onRecordingEvent(I)V

    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingTimeInMilliSecond:J

    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileSize:J

    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mPreviousRecordingTime:J

    return-void
.end method

.method protected abstract onRecordingEvent(I)V
.end method

.method public onRecordingFailed(I)V
    .locals 3

    const-string v0, "RecordingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordingFailed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingErrorHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingErrorHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method protected abstract onRecordingMaxDurationReached()V
.end method

.method protected abstract onRecordingMaxFileSizeReached()V
.end method

.method public onRecordingPaused()V
    .locals 2

    const-string v0, "RecordingController"

    const-string v1, "onRecordingPaused"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onRecordingEvent(I)V

    return-void
.end method

.method public onRecordingRestarted()V
    .locals 4

    const/4 v2, 0x1

    const-string v0, "RecordingController"

    const-string v1, "onRecordingRestarted"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;->removeMessages(I)V

    :cond_0
    iget-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mPreviousRecordingTime:J

    iget-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mPreviousRecordingTime:J

    :cond_1
    return-void
.end method

.method protected abstract onRecordingRestricted(ZZ)V
.end method

.method public onRecordingResumed()V
    .locals 2

    const-string v0, "RecordingController"

    const-string v1, "onRecordingResumed"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->RECORDING:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onRecordingEvent(I)V

    return-void
.end method

.method public onRecordingStarted()V
    .locals 2

    const-string v0, "RecordingController"

    const-string v1, "onRecordingStarted"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onRecordingEvent(I)V

    return-void
.end method

.method public onRecordingStopped()V
    .locals 4

    const-wide/16 v2, 0x0

    const-string v0, "RecordingController"

    const-string v1, "onRecordingStopped"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onRecordingEvent(I)V

    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingTimeInMilliSecond:J

    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileSize:J

    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    iput-wide v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mPreviousRecordingTime:J

    return-void
.end method

.method protected abstract onRecordingTick(JJ)V
.end method

.method protected abstract onStopProgress(I)V
.end method

.method public onStopRecordingProgress(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onStopProgress(I)V

    return-void
.end method

.method protected onStopRecordingRequested(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getRecordingState()Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->getCurrentRecordingFileTimeInSecond()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->cancelRecording()V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->stopRecordingForced()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->stopRecording()V

    goto :goto_0
.end method

.method public onUpdateVideoDBPrepared(Landroid/content/ContentValues;)Z
    .locals 6

    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/Engine;->getLastContentFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const-string v2, "duration"

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->onVideoDBUpdatePreparedEvent(Landroid/content/ContentValues;)Z

    move-result v2

    return v2

    :catch_0
    move-exception v0

    :goto_1
    const-string v2, "RecordingController"

    const-string v3, "setDataSource failed"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "duration"

    iget-wide v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCurrentRecordingFileTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected abstract onVideoDBUpdatePreparedEvent(Landroid/content/ContentValues;)Z
.end method

.method protected registerRecordingController(Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 4

    const/4 v3, 0x1

    const-string v1, "RecordingController"

    const-string v2, "registerRecordingController"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/RecordingController;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "camera.action.LOW_BATTERY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.AUDIOFOCUS_LOSS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.OVERHEAT_TEMPERATURE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.COOLDOWN_TEMPERATURE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.PREVIEW_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.CALL_STATE_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.CALL_STATE_RINGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.CALL_STATE_OFFHOOK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.COVER_OPENED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.ACTION_VIDEO_CAPABILITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.ACTION_ERROR_CAMERA_BUSY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "camera.action.ACTION_ERROR_CAMERA_SERVER_DIED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setRecordingEventListener(Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v1, p0}, Lcom/sec/android/app/camera/interfaces/Engine;->setMediaRecorderListener(Ljava/lang/Object;)V

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->IDLE:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isTemperatureHighToRecord()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByOverHeat:Z

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByCallState:Z

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCallStatus()I

    move-result v1

    if-ne v1, v3, :cond_1

    const-string v1, "RecordingController"

    const-string v2, "registerRecordingController, CallStatus ON"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByCallState:Z

    :cond_1
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/RecordingController;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingErrorHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingEventHandler;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingEventHandler;-><init>(Lcom/sec/android/app/camera/shootingmode/RecordingController;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingEventHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingEventHandler;

    return-void
.end method

.method protected setRecordingState(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;)V
    .locals 3

    const-string v0, "RecordingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecordingState : state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingState:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    return-void
.end method

.method protected setSecImagingRecorderListener(Lcom/samsung/android/camera/core/SemCamera$ImageEffectEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/Engine;->setSecImagingEventListener(Lcom/samsung/android/camera/core/SemCamera$ImageEffectEventListener;)V

    return-void
.end method

.method protected showPopupCallToast()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/RecordingController;->isRecordingTimeRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f0a01f9

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const v1, 0x7f0a01f8

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/camera/widget/CameraToast;->makeText(Lcom/sec/android/app/camera/interfaces/CameraContext;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected abstract startRecording()V
.end method

.method protected startRecordingPreviewVI()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->needToResizeForCamcorderPreviewAspectRatio()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderAntiShake()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getVisualInteractionProvider()Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/VisualInteractionProvider;->setPreviewAnimation(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->scheduleSetOneShotPreviewCallback()V

    goto :goto_0
.end method

.method protected abstract stopRecording()V
.end method

.method protected abstract stopRecordingForced()V
.end method

.method protected unregisterRecordingController()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v0, "RecordingController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterRecordingController in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingState:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setRecordingEventListener(Lcom/sec/android/app/camera/interfaces/Engine$RecordingEventListener;)V

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0, v4}, Lcom/sec/android/app/camera/interfaces/Engine;->setMediaRecorderListener(Ljava/lang/Object;)V

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByOverHeat:Z

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingRestrictedByCallState:Z

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingFailedByVideoCapability:Z

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mTickInterval:I

    iput-boolean v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mIsRecordingTimeLimitedBySystem:Z

    iput v3, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitBySystem:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mMaxRecordingTimeLimitInSecond:I

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingErrorHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingErrorHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;->access$700(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;)V

    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingErrorHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingErrorHandler;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;->access$800(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;)V

    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingProgressHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingProgressHandler;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingEventHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingEventHandler;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingEventHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingEventHandler;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingEventHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingEventHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingEventHandler;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingEventHandler;->removeMessages(I)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingEventHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingEventHandler;

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingEventHandler;->access$900(Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingEventHandler;)V

    iput-object v4, p0, Lcom/sec/android/app/camera/shootingmode/RecordingController;->mRecordingEventHandler:Lcom/sec/android/app/camera/shootingmode/RecordingController$RecordingEventHandler;

    :cond_4
    return-void
.end method
