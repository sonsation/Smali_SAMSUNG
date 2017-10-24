.class public Lcom/android/systemui/volume/VolumeDialogController;
.super Ljava/lang/Object;
.source "VolumeDialogController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/volume/VolumeDialogController$C;,
        Lcom/android/systemui/volume/VolumeDialogController$Callbacks;,
        Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;,
        Lcom/android/systemui/volume/VolumeDialogController$Receiver;,
        Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;,
        Lcom/android/systemui/volume/VolumeDialogController$State;,
        Lcom/android/systemui/volume/VolumeDialogController$StreamState;,
        Lcom/android/systemui/volume/VolumeDialogController$VC;,
        Lcom/android/systemui/volume/VolumeDialogController$W;
    }
.end annotation


# static fields
.field private static final STREAMS:[I

.field private static final STREAMTITLES:[I

.field private static final TAG:Ljava/lang/String;

.field public static mIsSupportTvVolumeControl:Z


# instance fields
.field private final mAudio:Landroid/media/AudioManager;

.field private final mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

.field private final mComponent:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private mCurSmartViewVol:I

.field private mDestroyed:Z

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mEnabled:Z

.field private mFromKey:Z

.field private final mHasVibrator:Z

.field private mIsVolumeDialogShowing:Z

.field private mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

.field private mMaxSmartViewVol:I

.field private final mMediaSessions:Lcom/android/systemui/volume/MediaSessions;

.field private final mMediaSessionsCallbacksW:Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;

.field private mMinSmartViewVol:I

.field private final mNoMan:Landroid/app/NotificationManager;

.field private final mObserver:Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;

.field private final mReceiver:Lcom/android/systemui/volume/VolumeDialogController$Receiver;

.field private mSemDisplayVolumeListener:Landroid/hardware/display/SemDisplayVolumeListener;

.field private mSmartViewFlag:I

.field private final mState:Lcom/android/systemui/volume/VolumeDialogController$State;

.field private final mVibrator:Landroid/os/Vibrator;

.field private final mVolumeController:Lcom/android/systemui/volume/VolumeDialogController$VC;

.field private mVolumePolicy:Landroid/media/VolumePolicy;

.field private final mWorker:Lcom/android/systemui/volume/VolumeDialogController$W;

.field private final mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$C;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/VolumeDialogController$W;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorker:Lcom/android/systemui/volume/VolumeDialogController$W;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/volume/VolumeDialogController;)Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/volume/VolumeDialogController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/volume/VolumeDialogController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mDestroyed:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/volume/VolumeDialogController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mEnabled:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/volume/VolumeDialogController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mIsVolumeDialogShowing:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/volume/VolumeDialogController;)Lcom/android/systemui/volume/MediaSessions;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mMediaSessions:Lcom/android/systemui/volume/MediaSessions;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/volume/VolumeDialogController;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mNoMan:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/volume/VolumeDialogController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mSmartViewFlag:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/volume/VolumeDialogController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCurSmartViewVol:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/volume/VolumeDialogController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mEnabled:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/volume/VolumeDialogController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mMaxSmartViewVol:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/volume/VolumeDialogController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mMinSmartViewVol:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/volume/VolumeDialogController;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mSmartViewFlag:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/volume/VolumeDialogController;I)Z
    .locals 1
    .param p1, "stream"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->checkRoutedToBluetoothW(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/volume/VolumeDialogController;II)Z
    .locals 1
    .param p1, "stream"    # I
    .param p2, "flags"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogController;->onVolumeChangedW(II)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/systemui/volume/VolumeDialogController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogController;->onGetStateW()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/systemui/volume/VolumeDialogController;Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->onNotifyVisibleW(Z)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/systemui/volume/VolumeDialogController;I)V
    .locals 0
    .param p1, "stream"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->onSetActiveStreamW(I)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/systemui/volume/VolumeDialogController;Landroid/service/notification/Condition;)V
    .locals 0
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->onSetExitConditionW(Landroid/service/notification/Condition;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/systemui/volume/VolumeDialogController;IZ)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "external"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogController;->onSetRingerModeW(IZ)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/systemui/volume/VolumeDialogController;IZ)V
    .locals 0
    .param p1, "stream"    # I
    .param p2, "mute"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogController;->onSetStreamMuteW(IZ)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/systemui/volume/VolumeDialogController;II)V
    .locals 0
    .param p1, "stream"    # I
    .param p2, "level"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogController;->onSetStreamVolumeW(II)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/systemui/volume/VolumeDialogController;I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->onSetZenModeW(I)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/systemui/volume/VolumeDialogController;I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->onShowSafetyWarningW(I)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/systemui/volume/VolumeDialogController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogController;->onShowVolumeLimiterToast()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/volume/VolumeDialogController;I)Z
    .locals 1
    .param p1, "activeStream"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->updateActiveStreamW(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/systemui/volume/VolumeDialogController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogController;->updateRowHeader()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/volume/VolumeDialogController;Landroid/content/ComponentName;)Z
    .locals 1
    .param p1, "effectsSuppressor"    # Landroid/content/ComponentName;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->updateEffectsSuppressorW(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/systemui/volume/VolumeDialogController;I)Z
    .locals 1
    .param p1, "rm"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->updateRingerModeExternalW(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/systemui/volume/VolumeDialogController;I)Z
    .locals 1
    .param p1, "rm"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->updateRingerModeInternalW(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/systemui/volume/VolumeDialogController;IZ)Z
    .locals 1
    .param p1, "stream"    # I
    .param p2, "muted"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogController;->updateStreamMuteW(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/systemui/volume/VolumeDialogController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogController;->updateZenModeW()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/systemui/volume/VolumeDialogController;I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    .locals 1
    .param p1, "stream"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->streamStateW(I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap9(Lcom/android/systemui/volume/VolumeDialogController;I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->onDismissRequestedW(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xc

    .line 72
    const-class v0, Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/volume/Util;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/volume/VolumeDialogController;->mIsSupportTvVolumeControl:Z

    .line 82
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/volume/VolumeDialogController;->STREAMS:[I

    .line 97
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/volume/VolumeDialogController;->STREAMTITLES:[I

    .line 71
    return-void

    .line 82
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data

    .line 97
    :array_1
    .array-data 4
        0x10403dc
        0x104081c
        0x1040819
        0x104081a
        0x10403d7
        0x104081b
        0x10403dc
        0x104081c
        0x1040819
        0x104081a
        0x104081a
        0x104081a
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogController$Receiver;

    invoke-direct {v0, p0, v4}, Lcom/android/systemui/volume/VolumeDialogController$Receiver;-><init>(Lcom/android/systemui/volume/VolumeDialogController;Lcom/android/systemui/volume/VolumeDialogController$Receiver;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mReceiver:Lcom/android/systemui/volume/VolumeDialogController$Receiver;

    .line 122
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogController$VC;

    invoke-direct {v0, p0, v4}, Lcom/android/systemui/volume/VolumeDialogController$VC;-><init>(Lcom/android/systemui/volume/VolumeDialogController;Lcom/android/systemui/volume/VolumeDialogController$VC;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVolumeController:Lcom/android/systemui/volume/VolumeDialogController$VC;

    .line 123
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogController$C;

    invoke-direct {v0, p0, v4}, Lcom/android/systemui/volume/VolumeDialogController$C;-><init>(Lcom/android/systemui/volume/VolumeDialogController;Lcom/android/systemui/volume/VolumeDialogController$C;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    .line 124
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogController$State;

    invoke-direct {v0}, Lcom/android/systemui/volume/VolumeDialogController$State;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    .line 126
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;

    invoke-direct {v0, p0, v4}, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;-><init>(Lcom/android/systemui/volume/VolumeDialogController;Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mMediaSessionsCallbacksW:Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;

    .line 142
    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCurSmartViewVol:I

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mMinSmartViewVol:I

    iput v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mMaxSmartViewVol:I

    .line 144
    iput-boolean v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mIsVolumeDialogShowing:Z

    .line 146
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mSmartViewFlag:I

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    .line 150
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x5

    invoke-static {v0, v3, v2}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 151
    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mComponent:Landroid/content/ComponentName;

    .line 152
    new-instance v0, Landroid/os/HandlerThread;

    const-class v2, Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorkerThread:Landroid/os/HandlerThread;

    .line 153
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 154
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogController$W;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/volume/VolumeDialogController$W;-><init>(Lcom/android/systemui/volume/VolumeDialogController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorker:Lcom/android/systemui/volume/VolumeDialogController$W;

    .line 155
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 156
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController;->mMediaSessionsCallbacksW:Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;

    .line 155
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/volume/VolumeDialogController;->createMediaSessions(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/volume/MediaSessions$Callbacks;)Lcom/android/systemui/volume/MediaSessions;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mMediaSessions:Lcom/android/systemui/volume/MediaSessions;

    .line 157
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    .line 158
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mNoMan:Landroid/app/NotificationManager;

    .line 159
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorker:Lcom/android/systemui/volume/VolumeDialogController$W;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;-><init>(Lcom/android/systemui/volume/VolumeDialogController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mObserver:Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;

    .line 160
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mObserver:Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogController$SettingObserver;->init()V

    .line 161
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mReceiver:Lcom/android/systemui/volume/VolumeDialogController$Receiver;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogController$Receiver;->init()V

    .line 163
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVibrator:Landroid/os/Vibrator;

    .line 164
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mHasVibrator:Z

    .line 165
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    .line 167
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 168
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumeDialogController$1;-><init>(Lcom/android/systemui/volume/VolumeDialogController;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mSemDisplayVolumeListener:Landroid/hardware/display/SemDisplayVolumeListener;

    .line 192
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mSemDisplayVolumeListener:Landroid/hardware/display/SemDisplayVolumeListener;

    invoke-virtual {v0, v1, v4}, Landroid/hardware/display/DisplayManager;->semRegisterDisplayVolumeListener(Landroid/hardware/display/SemDisplayVolumeListener;Landroid/os/Handler;)V

    .line 148
    return-void

    :cond_0
    move v0, v1

    .line 164
    goto :goto_0
.end method

.method private checkRoutedToBluetoothW(I)Z
    .locals 5
    .param p1, "stream"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 355
    const/4 v0, 0x0

    .line 356
    .local v0, "changed":Z
    if-ne p1, v4, :cond_2

    .line 358
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v3

    and-int/lit16 v3, v3, 0x3a0

    if-eqz v3, :cond_1

    .line 363
    .local v1, "routedToBluetooth":Z
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/volume/VolumeDialogController;->updateStreamRoutedToBluetoothW(IZ)Z

    move-result v0

    .line 373
    .end local v0    # "changed":Z
    .end local v1    # "routedToBluetooth":Z
    :cond_0
    :goto_1
    return v0

    .restart local v0    # "changed":Z
    :cond_1
    move v1, v2

    .line 358
    goto :goto_0

    .line 364
    :cond_2
    const/16 v3, 0xb

    if-ne p1, v3, :cond_0

    .line 366
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->semGetPinDevice()I

    move-result v3

    and-int/lit16 v3, v3, 0x3a0

    if-eqz v3, :cond_3

    .line 371
    .restart local v1    # "routedToBluetooth":Z
    :goto_2
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/volume/VolumeDialogController;->updateStreamRoutedToBluetoothW(IZ)Z

    move-result v0

    .local v0, "changed":Z
    goto :goto_1

    .end local v1    # "routedToBluetooth":Z
    .local v0, "changed":Z
    :cond_3
    move v1, v2

    .line 366
    goto :goto_2
.end method

.method private static getApplicationName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v5, 0x0

    .line 609
    if-nez p1, :cond_0

    return-object v5

    .line 610
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 611
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 613
    .local v2, "pkg":Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 614
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-static {v5, v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 615
    .local v4, "rt":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-lez v5, :cond_1

    .line 616
    return-object v4

    .line 618
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "rt":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 619
    :cond_1
    return-object v2
.end method

.method private static isLogWorthy(I)Z
    .locals 1
    .param p0, "stream"    # I

    .prologue
    .line 570
    packed-switch p0, :pswitch_data_0

    .line 579
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 577
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 570
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static isRinger(I)Z
    .locals 2
    .param p0, "stream"    # I

    .prologue
    const/4 v0, 0x1

    .line 596
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onDismissRequestedW(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumeDialogController$C;->onDismissRequested(I)V

    .line 691
    return-void
.end method

.method private onGetStateW()V
    .locals 13

    .prologue
    .line 483
    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 484
    .local v4, "res":Landroid/content/res/Resources;
    sget-object v8, Lcom/android/systemui/volume/VolumeDialogController;->STREAMS:[I

    const/4 v7, 0x0

    array-length v9, v8

    :goto_0
    if-ge v7, v9, :cond_b

    aget v6, v8, v7

    .line 485
    .local v6, "stream":I
    const/4 v1, 0x0

    .line 486
    .local v1, "lastAudibleStreamVolume":I
    const/4 v3, 0x0

    .line 487
    .local v3, "muted":Z
    const/16 v10, 0xa

    if-eq v6, v10, :cond_0

    .line 488
    const/16 v10, 0xb

    if-eq v6, v10, :cond_3

    .line 489
    iget-object v10, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v10, v6}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v3

    .line 494
    .end local v3    # "muted":Z
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 495
    sget-object v10, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "onGetStateW : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " is mute"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_1
    const/4 v10, 0x3

    if-ne v6, v10, :cond_4

    .line 498
    iget-object v10, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Landroid/media/AudioManager;->semGetFineVolume(I)I

    move-result v2

    .line 499
    .local v2, "media_volume":I
    mul-int/lit8 v1, v2, 0xa

    .line 510
    .end local v2    # "media_volume":I
    :cond_2
    :goto_2
    invoke-direct {p0, v6, v1}, Lcom/android/systemui/volume/VolumeDialogController;->updateStreamLevelW(II)Z

    .line 511
    const/16 v10, 0xa

    if-ne v6, v10, :cond_8

    .line 512
    iget-object v10, p0, Lcom/android/systemui/volume/VolumeDialogController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v10, :cond_7

    sget-boolean v10, Lcom/android/systemui/volume/VolumeDialogController;->mIsSupportTvVolumeControl:Z

    if-eqz v10, :cond_7

    .line 513
    invoke-direct {p0, v6}, Lcom/android/systemui/volume/VolumeDialogController;->streamStateW(I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v10

    iget v11, p0, Lcom/android/systemui/volume/VolumeDialogController;->mMinSmartViewVol:I

    iput v11, v10, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMin:I

    .line 514
    invoke-direct {p0, v6}, Lcom/android/systemui/volume/VolumeDialogController;->streamStateW(I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v10

    iget v11, p0, Lcom/android/systemui/volume/VolumeDialogController;->mMaxSmartViewVol:I

    iput v11, v10, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMax:I

    .line 526
    :goto_3
    invoke-direct {p0, v6, v3}, Lcom/android/systemui/volume/VolumeDialogController;->updateStreamMuteW(IZ)Z

    .line 527
    invoke-direct {p0, v6}, Lcom/android/systemui/volume/VolumeDialogController;->streamStateW(I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v5

    .line 528
    .local v5, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    const/16 v10, 0xb

    if-eq v6, v10, :cond_a

    .line 529
    iget-object v10, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v10, v6}, Landroid/media/AudioManager;->isStreamAffectedByMute(I)Z

    move-result v10

    iput-boolean v10, v5, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muteSupported:Z

    .line 533
    :goto_4
    sget-object v10, Lcom/android/systemui/volume/VolumeDialogController;->STREAMTITLES:[I

    aget v10, v10, v6

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    .line 534
    invoke-direct {p0, v6}, Lcom/android/systemui/volume/VolumeDialogController;->checkRoutedToBluetoothW(I)Z

    .line 484
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 491
    .end local v5    # "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    .restart local v3    # "muted":Z
    :cond_3
    iget-object v10, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v3

    .local v3, "muted":Z
    goto :goto_1

    .line 500
    .end local v3    # "muted":Z
    :cond_4
    const/16 v10, 0xa

    if-ne v6, v10, :cond_5

    .line 501
    iget-object v10, p0, Lcom/android/systemui/volume/VolumeDialogController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v10, :cond_2

    sget-boolean v10, Lcom/android/systemui/volume/VolumeDialogController;->mIsSupportTvVolumeControl:Z

    if-eqz v10, :cond_2

    .line 502
    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCurSmartViewVol:I

    goto :goto_2

    .line 504
    :cond_5
    const/16 v10, 0xb

    if-ne v6, v10, :cond_6

    .line 505
    iget-object v10, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v10}, Landroid/media/AudioManager;->semGetPinDevice()I

    move-result v0

    .line 506
    .local v0, "device":I
    iget-object v10, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    const/4 v11, 0x3

    invoke-virtual {v10, v11, v0}, Landroid/media/AudioManager;->getStreamVolume(II)I

    move-result v1

    goto :goto_2

    .line 508
    .end local v0    # "device":I
    :cond_6
    iget-object v10, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v10, v6}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v1

    goto :goto_2

    .line 516
    :cond_7
    invoke-direct {p0, v6}, Lcom/android/systemui/volume/VolumeDialogController;->streamStateW(I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v10

    const/4 v11, 0x0

    iput v11, v10, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMin:I

    .line 517
    invoke-direct {p0, v6}, Lcom/android/systemui/volume/VolumeDialogController;->streamStateW(I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v10

    const/4 v11, 0x0

    iput v11, v10, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMax:I

    goto :goto_3

    .line 519
    :cond_8
    const/16 v10, 0xb

    if-ne v6, v10, :cond_9

    .line 520
    invoke-direct {p0, v6}, Lcom/android/systemui/volume/VolumeDialogController;->streamStateW(I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result v11

    iput v11, v10, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMin:I

    .line 521
    invoke-direct {p0, v6}, Lcom/android/systemui/volume/VolumeDialogController;->streamStateW(I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v11

    iput v11, v10, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMax:I

    goto/16 :goto_3

    .line 523
    :cond_9
    invoke-direct {p0, v6}, Lcom/android/systemui/volume/VolumeDialogController;->streamStateW(I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v11, v6}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result v11

    iput v11, v10, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMin:I

    .line 524
    invoke-direct {p0, v6}, Lcom/android/systemui/volume/VolumeDialogController;->streamStateW(I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v11, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v11

    iput v11, v10, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMax:I

    goto/16 :goto_3

    .line 531
    .restart local v5    # "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    :cond_a
    iget-object v10, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Landroid/media/AudioManager;->isStreamAffectedByMute(I)Z

    move-result v10

    iput-boolean v10, v5, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muteSupported:Z

    goto/16 :goto_4

    .line 536
    .end local v1    # "lastAudibleStreamVolume":I
    .end local v5    # "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    .end local v6    # "stream":I
    :cond_b
    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v7}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/systemui/volume/VolumeDialogController;->updateRingerModeExternalW(I)Z

    .line 537
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogController;->updateZenModeW()Z

    .line 538
    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialogController;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {v7}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/systemui/volume/VolumeDialogController;->updateEffectsSuppressorW(Landroid/content/ComponentName;)Z

    .line 539
    iget-object v7, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    iget-object v8, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    invoke-virtual {v7, v8}, Lcom/android/systemui/volume/VolumeDialogController$C;->onStateChanged(Lcom/android/systemui/volume/VolumeDialogController$State;)V

    .line 482
    return-void
.end method

.method private onNotifyVisibleW(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVolumeController:Lcom/android/systemui/volume/VolumeDialogController$VC;

    invoke-virtual {v0, v1, p1}, Landroid/media/AudioManager;->notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V

    .line 330
    if-nez p1, :cond_1

    .line 331
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/volume/VolumeDialogController;->updateActiveStreamW(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController$C;->onStateChanged(Lcom/android/systemui/volume/VolumeDialogController$State;)V

    .line 327
    :cond_1
    return-void
.end method

.method private onSetActiveStreamW(I)V
    .locals 3
    .param p1, "stream"    # I

    .prologue
    .line 676
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->updateActiveStreamW(I)Z

    move-result v0

    .line 677
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 678
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    invoke-virtual {v1, v2}, Lcom/android/systemui/volume/VolumeDialogController$C;->onStateChanged(Lcom/android/systemui/volume/VolumeDialogController$State;)V

    .line 675
    :cond_0
    return-void
.end method

.method private onSetExitConditionW(Landroid/service/notification/Condition;)V
    .locals 4
    .param p1, "condition"    # Landroid/service/notification/Condition;

    .prologue
    const/4 v0, 0x0

    .line 683
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mNoMan:Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget v2, v2, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    :cond_0
    sget-object v3, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 682
    return-void
.end method

.method private onSetRingerModeW(IZ)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "external"    # Z

    .prologue
    .line 646
    if-eqz p2, :cond_0

    .line 647
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 645
    :goto_0
    return-void

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    goto :goto_0
.end method

.method private onSetStreamMuteW(IZ)V
    .locals 3
    .param p1, "stream"    # I
    .param p2, "mute"    # Z

    .prologue
    .line 654
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    if-eqz p2, :cond_0

    const/16 v0, -0x64

    .line 655
    :goto_0
    const/4 v2, 0x0

    .line 654
    invoke-virtual {v1, p1, v0, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 653
    return-void

    .line 655
    :cond_0
    const/16 v0, 0x64

    goto :goto_0
.end method

.method private onSetStreamVolumeW(II)V
    .locals 7
    .param p1, "stream"    # I
    .param p2, "level"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 659
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSetStreamVolume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " level="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_0
    const/16 v2, 0x64

    if-lt p1, v2, :cond_1

    .line 661
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mMediaSessionsCallbacksW:Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;

    invoke-virtual {v2, p1, p2}, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->setStreamVolume(II)V

    .line 662
    return-void

    .line 664
    :cond_1
    if-ne p1, v6, :cond_2

    .line 665
    div-int/lit8 v1, p2, 0xa

    .line 666
    .local v1, "media_volume":I
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v2, v6, v1, v5}, Landroid/media/AudioManager;->semSetFineVolume(III)V

    .line 658
    .end local v1    # "media_volume":I
    :goto_0
    return-void

    .line 667
    :cond_2
    const/16 v2, 0xb

    if-ne p1, v2, :cond_3

    .line 668
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->semGetPinDevice()I

    move-result v0

    .line 669
    .local v0, "device":I
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v2, v6, p2, v5, v0}, Landroid/media/AudioManager;->setStreamVolume(IIII)V

    goto :goto_0

    .line 671
    .end local v0    # "device":I
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v2, p1, p2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method private onSetZenModeW(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 687
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSetZenModeW "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mNoMan:Landroid/app/NotificationManager;

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;)V

    .line 686
    return-void
.end method

.method private onShowSafetyWarningW(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor;->isSafetyWarningDialogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumeDialogController$C;->onShowSafetyWarning(I)V

    .line 341
    return-void

    .line 343
    :cond_0
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "KnoxStateMonitor : Disable SafetyWarningDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->disableSafeMediaVolume()V

    .line 345
    return-void
.end method

.method private onShowVolumeLimiterToast()V
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogController$C;->onShowVolumeLimiterToast()V

    .line 350
    return-void
.end method

.method private onVolumeChangedW(II)Z
    .locals 18
    .param p1, "stream"    # I
    .param p2, "flags"    # I

    .prologue
    .line 377
    const/high16 v14, 0x800000

    and-int v14, v14, p2

    if-eqz v14, :cond_0

    .line 378
    const/16 p1, 0xa

    .line 379
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/volume/VolumeDialogController;->mSmartViewFlag:I

    .line 381
    :cond_0
    and-int/lit8 v14, p2, 0x1

    if-eqz v14, :cond_a

    const/4 v11, 0x1

    .line 382
    .local v11, "showUI":Z
    :goto_0
    move/from16 v0, p2

    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_b

    const/4 v4, 0x1

    .line 383
    .local v4, "fromKey":Z
    :goto_1
    move/from16 v0, p2

    and-int/lit16 v14, v0, 0x800

    if-eqz v14, :cond_c

    const/4 v12, 0x1

    .line 384
    .local v12, "showVibrateHint":Z
    :goto_2
    move/from16 v0, p2

    and-int/lit16 v14, v0, 0x80

    if-eqz v14, :cond_d

    const/4 v10, 0x1

    .line 385
    .local v10, "showSilentHint":Z
    :goto_3
    and-int/lit8 v14, p2, 0x4

    if-eqz v14, :cond_e

    const/4 v8, 0x1

    .line 386
    .local v8, "playSound":Z
    :goto_4
    and-int/lit8 v14, p2, 0x8

    if-eqz v14, :cond_f

    const/4 v9, 0x1

    .line 387
    .local v9, "removeSound":Z
    :goto_5
    const/high16 v14, 0x800000

    and-int v14, v14, p2

    if-eqz v14, :cond_10

    const/4 v13, 0x1

    .line 388
    .local v13, "smartView":Z
    :goto_6
    const/high16 v14, 0x1000000

    and-int v14, v14, p2

    if-eqz v14, :cond_11

    const/4 v7, 0x1

    .line 390
    .local v7, "multiSound":Z
    :goto_7
    if-eqz v13, :cond_12

    .line 391
    const/16 p1, 0xa

    .line 392
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/volume/VolumeDialogController;->mSmartViewFlag:I

    .line 397
    :cond_1
    :goto_8
    const/4 v2, 0x0

    .line 398
    .local v2, "changed":Z
    if-eqz v11, :cond_2

    .line 399
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/volume/VolumeDialogController;->updateActiveStreamW(I)Z

    move-result v2

    .line 400
    .local v2, "changed":Z
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/volume/VolumeDialogController;->checkRoutedToBluetoothW(I)Z

    move-result v14

    or-int/2addr v2, v14

    .line 403
    .end local v2    # "changed":Z
    :cond_2
    const/4 v5, 0x0

    .line 404
    .local v5, "lastAudibleStreamVolume":I
    const/4 v14, 0x3

    move/from16 v0, p1

    if-ne v0, v14, :cond_13

    .line 405
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Landroid/media/AudioManager;->semGetFineVolume(I)I

    move-result v6

    .line 406
    .local v6, "media_volume":I
    mul-int/lit8 v5, v6, 0xa

    .line 416
    .end local v6    # "media_volume":I
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/volume/VolumeDialogController;->updateStreamLevelW(II)Z

    move-result v14

    or-int/2addr v2, v14

    .line 417
    .restart local v2    # "changed":Z
    sget-object v14, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "onVolumeChangedW stream = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", flags = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", lastAudibleStreamVolume = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    if-eqz v2, :cond_3

    .line 419
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    invoke-virtual {v14, v15}, Lcom/android/systemui/volume/VolumeDialogController$C;->onStateChanged(Lcom/android/systemui/volume/VolumeDialogController$State;)V

    .line 421
    :cond_3
    if-eqz v11, :cond_4

    .line 422
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumeDialogController;->mKnoxStateMonitor:Lcom/android/keyguard/KnoxStateMonitor;

    invoke-virtual {v14}, Lcom/android/keyguard/KnoxStateMonitor;->isVolumeDialogEnabled()Z

    move-result v14

    if-eqz v14, :cond_16

    .line 425
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/systemui/volume/VolumeDialogController$C;->onShowRequested(I)V

    .line 428
    :cond_4
    :goto_a
    if-eqz v8, :cond_5

    .line 429
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    invoke-virtual {v14}, Lcom/android/systemui/volume/VolumeDialogController$C;->onPlaySound()V

    .line 431
    :cond_5
    if-eqz v9, :cond_6

    .line 432
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    invoke-virtual {v14}, Lcom/android/systemui/volume/VolumeDialogController$C;->onStopSound()V

    .line 434
    :cond_6
    if-eqz v12, :cond_7

    .line 435
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    invoke-virtual {v14}, Lcom/android/systemui/volume/VolumeDialogController$C;->onShowVibrateHint()V

    .line 437
    :cond_7
    if-eqz v10, :cond_8

    .line 438
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    invoke-virtual {v14}, Lcom/android/systemui/volume/VolumeDialogController$C;->onShowSilentHint()V

    .line 440
    :cond_8
    if-eqz v2, :cond_9

    .line 441
    if-eqz v4, :cond_17

    .line 442
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v15, v17

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x1

    aput-object v16, v15, v17

    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-static {v14, v0, v15}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 443
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/volume/VolumeDialogController;->mFromKey:Z

    .line 448
    :cond_9
    :goto_b
    return v2

    .line 381
    .end local v2    # "changed":Z
    .end local v4    # "fromKey":Z
    .end local v5    # "lastAudibleStreamVolume":I
    .end local v7    # "multiSound":Z
    .end local v8    # "playSound":Z
    .end local v9    # "removeSound":Z
    .end local v10    # "showSilentHint":Z
    .end local v11    # "showUI":Z
    .end local v12    # "showVibrateHint":Z
    .end local v13    # "smartView":Z
    :cond_a
    const/4 v11, 0x0

    .restart local v11    # "showUI":Z
    goto/16 :goto_0

    .line 382
    :cond_b
    const/4 v4, 0x0

    .restart local v4    # "fromKey":Z
    goto/16 :goto_1

    .line 383
    :cond_c
    const/4 v12, 0x0

    .restart local v12    # "showVibrateHint":Z
    goto/16 :goto_2

    .line 384
    :cond_d
    const/4 v10, 0x0

    .restart local v10    # "showSilentHint":Z
    goto/16 :goto_3

    .line 385
    :cond_e
    const/4 v8, 0x0

    .restart local v8    # "playSound":Z
    goto/16 :goto_4

    .line 386
    :cond_f
    const/4 v9, 0x0

    .restart local v9    # "removeSound":Z
    goto/16 :goto_5

    .line 387
    :cond_10
    const/4 v13, 0x0

    .restart local v13    # "smartView":Z
    goto/16 :goto_6

    .line 388
    :cond_11
    const/4 v7, 0x0

    .restart local v7    # "multiSound":Z
    goto/16 :goto_7

    .line 393
    :cond_12
    if-eqz v7, :cond_1

    .line 394
    const/16 p1, 0xb

    goto/16 :goto_8

    .line 407
    .restart local v5    # "lastAudibleStreamVolume":I
    :cond_13
    const/16 v14, 0xa

    move/from16 v0, p1

    if-ne v0, v14, :cond_14

    .line 408
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/volume/VolumeDialogController;->mCurSmartViewVol:I

    goto/16 :goto_9

    .line 409
    :cond_14
    const/16 v14, 0xb

    move/from16 v0, p1

    if-ne v0, v14, :cond_15

    .line 410
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v14}, Landroid/media/AudioManager;->semGetPinDevice()I

    move-result v3

    .line 411
    .local v3, "device":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    const/4 v15, 0x3

    invoke-virtual {v14, v15, v3}, Landroid/media/AudioManager;->getStreamVolume(II)I

    move-result v5

    goto/16 :goto_9

    .line 413
    .end local v3    # "device":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    goto/16 :goto_9

    .line 423
    .restart local v2    # "changed":Z
    :cond_16
    sget-object v14, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    const-string/jumbo v15, "KnoxStateMonitor : Disable VolumeDialog"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 445
    :cond_17
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/volume/VolumeDialogController;->mFromKey:Z

    goto :goto_b
.end method

.method private streamStateW(I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    .locals 2
    .param p1, "stream"    # I

    .prologue
    .line 474
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget-object v1, v1, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    .line 475
    .local v0, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    if-nez v0, :cond_0

    .line 476
    new-instance v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    .end local v0    # "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-direct {v0}, Lcom/android/systemui/volume/VolumeDialogController$StreamState;-><init>()V

    .line 477
    .restart local v0    # "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget-object v1, v1, Lcom/android/systemui/volume/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 479
    :cond_0
    return-object v0
.end method

.method private updateActiveStreamW(I)Z
    .locals 6
    .param p1, "activeStream"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 460
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget v1, v1, Lcom/android/systemui/volume/VolumeDialogController$State;->activeStream:I

    if-ne p1, v1, :cond_0

    return v4

    .line 461
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iput p1, v1, Lcom/android/systemui/volume/VolumeDialogController$State;->activeStream:I

    .line 462
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x2

    invoke-static {v1, v3, v2}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 463
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateActiveStreamW "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_1
    const/16 v1, 0x64

    if-ge p1, v1, :cond_5

    move v0, p1

    .line 465
    .local v0, "s":I
    :goto_0
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "forceVolumeControlStream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_2
    const/16 v1, 0xb

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 467
    :cond_3
    const/4 v0, 0x3

    .line 469
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 470
    return v5

    .line 464
    .end local v0    # "s":I
    :cond_5
    const/4 v0, -0x1

    .restart local v0    # "s":I
    goto :goto_0
.end method

.method private updateEffectsSuppressorW(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "effectsSuppressor"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 600
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iput-object p1, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    .line 602
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget-object v2, v2, Lcom/android/systemui/volume/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Lcom/android/systemui/volume/VolumeDialogController;->getApplicationName(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->effectsSuppressorName:Ljava/lang/String;

    .line 603
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget-object v2, v2, Lcom/android/systemui/volume/VolumeDialogController$State;->effectsSuppressor:Landroid/content/ComponentName;

    aput-object v2, v1, v3

    .line 604
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget-object v2, v2, Lcom/android/systemui/volume/VolumeDialogController$State;->effectsSuppressorName:Ljava/lang/String;

    aput-object v2, v1, v4

    .line 603
    const/16 v2, 0xe

    invoke-static {v0, v2, v1}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 605
    return v4
.end method

.method private updateRingerModeExternalW(I)Z
    .locals 5
    .param p1, "rm"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 632
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeExternal:I

    if-ne p1, v0, :cond_0

    return v3

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iput p1, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeExternal:I

    .line 634
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/16 v2, 0xc

    invoke-static {v0, v2, v1}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 635
    return v4
.end method

.method private updateRingerModeInternalW(I)Z
    .locals 5
    .param p1, "rm"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 639
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget v0, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    if-ne p1, v0, :cond_0

    return v3

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iput p1, v0, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    .line 641
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/16 v2, 0xb

    invoke-static {v0, v2, v1}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 642
    return v4
.end method

.method private updateRowHeader()V
    .locals 7

    .prologue
    .line 543
    iget-object v3, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 544
    .local v0, "res":Landroid/content/res/Resources;
    sget-object v4, Lcom/android/systemui/volume/VolumeDialogController;->STREAMS:[I

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget v2, v4, v3

    .line 545
    .local v2, "stream":I
    invoke-direct {p0, v2}, Lcom/android/systemui/volume/VolumeDialogController;->streamStateW(I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v1

    .line 546
    .local v1, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    sget-object v6, Lcom/android/systemui/volume/VolumeDialogController;->STREAMTITLES:[I

    aget v6, v6, v2

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->name:Ljava/lang/String;

    .line 544
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 542
    .end local v1    # "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    .end local v2    # "stream":I
    :cond_0
    return-void
.end method

.method private updateStreamLevelW(II)Z
    .locals 6
    .param p1, "stream"    # I
    .param p2, "level"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 560
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->streamStateW(I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v0

    .line 561
    .local v0, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    iget v1, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    if-ne v1, p2, :cond_0

    return v4

    .line 562
    :cond_0
    iput p2, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    .line 563
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogController;->isLogWorthy(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 564
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/16 v3, 0xa

    invoke-static {v1, v3, v2}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 566
    :cond_1
    return v5
.end method

.method private updateStreamMuteW(IZ)Z
    .locals 6
    .param p1, "stream"    # I
    .param p2, "muted"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 583
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->streamStateW(I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v0

    .line 584
    .local v0, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    iget-boolean v1, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    if-ne v1, p2, :cond_0

    return v4

    .line 585
    :cond_0
    iput-boolean p2, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    .line 586
    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogController;->isLogWorthy(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 587
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    const/16 v3, 0xf

    invoke-static {v1, v3, v2}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 589
    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/android/systemui/volume/VolumeDialogController;->isRinger(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 590
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialogController;->updateRingerModeInternalW(I)Z

    .line 592
    :cond_2
    return v5
.end method

.method private updateStreamRoutedToBluetoothW(IZ)Z
    .locals 4
    .param p1, "stream"    # I
    .param p2, "routedToBluetooth"    # Z

    .prologue
    .line 551
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->streamStateW(I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v0

    .line 552
    .local v0, "ss":Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    iget-boolean v1, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->routedToBluetooth:Z

    if-ne v1, p2, :cond_0

    const/4 v1, 0x0

    return v1

    .line 553
    :cond_0
    iput-boolean p2, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->routedToBluetooth:Z

    .line 554
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateStreamRoutedToBluetoothW stream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 555
    const-string/jumbo v3, " routedToBluetooth="

    .line 554
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private updateZenModeW()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 623
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 624
    const-string/jumbo v2, "zen_mode"

    .line 623
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 625
    .local v0, "zen":I
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iget v1, v1, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    if-ne v1, v0, :cond_0

    return v4

    .line 626
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    iput v0, v1, Lcom/android/systemui/volume/VolumeDialogController$State;->zenMode:I

    .line 627
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mContext:Landroid/content/Context;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/16 v3, 0xd

    invoke-static {v1, v3, v2}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 628
    return v5
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/volume/VolumeDialogController$Callbacks;Landroid/os/Handler;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/volume/VolumeDialogController$Callbacks;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogController$C;->add(Lcom/android/systemui/volume/VolumeDialogController$Callbacks;Landroid/os/Handler;)V

    .line 259
    return-void
.end method

.method protected createMediaSessions(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/volume/MediaSessions$Callbacks;)Lcom/android/systemui/volume/MediaSessions;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "callbacks"    # Lcom/android/systemui/volume/MediaSessions$Callbacks;

    .prologue
    .line 231
    new-instance v0, Lcom/android/systemui/volume/MediaSessions;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/volume/MediaSessions;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/volume/MediaSessions$Callbacks;)V

    return-object v0
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogController$C;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController$C;->onDismissRequested(I)V

    .line 199
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/systemui/volume/VolumeDialogController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    const-string/jumbo v0, "  mEnabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 248
    const-string/jumbo v0, "  mDestroyed: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mDestroyed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 249
    const-string/jumbo v0, "  mVolumePolicy: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 250
    const-string/jumbo v0, "  mState: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController$State;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 252
    const-string/jumbo v0, "  mHasVibrator: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mHasVibrator:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 253
    const-string/jumbo v0, "  mRemoteStreams: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mMediaSessionsCallbacksW:Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;->-get0(Lcom/android/systemui/volume/VolumeDialogController$MediaSessionsCallbacks;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 255
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 256
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mMediaSessions:Lcom/android/systemui/volume/MediaSessions;

    invoke-virtual {v0, p2}, Lcom/android/systemui/volume/MediaSessions;->dump(Ljava/io/PrintWriter;)V

    .line 245
    return-void
.end method

.method public getAudioManager()Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    return-object v0
.end method

.method public getState()V
    .locals 2

    .prologue
    .line 268
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorker:Lcom/android/systemui/volume/VolumeDialogController$W;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController$W;->sendEmptyMessage(I)Z

    .line 267
    return-void
.end method

.method public hasVibrator()Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mHasVibrator:Z

    return v0
.end method

.method public isChangedFromKey()J
    .locals 2

    .prologue
    .line 452
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mFromKey:Z

    if-eqz v0, :cond_0

    .line 453
    const-wide/16 v0, 0x3e8

    return-wide v0

    .line 455
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public notifyVisible(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 273
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 274
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mIsVolumeDialogShowing:Z

    .line 275
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorker:Lcom/android/systemui/volume/VolumeDialogController$W;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const/16 v3, 0xc

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/systemui/volume/VolumeDialogController$W;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 272
    return-void

    :cond_1
    move v0, v1

    .line 275
    goto :goto_0
.end method

.method protected onUserActivityW()V
    .locals 0

    .prologue
    .line 337
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVolumeController:Lcom/android/systemui/volume/VolumeDialogController$VC;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setVolumeController(Landroid/media/IVolumeController;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {p0, v1}, Lcom/android/systemui/volume/VolumeDialogController;->setVolumePolicy(Landroid/media/VolumePolicy;)V

    .line 213
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mMediaSessions:Lcom/android/systemui/volume/MediaSessions;

    invoke-virtual {v1}, Lcom/android/systemui/volume/MediaSessions;->init()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 203
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v1, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Unable to set the volume controller"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    return-void

    .line 214
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 215
    .restart local v0    # "e":Ljava/lang/SecurityException;
    sget-object v1, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "No access to media sessions"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setActiveStream(I)V
    .locals 3
    .param p1, "stream"    # I

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorker:Lcom/android/systemui/volume/VolumeDialogController$W;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/systemui/volume/VolumeDialogController$W;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 310
    return-void
.end method

.method public setRingerMode(IZ)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "external"    # Z

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 286
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorker:Lcom/android/systemui/volume/VolumeDialogController$W;

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/systemui/volume/VolumeDialogController$W;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 284
    return-void

    .line 286
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStreamVolume(II)V
    .locals 1
    .param p1, "stream"    # I
    .param p2, "level"    # I

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 307
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogController;->onSetStreamVolumeW(II)V

    .line 304
    return-void
.end method

.method public setVolumePolicy(Landroid/media/VolumePolicy;)V
    .locals 3
    .param p1, "policy"    # Landroid/media/VolumePolicy;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVolumePolicy:Landroid/media/VolumePolicy;

    .line 221
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVolumePolicy:Landroid/media/VolumePolicy;

    if-nez v1, :cond_0

    return-void

    .line 223
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController;->mAudio:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogController;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setVolumePolicy(Landroid/media/VolumePolicy;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    sget-object v1, Lcom/android/systemui/volume/VolumeDialogController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "No volume policy api"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public userActivity()V
    .locals 2

    .prologue
    const/16 v1, 0xd

    .line 279
    iget-boolean v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorker:Lcom/android/systemui/volume/VolumeDialogController$W;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController$W;->removeMessages(I)V

    .line 281
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController;->mWorker:Lcom/android/systemui/volume/VolumeDialogController$W;

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController$W;->sendEmptyMessage(I)Z

    .line 278
    return-void
.end method
