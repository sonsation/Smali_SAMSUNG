.class public Lcom/android/server/media/MediaSessionRecord;
.super Ljava/lang/Object;
.source "MediaSessionRecord.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSessionRecord$1;,
        Lcom/android/server/media/MediaSessionRecord$ControllerStub;,
        Lcom/android/server/media/MediaSessionRecord$MessageHandler;,
        Lcom/android/server/media/MediaSessionRecord$SessionCb;,
        Lcom/android/server/media/MediaSessionRecord$SessionStub;
    }
.end annotation


# static fields
.field private static final ACTIVE_BUFFER:I = 0x7530

.field private static final DEBUG:Z

.field private static final MULTISOUND_ENABLED:Z

.field private static final OPTIMISTIC_VOLUME_TIMEOUT:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "MediaSessionRecord"

.field private static final UID_NOT_SET:I = -0x1


# instance fields
.field private mAudioAttrs:Landroid/media/AudioAttributes;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field private mCallingPackage:Ljava/lang/String;

.field private mCallingUid:I

.field private final mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

.field private final mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

.field private final mControllerCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/session/ISessionControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentVolume:I

.field private mDestroyed:Z

.field private mExtras:Landroid/os/Bundle;

.field private mFlags:J

.field private final mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

.field private mIsActive:Z

.field private mLastActiveTime:J

.field private mLaunchIntent:Landroid/app/PendingIntent;

.field private final mLock:Ljava/lang/Object;

.field private mMaxVolume:I

.field private mMediaButtonReceiver:Landroid/app/PendingIntent;

.field private mMetadata:Landroid/media/MediaMetadata;

.field private mOptimisticVolume:I

.field private final mOwnerPid:I

.field private final mOwnerUid:I

.field private final mPackageName:Ljava/lang/String;

.field private mPlaybackState:Landroid/media/session/PlaybackState;

.field private mQueue:Landroid/content/pm/ParceledListSlice;

.field private mQueueTitle:Ljava/lang/CharSequence;

.field private mRatingType:I

.field private final mService:Lcom/android/server/media/MediaSessionService;

.field private final mSession:Lcom/android/server/media/MediaSessionRecord$SessionStub;

.field private final mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

.field private final mTag:Ljava/lang/String;

.field private final mUserId:I

.field private mVolumeControlType:I

.field private mVolumeType:I


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/media/MediaSessionRecord;->MULTISOUND_ENABLED:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/server/media/MediaSessionRecord;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/media/MediaSessionRecord;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    return-wide v0
.end method

.method static synthetic -get12(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/media/MediaSessionRecord;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/media/MediaSessionRecord;)I
    .locals 1

    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    return v0
.end method

.method static synthetic -get16(Lcom/android/server/media/MediaSessionRecord;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiver:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/MediaMetadata;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/server/media/MediaSessionRecord;)I
    .locals 1

    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    return v0
.end method

.method static synthetic -get19(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioAttributes;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/server/media/MediaSessionRecord;)Landroid/content/pm/ParceledListSlice;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Landroid/content/pm/ParceledListSlice;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get23(Lcom/android/server/media/MediaSessionRecord;)I
    .locals 1

    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mRatingType:I

    return v0
.end method

.method static synthetic -get24(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    return-object v0
.end method

.method static synthetic -get25(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$SessionCb;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    return-object v0
.end method

.method static synthetic -get26(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get27(Lcom/android/server/media/MediaSessionRecord;)I
    .locals 1

    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    return v0
.end method

.method static synthetic -get28(Lcom/android/server/media/MediaSessionRecord;)I
    .locals 1

    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/AudioManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mCallingPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$ControllerStub;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/media/MediaSessionRecord;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/media/MediaSessionRecord;)I
    .locals 1

    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/media/MediaSessionRecord;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/media/MediaSessionRecord;Landroid/media/AudioAttributes;)Landroid/media/AudioAttributes;
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/media/MediaSessionRecord;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    return p1
.end method

.method static synthetic -set10(Lcom/android/server/media/MediaSessionRecord;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    return p1
.end method

.method static synthetic -set11(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/PlaybackState;)Landroid/media/session/PlaybackState;
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    return-object p1
.end method

.method static synthetic -set12(Lcom/android/server/media/MediaSessionRecord;Landroid/content/pm/ParceledListSlice;)Landroid/content/pm/ParceledListSlice;
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Landroid/content/pm/ParceledListSlice;

    return-object p1
.end method

.method static synthetic -set13(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic -set14(Lcom/android/server/media/MediaSessionRecord;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mRatingType:I

    return p1
.end method

.method static synthetic -set15(Lcom/android/server/media/MediaSessionRecord;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    return p1
.end method

.method static synthetic -set16(Lcom/android/server/media/MediaSessionRecord;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/media/MediaSessionRecord;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/media/MediaSessionRecord;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    return-wide p1
.end method

.method static synthetic -set4(Lcom/android/server/media/MediaSessionRecord;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/media/MediaSessionRecord;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/media/MediaSessionRecord;->mLastActiveTime:J

    return-wide p1
.end method

.method static synthetic -set6(Lcom/android/server/media/MediaSessionRecord;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/server/media/MediaSessionRecord;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/server/media/MediaSessionRecord;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiver:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic -set9(Lcom/android/server/media/MediaSessionRecord;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->getStateWithUpdatedPosition()Landroid/media/session/PlaybackState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionControllerCallback;)I
    .locals 1
    .param p1, "cb"    # Landroid/media/session/ISessionControllerCallback;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->getControllerCbIndexForCb(Landroid/media/session/ISessionControllerCallback;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->updateCallingPackage()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaSessionRecord;->pushEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushExtrasUpdate()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushMetadataUpdate()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushPlaybackStateUpdate()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushQueueTitleUpdate()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushQueueUpdate()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushSessionDestroyed()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/media/MediaSessionRecord;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    const-string/jumbo v0, "MediaSessionRecord"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    .line 132
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_AUDIO_SUPPORT_MULTI_DEVICE_SOUND"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaSessionRecord;->MULTISOUND_ENABLED:Z

    .line 65
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;Lcom/android/server/media/MediaSessionService;Landroid/os/Handler;)V
    .locals 4
    .param p1, "ownerPid"    # I
    .param p2, "ownerUid"    # I
    .param p3, "userId"    # I
    .param p4, "ownerPackageName"    # Ljava/lang/String;
    .param p5, "cb"    # Landroid/media/session/ISessionCallback;
    .param p6, "tag"    # Ljava/lang/String;
    .param p7, "service"    # Lcom/android/server/media/MediaSessionService;
    .param p8, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    .line 118
    iput v3, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    .line 119
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    .line 120
    iput v1, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    .line 121
    iput v1, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    .line 122
    iput v2, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 125
    iput-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    .line 126
    iput-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    .line 128
    iput v2, p0, Lcom/android/server/media/MediaSessionRecord;->mCallingUid:I

    .line 728
    new-instance v0, Lcom/android/server/media/MediaSessionRecord$1;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionRecord$1;-><init>(Lcom/android/server/media/MediaSessionRecord;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    .line 137
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerPid:I

    .line 138
    iput p2, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    .line 139
    iput p3, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    .line 140
    iput-object p4, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    .line 141
    iput-object p6, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    .line 142
    new-instance v0, Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionRecord$ControllerStub;-><init>(Lcom/android/server/media/MediaSessionRecord;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    .line 143
    new-instance v0, Lcom/android/server/media/MediaSessionRecord$SessionStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/MediaSessionRecord$SessionStub;-><init>(Lcom/android/server/media/MediaSessionRecord;Lcom/android/server/media/MediaSessionRecord$SessionStub;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSession:Lcom/android/server/media/MediaSessionRecord$SessionStub;

    .line 144
    new-instance v0, Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-direct {v0, p0, p5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;-><init>(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionCallback;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    .line 145
    iput-object p7, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    .line 146
    new-instance v0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    invoke-virtual {p8}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;-><init>(Lcom/android/server/media/MediaSessionRecord;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    .line 147
    invoke-virtual {p7}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManager:Landroid/media/AudioManager;

    .line 148
    const-class v0, Landroid/media/AudioManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 149
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    .line 136
    return-void
.end method

.method private getControllerCbIndexForCb(Landroid/media/session/ISessionControllerCallback;)I
    .locals 3
    .param p1, "cb"    # Landroid/media/session/ISessionControllerCallback;

    .prologue
    .line 692
    invoke-interface {p1}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 693
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 694
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/ISessionControllerCallback;

    invoke-interface {v2}, Landroid/media/session/ISessionControllerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 695
    return v1

    .line 693
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 698
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private getShortMetadataString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 495
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 496
    .local v1, "fields":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 498
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", description="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 495
    .end local v1    # "fields":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    invoke-virtual {v2}, Landroid/media/MediaMetadata;->size()I

    move-result v1

    .restart local v1    # "fields":I
    goto :goto_0

    .line 496
    :cond_1
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    invoke-virtual {v2}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object v0

    .local v0, "description":Landroid/media/MediaDescription;
    goto :goto_1
.end method

.method private getStateWithUpdatedPosition()Landroid/media/session/PlaybackState;
    .locals 20

    .prologue
    .line 659
    const-wide/16 v10, -0x1

    .line 660
    .local v10, "duration":J
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 661
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    .line 662
    .local v12, "state":Landroid/media/session/PlaybackState;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    const-string/jumbo v13, "android.media.metadata.DURATION"

    invoke-virtual {v3, v13}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 663
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    const-string/jumbo v13, "android.media.metadata.DURATION"

    invoke-virtual {v3, v13}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    :cond_0
    monitor-exit v6

    .line 666
    const/4 v9, 0x0

    .line 667
    .local v9, "result":Landroid/media/session/PlaybackState;
    if-eqz v12, :cond_3

    .line 668
    invoke-virtual {v12}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    const/4 v6, 0x3

    if-eq v3, v6, :cond_1

    .line 669
    invoke-virtual {v12}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    const/4 v6, 0x4

    if-ne v3, v6, :cond_4

    .line 671
    :cond_1
    :goto_0
    invoke-virtual {v12}, Landroid/media/session/PlaybackState;->getLastPositionUpdateTime()J

    move-result-wide v14

    .line 672
    .local v14, "updateTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 673
    .local v7, "currentTime":J
    const-wide/16 v16, 0x0

    cmp-long v3, v14, v16

    if-lez v3, :cond_3

    .line 674
    invoke-virtual {v12}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v3

    .line 675
    sub-long v16, v7, v14

    move-wide/from16 v0, v16

    long-to-float v6, v0

    .line 674
    mul-float/2addr v3, v6

    float-to-long v0, v3

    move-wide/from16 v16, v0

    .line 675
    invoke-virtual {v12}, Landroid/media/session/PlaybackState;->getPosition()J

    move-result-wide v18

    .line 674
    add-long v4, v16, v18

    .line 676
    .local v4, "position":J
    const-wide/16 v16, 0x0

    cmp-long v3, v10, v16

    if-ltz v3, :cond_5

    cmp-long v3, v4, v10

    if-lez v3, :cond_5

    .line 677
    move-wide v4, v10

    .line 681
    :cond_2
    :goto_1
    new-instance v2, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v2, v12}, Landroid/media/session/PlaybackState$Builder;-><init>(Landroid/media/session/PlaybackState;)V

    .line 682
    .local v2, "builder":Landroid/media/session/PlaybackState$Builder;
    invoke-virtual {v12}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    invoke-virtual {v12}, Landroid/media/session/PlaybackState;->getPlaybackSpeed()F

    move-result v6

    invoke-virtual/range {v2 .. v8}, Landroid/media/session/PlaybackState$Builder;->setState(IJFJ)Landroid/media/session/PlaybackState$Builder;

    .line 684
    invoke-virtual {v2}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v9

    .line 688
    .end local v2    # "builder":Landroid/media/session/PlaybackState$Builder;
    .end local v4    # "position":J
    .end local v7    # "currentTime":J
    .end local v9    # "result":Landroid/media/session/PlaybackState;
    .end local v14    # "updateTime":J
    :cond_3
    if-nez v9, :cond_6

    .end local v12    # "state":Landroid/media/session/PlaybackState;
    :goto_2
    return-object v12

    .line 660
    :catchall_0
    move-exception v3

    monitor-exit v6

    throw v3

    .line 670
    .restart local v9    # "result":Landroid/media/session/PlaybackState;
    .restart local v12    # "state":Landroid/media/session/PlaybackState;
    :cond_4
    invoke-virtual {v12}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    const/4 v6, 0x5

    if-ne v3, v6, :cond_3

    goto :goto_0

    .line 678
    .restart local v4    # "position":J
    .restart local v7    # "currentTime":J
    .restart local v14    # "updateTime":J
    :cond_5
    const-wide/16 v16, 0x0

    cmp-long v3, v4, v16

    if-gez v3, :cond_2

    .line 679
    const-wide/16 v4, 0x0

    goto :goto_1

    .end local v4    # "position":J
    .end local v7    # "currentTime":J
    .end local v9    # "result":Landroid/media/session/PlaybackState;
    .end local v14    # "updateTime":J
    :cond_6
    move-object v12, v9

    .line 688
    goto :goto_2
.end method

.method private postAdjustLocalVolume(IIILjava/lang/String;IZI)V
    .locals 10
    .param p1, "stream"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "useSuggested"    # Z
    .param p7, "previousFlagPlaySound"    # I

    .prologue
    .line 474
    iget-object v9, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    new-instance v0, Lcom/android/server/media/MediaSessionRecord$2;

    move-object v1, p0

    move/from16 v2, p6

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/media/MediaSessionRecord$2;-><init>(Lcom/android/server/media/MediaSessionRecord;ZIIILjava/lang/String;II)V

    invoke-virtual {v9, v0}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 473
    return-void
.end method

.method private pushEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 616
    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 617
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    monitor-exit v5

    .line 618
    return-void

    .line 620
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 621
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/ISessionControllerCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 623
    .local v0, "cb":Landroid/media/session/ISessionControllerCallback;
    :try_start_2
    invoke-interface {v0, p1, p2}, Landroid/media/session/ISessionControllerCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 620
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 627
    :catch_0
    move-exception v2

    .line 628
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v4, "MediaSessionRecord"

    const-string/jumbo v6, "unexpected exception in pushEvent."

    invoke-static {v4, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 616
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 624
    .restart local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .restart local v3    # "i":I
    :catch_1
    move-exception v1

    .line 625
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_4
    const-string/jumbo v4, "MediaSessionRecord"

    const-string/jumbo v6, "Removing dead callback in pushEvent."

    invoke-static {v4, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 626
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :cond_1
    monitor-exit v5

    .line 615
    return-void
.end method

.method private pushExtrasUpdate()V
    .locals 7

    .prologue
    .line 578
    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 579
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    monitor-exit v5

    .line 580
    return-void

    .line 582
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 583
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/ISessionControllerCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 585
    .local v0, "cb":Landroid/media/session/ISessionControllerCallback;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mExtras:Landroid/os/Bundle;

    invoke-interface {v0, v4}, Landroid/media/session/ISessionControllerCallback;->onExtrasChanged(Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 582
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 589
    :catch_0
    move-exception v2

    .line 590
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v4, "MediaSessionRecord"

    const-string/jumbo v6, "unexpected exception in pushExtrasUpdate."

    invoke-static {v4, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 578
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 586
    .restart local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .restart local v3    # "i":I
    :catch_1
    move-exception v1

    .line 587
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_4
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 588
    const-string/jumbo v4, "MediaSessionRecord"

    const-string/jumbo v6, "Removed dead callback in pushExtrasUpdate."

    invoke-static {v4, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :cond_1
    monitor-exit v5

    .line 577
    return-void
.end method

.method private pushMetadataUpdate()V
    .locals 7

    .prologue
    .line 521
    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 522
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    monitor-exit v5

    .line 523
    return-void

    .line 525
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 526
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/ISessionControllerCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 528
    .local v0, "cb":Landroid/media/session/ISessionControllerCallback;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mMetadata:Landroid/media/MediaMetadata;

    invoke-interface {v0, v4}, Landroid/media/session/ISessionControllerCallback;->onMetadataChanged(Landroid/media/MediaMetadata;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 525
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 532
    :catch_0
    move-exception v2

    .line 533
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v4, "MediaSessionRecord"

    const-string/jumbo v6, "unexpected exception in pushMetadataUpdate. "

    invoke-static {v4, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 521
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 529
    .restart local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .restart local v3    # "i":I
    :catch_1
    move-exception v1

    .line 530
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_4
    const-string/jumbo v4, "MediaSessionRecord"

    const-string/jumbo v6, "Removing dead callback in pushMetadataUpdate. "

    invoke-static {v4, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 531
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :cond_1
    monitor-exit v5

    .line 520
    return-void
.end method

.method private pushPlaybackStateUpdate()V
    .locals 7

    .prologue
    .line 502
    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 503
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    monitor-exit v5

    .line 504
    return-void

    .line 506
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 507
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/ISessionControllerCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 509
    .local v0, "cb":Landroid/media/session/ISessionControllerCallback;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-interface {v0, v4}, Landroid/media/session/ISessionControllerCallback;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 506
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 513
    :catch_0
    move-exception v2

    .line 514
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v4, "MediaSessionRecord"

    const-string/jumbo v6, "unexpected exception in pushPlaybackStateUpdate."

    invoke-static {v4, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 502
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 510
    .restart local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .restart local v3    # "i":I
    :catch_1
    move-exception v1

    .line 511
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_4
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 512
    const-string/jumbo v4, "MediaSessionRecord"

    const-string/jumbo v6, "Removed dead callback in pushPlaybackStateUpdate."

    invoke-static {v4, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :cond_1
    monitor-exit v5

    .line 501
    return-void
.end method

.method private pushQueueTitleUpdate()V
    .locals 7

    .prologue
    .line 559
    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 560
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    monitor-exit v5

    .line 561
    return-void

    .line 563
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 564
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/ISessionControllerCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 566
    .local v0, "cb":Landroid/media/session/ISessionControllerCallback;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    invoke-interface {v0, v4}, Landroid/media/session/ISessionControllerCallback;->onQueueTitleChanged(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 563
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 570
    :catch_0
    move-exception v2

    .line 571
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v4, "MediaSessionRecord"

    const-string/jumbo v6, "unexpected exception in pushQueueTitleUpdate."

    invoke-static {v4, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 559
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 567
    .restart local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .restart local v3    # "i":I
    :catch_1
    move-exception v1

    .line 568
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_4
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 569
    const-string/jumbo v4, "MediaSessionRecord"

    const-string/jumbo v6, "Removed dead callback in pushQueueTitleUpdate."

    invoke-static {v4, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :cond_1
    monitor-exit v5

    .line 558
    return-void
.end method

.method private pushQueueUpdate()V
    .locals 7

    .prologue
    .line 540
    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 541
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    monitor-exit v5

    .line 542
    return-void

    .line 544
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 545
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/ISessionControllerCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    .local v0, "cb":Landroid/media/session/ISessionControllerCallback;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Landroid/content/pm/ParceledListSlice;

    invoke-interface {v0, v4}, Landroid/media/session/ISessionControllerCallback;->onQueueChanged(Landroid/content/pm/ParceledListSlice;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 544
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 551
    :catch_0
    move-exception v2

    .line 552
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v4, "MediaSessionRecord"

    const-string/jumbo v6, "unexpected exception in pushQueueUpdate."

    invoke-static {v4, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 540
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 548
    .restart local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .restart local v3    # "i":I
    :catch_1
    move-exception v1

    .line 549
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_4
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 550
    const-string/jumbo v4, "MediaSessionRecord"

    const-string/jumbo v6, "Removed dead callback in pushQueueUpdate."

    invoke-static {v4, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :cond_1
    monitor-exit v5

    .line 539
    return-void
.end method

.method private pushSessionDestroyed()V
    .locals 7

    .prologue
    .line 635
    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 638
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    monitor-exit v5

    .line 639
    return-void

    .line 641
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 642
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/ISessionControllerCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 644
    .local v0, "cb":Landroid/media/session/ISessionControllerCallback;
    :try_start_2
    invoke-interface {v0}, Landroid/media/session/ISessionControllerCallback;->onSessionDestroyed()V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 641
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 648
    :catch_0
    move-exception v2

    .line 649
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v4, "MediaSessionRecord"

    const-string/jumbo v6, "unexpected exception in pushEvent."

    invoke-static {v4, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 635
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 645
    .restart local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .restart local v3    # "i":I
    :catch_1
    move-exception v1

    .line 646
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_4
    const-string/jumbo v4, "MediaSessionRecord"

    const-string/jumbo v6, "Removing dead callback in pushEvent."

    invoke-static {v4, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 647
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 653
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :cond_1
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v5

    .line 634
    return-void
.end method

.method private pushVolumeUpdate()V
    .locals 8

    .prologue
    .line 597
    iget-object v6, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 598
    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    monitor-exit v6

    .line 599
    return-void

    .line 601
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionRecord$ControllerStub;->getVolumeAttributes()Landroid/media/session/ParcelableVolumeInfo;

    move-result-object v4

    .line 602
    .local v4, "info":Landroid/media/session/ParcelableVolumeInfo;
    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 603
    iget-object v5, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/ISessionControllerCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 605
    .local v0, "cb":Landroid/media/session/ISessionControllerCallback;
    :try_start_2
    invoke-interface {v0, v4}, Landroid/media/session/ISessionControllerCallback;->onVolumeInfoChanged(Landroid/media/session/ParcelableVolumeInfo;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 602
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 608
    :catch_0
    move-exception v2

    .line 609
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v5, "MediaSessionRecord"

    const-string/jumbo v7, "Unexpected exception in pushVolumeUpdate. "

    invoke-static {v5, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 597
    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    .end local v4    # "info":Landroid/media/session/ParcelableVolumeInfo;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 606
    .restart local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .restart local v3    # "i":I
    .restart local v4    # "info":Landroid/media/session/ParcelableVolumeInfo;
    :catch_1
    move-exception v1

    .line 607
    .local v1, "e":Landroid/os/DeadObjectException;
    :try_start_4
    const-string/jumbo v5, "MediaSessionRecord"

    const-string/jumbo v7, "Removing dead callback in pushVolumeUpdate. "

    invoke-static {v5, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .end local v0    # "cb":Landroid/media/session/ISessionControllerCallback;
    .end local v1    # "e":Landroid/os/DeadObjectException;
    :cond_1
    monitor-exit v6

    .line 596
    return-void
.end method

.method private updateCallingPackage()V
    .locals 2

    .prologue
    .line 702
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/media/MediaSessionRecord;->updateCallingPackage(ILjava/lang/String;)V

    .line 701
    return-void
.end method

.method private updateCallingPackage(ILjava/lang/String;)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 706
    if-ne p1, v4, :cond_0

    .line 707
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 709
    :cond_0
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 710
    :try_start_0
    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mCallingUid:I

    if-eq v2, v4, :cond_1

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mCallingUid:I

    if-eq v2, p1, :cond_4

    .line 711
    :cond_1
    iput p1, p0, Lcom/android/server/media/MediaSessionRecord;->mCallingUid:I

    .line 712
    iput-object p2, p0, Lcom/android/server/media/MediaSessionRecord;->mCallingPackage:Ljava/lang/String;

    .line 713
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mCallingPackage:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    monitor-exit v3

    .line 714
    return-void

    .line 716
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 717
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_3

    monitor-exit v3

    .line 718
    return-void

    .line 720
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 721
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_4

    array-length v2, v1

    if-lez v2, :cond_4

    .line 722
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mCallingPackage:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "packages":[Ljava/lang/String;
    :cond_4
    monitor-exit v3

    .line 705
    return-void

    .line 709
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public adjustVolume(IILjava/lang/String;IZ)V
    .locals 9
    .param p1, "direction"    # I
    .param p2, "flags"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "useSuggested"    # Z

    .prologue
    const/4 v3, 0x0

    .line 249
    and-int/lit8 v7, p2, 0x4

    .line 250
    .local v7, "previousFlagPlaySound":I
    invoke-virtual {p0, v3}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackActive(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x10000

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaSessionRecord;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    :cond_0
    and-int/lit8 p2, p2, -0x5

    .line 253
    :cond_1
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 255
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-static {v0}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v1

    .local v1, "stream":I
    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 256
    invoke-direct/range {v0 .. v7}, Lcom/android/server/media/MediaSessionRecord;->postAdjustLocalVolume(IIILjava/lang/String;IZI)V

    .line 248
    .end local v1    # "stream":I
    :cond_2
    :goto_0
    return-void

    .line 259
    :cond_3
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    if-nez v0, :cond_4

    .line 261
    return-void

    .line 263
    :cond_4
    const/16 v0, 0x65

    if-eq p1, v0, :cond_5

    .line 264
    const/16 v0, -0x64

    if-ne p1, v0, :cond_6

    .line 266
    :cond_5
    const-string/jumbo v0, "MediaSessionRecord"

    const-string/jumbo v2, "Muting remote playback is not supported"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-void

    .line 265
    :cond_6
    const/16 v0, 0x64

    if-eq p1, v0, :cond_5

    .line 269
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->adjustVolume(I)V

    .line 271
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    if-gez v0, :cond_8

    iget v8, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    .line 272
    .local v8, "volumeBefore":I
    :goto_1
    add-int v0, v8, p1

    iput v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 273
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 274
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 275
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 276
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    if-eq v8, v0, :cond_7

    .line 277
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V

    .line 279
    :cond_7
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0, p2, p0}, Lcom/android/server/media/MediaSessionService;->notifyRemoteVolumeChanged(ILcom/android/server/media/MediaSessionRecord;)V

    .line 281
    sget-boolean v0, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 282
    const-string/jumbo v0, "MediaSessionRecord"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Adjusted optimistic volume to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " max is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 283
    iget v3, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    .line 282
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 271
    .end local v8    # "volumeBefore":I
    :cond_8
    iget v8, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    goto :goto_1
.end method

.method public binderDied()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0, p0}, Lcom/android/server/media/MediaSessionService;->sessionDied(Lcom/android/server/media/MediaSessionRecord;)V

    .line 410
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 439
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 441
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, "indent":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ownerPid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", ownerUid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 443
    const-string/jumbo v3, ", userId="

    .line 442
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 443
    iget v3, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    .line 442
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 444
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 445
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "launchIntent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mLaunchIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 446
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "mediaButtonReceiver="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiver:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 447
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "active="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 448
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "rating type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/media/MediaSessionRecord;->mRatingType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 450
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "controllers: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mControllerCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 451
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    if-nez v3, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "audioAttrs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "volumeType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", controlType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 454
    const-string/jumbo v2, ", max="

    .line 453
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 454
    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    .line 453
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 454
    const-string/jumbo v2, ", current="

    .line 453
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 454
    iget v2, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    .line 453
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "metadata:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->getShortMetadataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "queueTitle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mQueueTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 457
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Landroid/content/pm/ParceledListSlice;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 456
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 438
    return-void

    .line 451
    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 457
    :cond_1
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mQueue:Landroid/content/pm/ParceledListSlice;

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1
.end method

.method public getAudioAttributes()Landroid/media/AudioAttributes;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public getCallback()Landroid/media/session/ISessionCallback;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->-get0(Lcom/android/server/media/MediaSessionRecord$SessionCb;)Landroid/media/session/ISessionCallback;

    move-result-object v0

    return-object v0
.end method

.method public getControllerBinder()Landroid/media/session/ISessionController;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mController:Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    return-object v0
.end method

.method public getCurrentVolume()I
    .locals 1

    .prologue
    .line 392
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    return v0
.end method

.method public getFlags()J
    .locals 2

    .prologue
    .line 203
    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    return-wide v0
.end method

.method public getMaxVolume()I
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    return v0
.end method

.method public getMediaButtonReceiver()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMediaButtonReceiver:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getOptimisticVolume()I
    .locals 1

    .prologue
    .line 402
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    return v0
.end method

.method public getOwnerUid()I
    .locals 1

    .prologue
    .line 467
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOwnerUid:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaybackType()I
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    return v0
.end method

.method public getSessionBinder()Landroid/media/session/ISession;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSession:Lcom/android/server/media/MediaSessionRecord$SessionStub;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mUserId:I

    return v0
.end method

.method public getVolumeControl()I
    .locals 1

    .prologue
    .line 372
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    return v0
.end method

.method public hasFlag(I)Z
    .locals 4
    .param p1, "flag"    # I

    .prologue
    .line 213
    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    int-to-long v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActive()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 322
    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mIsActive:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPlaybackActive(Z)Z
    .locals 9
    .param p1, "includeRecentlyActive"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 334
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    if-nez v4, :cond_0

    move v2, v3

    .line 335
    .local v2, "state":I
    :goto_0
    invoke-static {v2}, Landroid/media/session/MediaSession;->isActiveState(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 336
    return v8

    .line 334
    .end local v2    # "state":I
    :cond_0
    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v4}, Landroid/media/session/PlaybackState;->getState()I

    move-result v2

    goto :goto_0

    .line 338
    .restart local v2    # "state":I
    :cond_1
    if-eqz p1, :cond_2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 339
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/media/MediaSessionRecord;->mLastActiveTime:J

    sub-long v0, v4, v6

    .line 340
    .local v0, "inactiveTime":J
    const-wide/16 v4, 0x7530

    cmp-long v4, v0, v4

    if-gez v4, :cond_2

    .line 341
    return v8

    .line 344
    .end local v0    # "inactiveTime":J
    :cond_2
    return v3
.end method

.method public isSystemPriority()Z
    .locals 4

    .prologue
    .line 232
    iget-wide v0, p0, Lcom/android/server/media/MediaSessionRecord;->mFlags:J

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTransportControlEnabled()Z
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaSessionRecord;->hasFlag(I)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 419
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 420
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 421
    return-void

    .line 423
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionRecord;->mDestroyed:Z

    .line 424
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 418
    return-void

    .line 419
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public sendMediaButton(Landroid/view/KeyEvent;ILandroid/os/ResultReceiver;ILjava/lang/String;)V
    .locals 1
    .param p1, "ke"    # Landroid/view/KeyEvent;
    .param p2, "sequenceId"    # I
    .param p3, "cb"    # Landroid/os/ResultReceiver;
    .param p4, "uid"    # I
    .param p5, "packageName"    # Ljava/lang/String;

    .prologue
    .line 434
    invoke-direct {p0, p4, p5}, Lcom/android/server/media/MediaSessionRecord;->updateCallingPackage(ILjava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->sendMediaButton(Landroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z

    .line 433
    return-void
.end method

.method public setVolumeTo(IILjava/lang/String;I)V
    .locals 7
    .param p1, "value"    # I
    .param p2, "flags"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .prologue
    const/4 v3, 0x0

    .line 289
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 290
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioAttrs:Landroid/media/AudioAttributes;

    invoke-static {v0}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v1

    .line 291
    .local v1, "stream":I
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/media/AudioManagerInternal;->setStreamVolumeForUid(IIILjava/lang/String;I)V

    .line 288
    .end local v1    # "stream":I
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mVolumeControlType:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    .line 295
    return-void

    .line 297
    :cond_2
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 298
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mSessionCb:Lcom/android/server/media/MediaSessionRecord$SessionCb;

    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->setVolumeTo(I)V

    .line 300
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    if-gez v0, :cond_4

    iget v6, p0, Lcom/android/server/media/MediaSessionRecord;->mCurrentVolume:I

    .line 301
    .local v6, "volumeBefore":I
    :goto_1
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .line 302
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 303
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mHandler:Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord;->mClearOptimisticVolumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 304
    iget v0, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    if-eq v6, v0, :cond_3

    .line 305
    invoke-direct {p0}, Lcom/android/server/media/MediaSessionRecord;->pushVolumeUpdate()V

    .line 307
    :cond_3
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord;->mService:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0, p2, p0}, Lcom/android/server/media/MediaSessionService;->notifyRemoteVolumeChanged(ILcom/android/server/media/MediaSessionRecord;)V

    .line 309
    sget-boolean v0, Lcom/android/server/media/MediaSessionRecord;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 310
    const-string/jumbo v0, "MediaSessionRecord"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Set optimistic volume to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " max is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 311
    iget v3, p0, Lcom/android/server/media/MediaSessionRecord;->mMaxVolume:I

    .line 310
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 300
    .end local v6    # "volumeBefore":I
    :cond_4
    iget v6, p0, Lcom/android/server/media/MediaSessionRecord;->mOptimisticVolume:I

    .restart local v6    # "volumeBefore":I
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
