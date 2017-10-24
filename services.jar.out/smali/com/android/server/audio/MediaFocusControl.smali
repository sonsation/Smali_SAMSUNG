.class public Lcom/android/server/audio/MediaFocusControl;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;,
        Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;,
        Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;
    }
.end annotation


# static fields
.field private static final MSG_DELAY_FOR_MYSPACE_EFFECT:I = 0x1

.field private static final MULTISOUND_ENABLED:Z

.field private static final PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.android.server.telecom"

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MediaFocusControl"

.field private static final mAudioFocusLock:Ljava/lang/Object;

.field private static final mRingingLock:Ljava/lang/Object;


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mAudioService:Lcom/android/server/audio/AudioService;

.field private mCallClientId:Ljava/lang/String;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mDevice:I

.field private mDumpEffectType:I

.field private mDumpStreamType:I

.field private final mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

.field private mFocusFollowers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/audiopolicy/IAudioPolicyCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/server/audio/FocusRequester;",
            ">;"
        }
    .end annotation
.end field

.field private mIsMySpaceEffectFocus:Z

.field private mIsRinging:Z

.field private mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mMultiFocusStack:Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

.field private final mMySpaceManager:Landroid/media/MySpaceManager;

.field private mNotifyFocusOwnerOnDuck:Z

.field private mRilState:I

.field private mSimCount:I

.field private mSplitSoundCb:Landroid/os/IBinder;

.field private mSplitSoundFR:Lcom/android/server/audio/FocusRequester;

.field private mSplitSoundService:Z

.field private mTmgr:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/audio/MediaFocusControl;->MULTISOUND_ENABLED:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/audio/MediaFocusControl;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/audio/MediaFocusControl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/audio/MediaFocusControl;)Ljava/util/Stack;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/audio/MediaFocusControl;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/MediaFocusControl;->mRilState:I

    return v0
.end method

.method static synthetic -get7()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mRingingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/audio/MediaFocusControl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mSplitSoundService:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/audio/MediaFocusControl;Ljava/util/Stack;)Ljava/util/Stack;
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/audio/MediaFocusControl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/MediaFocusControl;->mIsRinging:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/audio/MediaFocusControl;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/audio/MediaFocusControl;->mRilState:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/audio/MediaFocusControl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/audio/MediaFocusControl;->mSplitSoundService:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntryForClient(Landroid/os/IBinder;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 93
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_AUDIO_SUPPORT_MULTI_DEVICE_SOUND"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/audio/MediaFocusControl;->MULTISOUND_ENABLED:Z

    .line 192
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    .line 193
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/MediaFocusControl;->mRingingLock:Ljava/lang/Object;

    .line 68
    return-void
.end method

.method protected constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/audio/AudioService;)V
    .locals 4
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "cntxt"    # Landroid/content/Context;
    .param p3, "as"    # Lcom/android/server/audio/AudioService;

    .prologue
    const/4 v3, 0x2

    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-boolean v1, p0, Lcom/android/server/audio/MediaFocusControl;->mIsMySpaceEffectFocus:Z

    .line 77
    iput-boolean v1, p0, Lcom/android/server/audio/MediaFocusControl;->mSplitSoundService:Z

    .line 78
    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mSplitSoundFR:Lcom/android/server/audio/FocusRequester;

    .line 79
    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mSplitSoundCb:Landroid/os/IBinder;

    .line 81
    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mCallClientId:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mTmgr:Landroid/telephony/TelephonyManager;

    .line 84
    iput v2, p0, Lcom/android/server/audio/MediaFocusControl;->mRilState:I

    .line 85
    iput v1, p0, Lcom/android/server/audio/MediaFocusControl;->mSimCount:I

    .line 86
    new-instance v0, Landroid/media/MySpaceManager;

    invoke-direct {v0}, Landroid/media/MySpaceManager;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMySpaceManager:Landroid/media/MySpaceManager;

    .line 90
    iput-boolean v1, p0, Lcom/android/server/audio/MediaFocusControl;->mIsRinging:Z

    .line 458
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    .line 466
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    .line 882
    iput v2, p0, Lcom/android/server/audio/MediaFocusControl;->mDumpEffectType:I

    .line 883
    iput v2, p0, Lcom/android/server/audio/MediaFocusControl;->mDumpStreamType:I

    .line 107
    sget-boolean v0, Lcom/android/server/audio/MediaFocusControl;->MULTISOUND_ENABLED:Z

    if-eqz v0, :cond_1

    .line 108
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/MediaFocusControl;->mDevice:I

    .line 111
    iget v0, p0, Lcom/android/server/audio/MediaFocusControl;->mDevice:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_0

    .line 112
    const-string/jumbo v0, "MediaFocusControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "force change device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/audio/MediaFocusControl;->mDevice:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iput v3, p0, Lcom/android/server/audio/MediaFocusControl;->mDevice:I

    .line 116
    :cond_0
    new-instance v0, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    invoke-direct {v0, p0}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;-><init>(Lcom/android/server/audio/MediaFocusControl;)V

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    .line 117
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    iget v1, p0, Lcom/android/server/audio/MediaFocusControl;->mDevice:I

    invoke-virtual {v0, v1}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->getFocusStack(I)Ljava/util/Stack;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 123
    :goto_0
    new-instance v0, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    .line 124
    iput-object p2, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    .line 125
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mContentResolver:Landroid/content/ContentResolver;

    .line 126
    iput-object p3, p0, Lcom/android/server/audio/MediaFocusControl;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 128
    invoke-virtual {p0, p2}, Lcom/android/server/audio/MediaFocusControl;->registerPhoneStateListener(Landroid/content/Context;)V

    .line 130
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    .line 105
    return-void

    .line 119
    :cond_1
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    goto :goto_0
.end method

.method private addMySpaceEffectDelay()V
    .locals 9

    .prologue
    .line 588
    sget-object v8, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v8

    .line 589
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMySpaceManager:Landroid/media/MySpaceManager;

    invoke-virtual {v0}, Landroid/media/MySpaceManager;->checkEnableCondition()Z

    move-result v0

    if-nez v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mEventHandler:Lcom/android/server/audio/MediaFocusControl$MediaEventHandler;

    .line 594
    sget-object v5, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    .line 591
    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 592
    const/4 v3, 0x0

    .line 593
    const/4 v4, 0x0

    .line 594
    const/16 v6, 0x3e8

    .line 591
    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/MediaFocusControl;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    :try_start_1
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v8

    .line 587
    return-void

    .line 588
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0

    .line 597
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method private canReassignAudioFocus()Z
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-direct {p0, v0}, Lcom/android/server/audio/MediaFocusControl;->isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    const/4 v0, 0x0

    return v0

    .line 380
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private dumpFocusStack(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 250
    const-string/jumbo v3, "\nAudio Focus stack entries (last is top of stack):"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 251
    sget-object v4, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v4

    .line 260
    :try_start_0
    sget-boolean v3, Lcom/android/server/audio/MediaFocusControl;->MULTISOUND_ENABLED:Z

    if-eqz v3, :cond_3

    .line 261
    const-string/jumbo v3, "\nMultiFocusStack:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "size:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    invoke-virtual {v5}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "device:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/server/audio/MediaFocusControl;->mDevice:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    invoke-virtual {v3}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 266
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    invoke-virtual {v3, v1}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->valueAt(I)Ljava/util/Stack;

    move-result-object v0

    .line 267
    .local v0, "focusStack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/server/audio/FocusRequester;>;"
    const-string/jumbo v3, "------------------------------"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 268
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "device = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    invoke-virtual {v5, v1}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 270
    .local v2, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 271
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v3, p1}, Lcom/android/server/audio/FocusRequester;->dump(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 251
    .end local v0    # "focusStack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/server/audio/FocusRequester;>;"
    .end local v1    # "i":I
    .end local v2    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 265
    .restart local v0    # "focusStack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/server/audio/FocusRequester;>;"
    .restart local v1    # "i":I
    .restart local v2    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 274
    .end local v0    # "focusStack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/server/audio/FocusRequester;>;"
    .end local v2    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_1
    :try_start_1
    const-string/jumbo v3, "------------------------------"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "i":I
    :cond_2
    monitor-exit v4

    .line 283
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\n Notify on duck: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 249
    return-void

    .line 276
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 277
    .restart local v2    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 278
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v3, p1}, Lcom/android/server/audio/FocusRequester;->dump(Ljava/io/PrintWriter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private dumpMSEffect(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  MyspaceEffect:   -- effectType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 890
    iget v1, p0, Lcom/android/server/audio/MediaFocusControl;->mDumpEffectType:I

    .line 889
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 891
    const-string/jumbo v1, "  -- streamType:"

    .line 889
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 891
    iget v1, p0, Lcom/android/server/audio/MediaFocusControl;->mDumpStreamType:I

    .line 889
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 888
    return-void
.end method

.method private getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;
    .locals 1
    .param p1, "subId"    # I
    .param p2, "slotId"    # I

    .prologue
    .line 918
    new-instance v0, Lcom/android/server/audio/MediaFocusControl$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/audio/MediaFocusControl$2;-><init>(Lcom/android/server/audio/MediaFocusControl;I)V

    .line 965
    .local v0, "mListener":Landroid/telephony/PhoneStateListener;
    return-object v0
.end method

.method private isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z
    .locals 1
    .param p1, "fr"    # Lcom/android/server/audio/FocusRequester;

    .prologue
    .line 384
    const-string/jumbo v0, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {p1, v0}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->isLockedFocusOwner()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private notifyTopOfAudioFocusStack()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->canReassignAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/FocusRequester;->handleFocusGain(I)V

    .line 214
    :cond_0
    return-void
.end method

.method private propagateFocusLossFromGainToAll(I)V
    .locals 7
    .param p1, "focusGain"    # I

    .prologue
    .line 1047
    const-string/jumbo v4, "MediaFocusControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "propagateFocusLossFromGainToAll, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    invoke-virtual {v4}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 1050
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    invoke-virtual {v4, v2}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->valueAt(I)Ljava/util/Stack;

    move-result-object v0

    .line 1051
    .local v0, "focusStack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/server/audio/FocusRequester;>;"
    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1052
    .local v3, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1053
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 1054
    .local v1, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v1, p1}, Lcom/android/server/audio/FocusRequester;->handleExternalFocusGain(I)V

    goto :goto_1

    .line 1049
    .end local v1    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1046
    .end local v0    # "focusStack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/server/audio/FocusRequester;>;"
    .end local v3    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_1
    return-void
.end method

.method private propagateFocusLossFromGain_syncAf(I)V
    .locals 2
    .param p1, "focusGain"    # I

    .prologue
    .line 230
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 231
    .local v0, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/FocusRequester;->handleExternalFocusGain(I)V

    goto :goto_0

    .line 227
    :cond_0
    return-void
.end method

.method private pushBelowLockedFocusOwners(Lcom/android/server/audio/FocusRequester;)I
    .locals 5
    .param p1, "nfr"    # Lcom/android/server/audio/FocusRequester;

    .prologue
    .line 397
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v1

    .line 398
    .local v1, "lastLockedFocusOwnerIndex":I
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_1

    .line 399
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    invoke-direct {p0, v2}, Lcom/android/server/audio/MediaFocusControl;->isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 400
    move v1, v0

    .line 398
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 403
    :cond_1
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 405
    const-string/jumbo v2, "MediaFocusControl"

    const-string/jumbo v3, "No exclusive focus owner found in propagateFocusLossFromGain_syncAf()"

    .line 406
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    .line 405
    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 408
    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf(I)V

    .line 409
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    const/4 v2, 0x1

    return v2

    .line 412
    :cond_2
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2, p1, v1}, Ljava/util/Stack;->insertElementAt(Ljava/lang/Object;I)V

    .line 413
    const/4 v2, 0x2

    return v2
.end method

.method private removeFocusStackEntry(Ljava/lang/String;ZZ)V
    .locals 6
    .param p1, "clientToRemove"    # Ljava/lang/String;
    .param p2, "signal"    # Z
    .param p3, "notifyFocusFollowers"    # Z

    .prologue
    .line 297
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v3, p1}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 300
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 301
    .local v1, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 302
    if-eqz p3, :cond_0

    .line 303
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v0

    .line 304
    .local v0, "afi":Landroid/media/AudioFocusInfo;
    invoke-virtual {v0}, Landroid/media/AudioFocusInfo;->clearLossReceived()V

    .line 305
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    .line 307
    .end local v0    # "afi":Landroid/media/AudioFocusInfo;
    :cond_0
    if-eqz p2, :cond_1

    .line 309
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    .line 295
    .end local v1    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_1
    return-void

    .line 316
    :cond_2
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 317
    .local v2, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 318
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 319
    .restart local v1    # "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v1, p1}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 320
    const-string/jumbo v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AudioFocus  removeFocusStackEntry(): removing entry for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 323
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    goto :goto_0
.end method

.method private removeFocusStackEntryForClient(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 336
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 337
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v3, p1}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v1

    .line 340
    :goto_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 341
    .local v2, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 342
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    .line 343
    .local v0, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v0, p1}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 344
    const-string/jumbo v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AudioFocus  removeFocusStackEntry(): removing entry for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.sec.android.app.voicenote"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 347
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.sec.android.app.voicerecorder"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 346
    if-eqz v3, :cond_2

    .line 348
    :cond_1
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 349
    const-string/jumbo v3, "MediaFocusControl"

    const-string/jumbo v4, "FORCE_NONE for Media(Voice recorder FC)."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.sec.android.app.dmb"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 352
    const-string/jumbo v3, "audioParam;DMB_FORCE_SPEAKER=off"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 355
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 336
    .end local v0    # "fr":Lcom/android/server/audio/FocusRequester;
    .end local v2    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_4
    const/4 v1, 0x0

    .local v1, "isTopOfStackForClientToRemove":Z
    goto :goto_0

    .line 359
    .end local v1    # "isTopOfStackForClientToRemove":Z
    .restart local v2    # "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_5
    if-eqz v1, :cond_6

    .line 362
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    .line 334
    :cond_6
    return-void
.end method

.method private selectFocusStack(I)Ljava/util/Stack;
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Stack",
            "<",
            "Lcom/android/server/audio/FocusRequester;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1033
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2, p1}, Lcom/android/server/audio/AudioService;->getAppDevice(I)I

    move-result v0

    .line 1034
    .local v0, "appDevice":I
    const/4 v1, 0x0

    .line 1036
    .local v1, "device":I
    const-string/jumbo v2, "MediaFocusControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "selectFocusStack, uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", appDevice = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mDevice = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/audio/MediaFocusControl;->mDevice:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    if-eqz v0, :cond_0

    iget v2, p0, Lcom/android/server/audio/MediaFocusControl;->mDevice:I

    if-ne v0, v2, :cond_1

    .line 1039
    :cond_0
    const/4 v1, 0x0

    .line 1043
    :goto_0
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    invoke-virtual {v2, v1}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->getFocusStack(I)Ljava/util/Stack;

    move-result-object v2

    return-object v2

    .line 1041
    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 4
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .prologue
    .line 158
    if-nez p2, :cond_1

    .line 159
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 164
    :cond_0
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v2, p6

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 156
    return-void

    .line 160
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    return-void
.end method


# virtual methods
.method protected abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;)I
    .locals 8
    .param p1, "fl"    # Landroid/media/IAudioFocusDispatcher;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "aa"    # Landroid/media/AudioAttributes;

    .prologue
    const/4 v7, 0x1

    .line 806
    const-string/jumbo v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " AudioFocus  abandonAudioFocus() from uid/pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 807
    const-string/jumbo v5, "/"

    .line 806
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 807
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 806
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 808
    const-string/jumbo v5, " clientId="

    .line 806
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :try_start_0
    sget-object v4, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 813
    :try_start_1
    sget-boolean v3, Lcom/android/server/audio/MediaFocusControl;->MULTISOUND_ENABLED:Z

    if-eqz v3, :cond_4

    .line 814
    const/4 v1, 0x0

    .line 815
    .local v1, "fr":Lcom/android/server/audio/FocusRequester;
    if-nez p3, :cond_0

    .line 816
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, p2, v6}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->getFocusRequester(ILjava/lang/String;Z)Lcom/android/server/audio/FocusRequester;

    move-result-object v1

    .line 817
    .local v1, "fr":Lcom/android/server/audio/FocusRequester;
    if-eqz v1, :cond_0

    .line 818
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p3

    .line 821
    .end local v1    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mCallClientId:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v3

    if-eq v3, v7, :cond_1

    invoke-virtual {p3}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v3

    const/4 v5, 0x4

    if-ne v3, v5, :cond_3

    .line 822
    :cond_1
    const-string/jumbo v3, "MediaFocusControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "abandonAudioFocus, mCallClientId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mCallClientId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    invoke-virtual {v3}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 824
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    invoke-virtual {v3, v2}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->valueAt(I)Ljava/util/Stack;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 825
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v3, p2}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 823
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 827
    :cond_2
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->notifyTopOfAudioFocusStack()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 811
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4

    throw v3
    :try_end_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 863
    :catch_0
    move-exception v0

    .line 867
    .local v0, "cme":Ljava/util/ConcurrentModificationException;
    const-string/jumbo v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "FATAL EXCEPTION AudioFocus  abandonAudioFocus() caused "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    .line 871
    .end local v0    # "cme":Ljava/util/ConcurrentModificationException;
    :goto_2
    return v7

    .line 831
    :cond_3
    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/audio/MediaFocusControl;->selectFocusStack(I)Ljava/util/Stack;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 838
    :cond_4
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-boolean v3, v3, Lcom/android/server/audio/AudioService;->mHMTDocked:Z

    .line 836
    if-nez v3, :cond_5

    .line 841
    iget-boolean v3, p0, Lcom/android/server/audio/MediaFocusControl;->mIsMySpaceEffectFocus:Z

    if-eqz v3, :cond_5

    .line 842
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v3, p2}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v3

    .line 841
    if-eqz v3, :cond_5

    .line 843
    const-string/jumbo v3, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 841
    if-eqz v3, :cond_5

    .line 844
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMySpaceManager:Landroid/media/MySpaceManager;

    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mMySpaceManager:Landroid/media/MySpaceManager;

    iget-object v5, v5, Landroid/media/MySpaceManager;->mMusicAttributes:Landroid/media/AudioAttributes;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/media/MySpaceManager;->playMySpaceEffect(Landroid/media/AudioAttributes;I)V

    .line 845
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/audio/MediaFocusControl;->mIsMySpaceEffectFocus:Z

    .line 846
    const-string/jumbo v3, "MediaFocusControl"

    const-string/jumbo v5, "AudioFocus playMySpaceEffect MUSIC FADE IN"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :cond_5
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mCallClientId:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 852
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mCallClientId:Ljava/lang/String;

    .line 855
    :cond_6
    const/4 v3, 0x1

    const/4 v5, 0x1

    invoke-direct {p0, p2, v3, v5}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 858
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mSplitSoundFR:Lcom/android/server/audio/FocusRequester;

    .line 859
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mSplitSoundCb:Landroid/os/IBinder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catch Ljava/util/ConcurrentModificationException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2
.end method

.method addFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 6
    .param p1, "ff"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .prologue
    .line 469
    if-nez p1, :cond_0

    .line 470
    return-void

    .line 472
    :cond_0
    sget-object v4, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v4

    .line 473
    const/4 v0, 0x0

    .line 474
    .local v0, "found":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pcb$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 475
    .local v1, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-interface {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 476
    const/4 v0, 0x1

    .line 480
    .end local v1    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_2
    if-eqz v0, :cond_3

    monitor-exit v4

    .line 481
    return-void

    .line 483
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    invoke-virtual {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyCurrentFocusAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    .line 468
    return-void

    .line 472
    .end local v2    # "pcb$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method protected checkSplitSoundAudioFocus()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 1014
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mSplitSoundFR:Lcom/android/server/audio/FocusRequester;

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mSplitSoundFR:Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 1016
    .local v1, "aa":Landroid/media/AudioAttributes;
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mSplitSoundFR:Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v2

    .line 1017
    .local v2, "durationHint":I
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mSplitSoundFR:Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v5

    .line 1018
    .local v5, "clientId":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mSplitSoundFR:Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1019
    .local v6, "callingPackageName":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mSplitSoundFR:Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getGrantFlags()I

    move-result v7

    .line 1021
    .local v7, "flags":I
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mSplitSoundCb:Landroid/os/IBinder;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/audio/MediaFocusControl;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;I)I

    .line 1023
    iput-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mSplitSoundFR:Lcom/android/server/audio/FocusRequester;

    .line 1024
    iput-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mSplitSoundCb:Landroid/os/IBinder;

    .line 1013
    .end local v1    # "aa":Landroid/media/AudioAttributes;
    .end local v2    # "durationHint":I
    .end local v5    # "clientId":Ljava/lang/String;
    .end local v6    # "callingPackageName":Ljava/lang/String;
    .end local v7    # "flags":I
    :cond_0
    return-void
.end method

.method protected discardAudioFocusOwner()V
    .locals 3

    .prologue
    .line 201
    sget-object v2, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    .line 205
    .local v0, "exFocusOwner":Lcom/android/server/audio/FocusRequester;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(I)V

    .line 206
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "exFocusOwner":Lcom/android/server/audio/FocusRequester;
    :cond_0
    monitor-exit v2

    .line 200
    return-void

    .line 201
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\nMediaFocusControl dump time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 136
    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->dumpFocusStack(Ljava/io/PrintWriter;)V

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->dumpMSEffect(Ljava/io/PrintWriter;)V

    .line 134
    return-void
.end method

.method protected getCurrentAudioFocus()I
    .locals 2

    .prologue
    .line 560
    sget-object v1, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 561
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 564
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 560
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected getCurrentAudioFocusPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 570
    sget-object v1, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 571
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    .line 574
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getPackageName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 570
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected getGainRequestForCurrentAudioFocus()I
    .locals 2

    .prologue
    .line 907
    sget-object v1, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 908
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 909
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 911
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 907
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getUidForDevice(I)I
    .locals 5
    .param p1, "device"    # I

    .prologue
    .line 1173
    const/4 v1, -0x1

    .line 1176
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    invoke-virtual {v2, p1}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->getFocusStack(I)Ljava/util/Stack;

    move-result-object v0

    .line 1178
    .local v0, "focusStack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/server/audio/FocusRequester;>;"
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1179
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->getCallingUid()I

    move-result v1

    .line 1181
    :cond_0
    const-string/jumbo v2, "MediaFocusControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUidForDevice, uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    return v1
.end method

.method protected getUserIdForCurrentAudioFocus()I
    .locals 2

    .prologue
    .line 898
    sget-object v1, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 899
    :try_start_0
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    const/4 v0, -0x1

    monitor-exit v1

    return v0

    .line 902
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getUserId()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 898
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method mustNotifyFocusOwnerOnDuck()Z
    .locals 1

    .prologue
    .line 464
    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    return v0
.end method

.method notifyExtPolicyCurrentFocusAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 2
    .param p1, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .prologue
    .line 507
    move-object v0, p1

    .line 508
    .local v0, "pcb2":Landroid/media/audiopolicy/IAudioPolicyCallback;
    new-instance v1, Lcom/android/server/audio/MediaFocusControl$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/audio/MediaFocusControl$1;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 526
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 506
    return-void
.end method

.method notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V
    .locals 6
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "requestResult"    # I

    .prologue
    .line 533
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pcb$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 536
    .local v1, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusGrant(Landroid/media/AudioFocusInfo;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 537
    :catch_0
    move-exception v0

    .line 538
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t call notifyAudioFocusGrant() on IAudioPolicyCallback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 539
    invoke-interface {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 538
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 532
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_0
    return-void
.end method

.method notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V
    .locals 6
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "wasDispatched"    # Z

    .prologue
    .line 548
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pcb$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 551
    .local v1, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusLoss(Landroid/media/AudioFocusInfo;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 552
    :catch_0
    move-exception v0

    .line 553
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t call notifyAudioFocusLoss() on IAudioPolicyCallback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 554
    invoke-interface {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 553
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 547
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_0
    return-void
.end method

.method protected registerPhoneStateListener(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x21

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 969
    const-string/jumbo v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mTmgr:Landroid/telephony/TelephonyManager;

    .line 971
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    iput v3, p0, Lcom/android/server/audio/MediaFocusControl;->mSimCount:I

    .line 973
    iget v3, p0, Lcom/android/server/audio/MediaFocusControl;->mSimCount:I

    if-nez v3, :cond_0

    .line 974
    const-string/jumbo v3, "MediaFocusControl"

    const-string/jumbo v4, "do not register PhoneStateListener on NO_SIM state"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    return-void

    .line 978
    :cond_0
    iget v3, p0, Lcom/android/server/audio/MediaFocusControl;->mSimCount:I

    new-array v3, v3, [Landroid/telephony/PhoneStateListener;

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    .line 980
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/server/audio/MediaFocusControl;->mSimCount:I

    if-ge v0, v3, :cond_6

    .line 981
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 982
    .local v2, "subIdtemp":[I
    if-eqz v2, :cond_1

    .line 983
    aget v1, v2, v5

    .line 984
    .local v1, "subId":I
    const-string/jumbo v3, "MediaFocusControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "registerPhoneStateListener mSimCount: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/audio/MediaFocusControl;->mSimCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , subId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    if-lez v1, :cond_2

    .line 986
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1, v0}, Lcom/android/server/audio/MediaFocusControl;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v6

    aput-object v6, v3, v0

    .line 987
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mTmgr:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v6, v6, v0

    invoke-virtual {v3, v6, v8}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 980
    .end local v1    # "subId":I
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 989
    .restart local v1    # "subId":I
    :cond_2
    iget v3, p0, Lcom/android/server/audio/MediaFocusControl;->mSimCount:I

    if-nez v3, :cond_3

    move v6, v4

    :goto_2
    if-nez v0, :cond_4

    move v3, v4

    :goto_3
    and-int/2addr v3, v6

    if-eqz v3, :cond_5

    .line 990
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-direct {p0, v1, v0}, Lcom/android/server/audio/MediaFocusControl;->getPhoneStateListener(II)Landroid/telephony/PhoneStateListener;

    move-result-object v6

    aput-object v6, v3, v0

    .line 991
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mTmgr:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v6, v6, v0

    invoke-virtual {v3, v6, v8}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_1

    :cond_3
    move v6, v5

    .line 989
    goto :goto_2

    :cond_4
    move v3, v5

    goto :goto_3

    .line 993
    :cond_5
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aput-object v9, v3, v0

    goto :goto_1

    .line 968
    .end local v1    # "subId":I
    .end local v2    # "subIdtemp":[I
    :cond_6
    return-void
.end method

.method removeFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 5
    .param p1, "ff"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .prologue
    .line 490
    if-nez p1, :cond_0

    .line 491
    return-void

    .line 493
    :cond_0
    sget-object v3, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v3

    .line 494
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "pcb$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 495
    .local v0, "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    invoke-interface {v0}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 496
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "pcb":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :cond_2
    monitor-exit v3

    .line 489
    return-void

    .line 493
    .end local v1    # "pcb$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method protected requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 21
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .param p2, "focusChangeHint"    # I
    .param p3, "cb"    # Landroid/os/IBinder;
    .param p4, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p5, "clientId"    # Ljava/lang/String;
    .param p6, "callingPackageName"    # Ljava/lang/String;
    .param p7, "flags"    # I

    .prologue
    .line 606
    const-string/jumbo v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " AudioFocus  requestAudioFocus() from uid/pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 607
    const-string/jumbo v5, "/"

    .line 606
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 607
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 606
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 608
    const-string/jumbo v5, " clientId="

    .line 606
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 609
    const-string/jumbo v5, " req="

    .line 606
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 610
    const-string/jumbo v5, " flags=0x"

    .line 606
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 610
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 606
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 611
    const-string/jumbo v5, " contentType="

    .line 606
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 611
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v5

    .line 606
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-interface/range {p3 .. p3}, Landroid/os/IBinder;->pingBinder()Z

    move-result v3

    if-nez v3, :cond_0

    .line 614
    const-string/jumbo v3, "MediaFocusControl"

    const-string/jumbo v4, " AudioFocus DOA client for requestAudioFocus(), aborting."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const/4 v3, 0x0

    return v3

    .line 618
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/16 v5, 0x20

    move-object/from16 v0, p6

    invoke-virtual {v3, v5, v4, v0}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 620
    const/4 v3, 0x0

    return v3

    .line 623
    :cond_1
    sget-object v20, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v20

    .line 625
    :try_start_0
    sget-boolean v3, Lcom/android/server/audio/MediaFocusControl;->MULTISOUND_ENABLED:Z

    if-eqz v3, :cond_3

    .line 626
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mCallClientId:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 627
    const-string/jumbo v3, "MediaFocusControl"

    const-string/jumbo v4, "requestAudioFocus failed while call"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    const/4 v3, 0x0

    monitor-exit v20

    return v3

    .line 631
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/audio/MediaFocusControl;->selectFocusStack(I)Ljava/util/Stack;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 635
    :cond_3
    const/4 v15, 0x0

    .line 637
    .local v15, "focusGrantDelayed":Z
    const-string/jumbo v3, "com.android.server.telecom"

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 638
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/audio/MediaFocusControl;->mCallClientId:Ljava/lang/String;

    .line 641
    :cond_4
    const-string/jumbo v3, "com.android.server.telecom"

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_7

    .line 642
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-boolean v3, v3, Lcom/android/server/audio/AudioService;->mSplitSound:Z

    .line 641
    if-eqz v3, :cond_8

    .line 644
    const-string/jumbo v3, "AudioFocus_For_Phone_Ring_And_Calls"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 645
    new-instance v2, Lcom/android/server/audio/FocusRequester;

    .line 646
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    const/4 v9, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p7

    move-object/from16 v6, p4

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    move-object/from16 v12, p0

    .line 645
    invoke-direct/range {v2 .. v12}, Lcom/android/server/audio/FocusRequester;-><init>(Landroid/media/AudioAttributes;IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Ljava/lang/String;ILcom/android/server/audio/MediaFocusControl;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mSplitSoundFR:Lcom/android/server/audio/FocusRequester;

    .line 647
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/audio/MediaFocusControl;->mSplitSoundCb:Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 649
    :cond_6
    const/4 v3, 0x1

    monitor-exit v20

    return v3

    .line 641
    :cond_7
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_5

    .line 653
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/MediaFocusControl;->canReassignAudioFocus()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-nez v3, :cond_a

    .line 654
    and-int/lit8 v3, p7, 0x1

    if-nez v3, :cond_9

    .line 655
    const/4 v3, 0x0

    monitor-exit v20

    return v3

    .line 660
    :cond_9
    const/4 v15, 0x1

    .line 667
    :cond_a
    :try_start_3
    new-instance v9, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v9, v0, v1}, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 669
    .local v9, "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    const/4 v3, 0x0

    :try_start_4
    move-object/from16 v0, p3

    invoke-interface {v0, v9, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 679
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-boolean v3, v3, Lcom/android/server/audio/AudioService;->mHMTDocked:Z

    .line 677
    if-nez v3, :cond_b

    .line 682
    const-string/jumbo v3, "AudioFocus_For_Phone_Ring_And_Calls"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 683
    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 684
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mMySpaceManager:Landroid/media/MySpaceManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/audio/MediaFocusControl;->mMySpaceManager:Landroid/media/MySpaceManager;

    iget-object v4, v4, Landroid/media/MySpaceManager;->mMusicAttributes:Landroid/media/AudioAttributes;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/media/MySpaceManager;->playMySpaceEffect(Landroid/media/AudioAttributes;I)V

    .line 685
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/audio/MediaFocusControl;->mIsMySpaceEffectFocus:Z

    .line 686
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/MediaFocusControl;->addMySpaceEffectDelay()V

    .line 687
    const-string/jumbo v3, "MediaFocusControl"

    const-string/jumbo v4, "AudioFocus playMySpaceEffect MUSIC FADE OUT"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_b
    const/4 v3, 0x2

    move/from16 v0, p2

    if-eq v0, v3, :cond_c

    const/4 v3, 0x3

    move/from16 v0, p2

    if-eq v0, v3, :cond_c

    const/4 v3, 0x4

    move/from16 v0, p2

    if-eq v0, v3, :cond_c

    .line 695
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const v4, 0x186a0

    div-int v19, v3, v4

    .line 697
    .local v19, "userId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v3}, Lcom/android/server/audio/FocusRequester;->getUserId()I

    move-result v3

    move/from16 v0, v19

    if-eq v3, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v3}, Lcom/android/server/audio/FocusRequester;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 698
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/MediaFocusControl;->discardAudioFocusOwner()V

    .line 703
    .end local v19    # "userId":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 706
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/audio/FocusRequester;

    .line 707
    .local v16, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v3

    move/from16 v0, p2

    if-ne v3, v0, :cond_e

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/audio/FocusRequester;->getGrantFlags()I

    move-result v3

    move/from16 v0, p7

    if-ne v3, v0, :cond_e

    .line 710
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v9, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 711
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v3

    .line 712
    const/4 v4, 0x1

    .line 711
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 716
    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_d

    .line 717
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/MediaFocusControl;->resetFocusLossReceived()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 720
    :cond_d
    const/4 v3, 0x1

    monitor-exit v20

    return v3

    .line 670
    .end local v16    # "fr":Lcom/android/server/audio/FocusRequester;
    :catch_0
    move-exception v14

    .line 672
    .local v14, "e":Landroid/os/RemoteException;
    :try_start_6
    const-string/jumbo v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AudioFocus  requestAudioFocus() could not link to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " binder death"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 673
    const/4 v3, 0x0

    monitor-exit v20

    return v3

    .line 724
    .end local v14    # "e":Landroid/os/RemoteException;
    .restart local v16    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_e
    if-nez v15, :cond_f

    .line 725
    :try_start_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 727
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 732
    .end local v16    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_f
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 742
    sget-boolean v3, Lcom/android/server/audio/MediaFocusControl;->MULTISOUND_ENABLED:Z

    if-eqz v3, :cond_13

    .line 743
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v3, v4, v0, v5}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->getFocusRequester(ILjava/lang/String;Z)Lcom/android/server/audio/FocusRequester;

    move-result-object v16

    .line 744
    .restart local v16    # "fr":Lcom/android/server/audio/FocusRequester;
    if-eqz v16, :cond_10

    .line 745
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/audio/FocusRequester;->resetFocusLossReceived()V

    .line 747
    :cond_10
    if-nez v16, :cond_12

    new-instance v2, Lcom/android/server/audio/FocusRequester;

    .line 748
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p7

    move-object/from16 v6, p4

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    move-object/from16 v12, p0

    .line 747
    invoke-direct/range {v2 .. v12}, Lcom/android/server/audio/FocusRequester;-><init>(Landroid/media/AudioAttributes;IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Ljava/lang/String;ILcom/android/server/audio/MediaFocusControl;)V

    .line 750
    .local v2, "nfr":Lcom/android/server/audio/FocusRequester;
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioService;->getAppDevice(I)I

    move-result v13

    .line 751
    .local v13, "appDevice":I
    invoke-virtual {v2, v13}, Lcom/android/server/audio/FocusRequester;->setDevice(I)V

    .line 758
    .end local v13    # "appDevice":I
    .end local v16    # "fr":Lcom/android/server/audio/FocusRequester;
    :goto_1
    if-eqz v15, :cond_14

    .line 761
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/audio/MediaFocusControl;->pushBelowLockedFocusOwners(Lcom/android/server/audio/FocusRequester;)I

    move-result v18

    .line 762
    .local v18, "requestResult":I
    if-eqz v18, :cond_11

    .line 763
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_11
    monitor-exit v20

    .line 765
    return v18

    .line 748
    .end local v2    # "nfr":Lcom/android/server/audio/FocusRequester;
    .end local v18    # "requestResult":I
    .restart local v16    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_12
    move-object/from16 v2, v16

    .restart local v2    # "nfr":Lcom/android/server/audio/FocusRequester;
    goto :goto_0

    .line 753
    .end local v2    # "nfr":Lcom/android/server/audio/FocusRequester;
    .end local v16    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_13
    :try_start_8
    new-instance v2, Lcom/android/server/audio/FocusRequester;

    .line 754
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p7

    move-object/from16 v6, p4

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    move-object/from16 v12, p0

    .line 753
    invoke-direct/range {v2 .. v12}, Lcom/android/server/audio/FocusRequester;-><init>(Landroid/media/AudioAttributes;IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Ljava/lang/String;ILcom/android/server/audio/MediaFocusControl;)V

    .restart local v2    # "nfr":Lcom/android/server/audio/FocusRequester;
    goto :goto_1

    .line 768
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_15

    .line 769
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf(I)V

    .line 772
    :cond_15
    sget-boolean v3, Lcom/android/server/audio/MediaFocusControl;->MULTISOUND_ENABLED:Z

    if-eqz v3, :cond_17

    .line 773
    const-string/jumbo v3, "com.android.server.telecom"

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_17

    .line 774
    :cond_16
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGainToAll(I)V

    .line 778
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v3

    .line 781
    const/4 v4, 0x1

    .line 780
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit v20

    .line 786
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const v4, 0x186a0

    div-int v19, v3, v4

    .line 787
    .restart local v19    # "userId":I
    const/16 v3, 0x64

    move/from16 v0, v19

    if-lt v0, v3, :cond_18

    .line 788
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "persona"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/samsung/android/knox/SemPersonaManager;

    .line 789
    .local v17, "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    if-eqz v17, :cond_18

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getStateManager(I)Lcom/samsung/android/knox/SemPersonaManager$StateManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/SemPersonaManager$StateManager;->inState(Lcom/samsung/android/knox/SemPersonaState;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 798
    .end local v17    # "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    :cond_18
    :goto_2
    const/4 v3, 0x1

    return v3

    .line 623
    .end local v2    # "nfr":Lcom/android/server/audio/FocusRequester;
    .end local v9    # "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    .end local v15    # "focusGrantDelayed":Z
    .end local v19    # "userId":I
    :catchall_0
    move-exception v3

    monitor-exit v20

    throw v3

    .line 790
    .restart local v2    # "nfr":Lcom/android/server/audio/FocusRequester;
    .restart local v9    # "afdh":Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    .restart local v15    # "focusGrantDelayed":Z
    .restart local v17    # "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    .restart local v19    # "userId":I
    :cond_19
    const-string/jumbo v3, "MediaFocusControl"

    const-string/jumbo v4, "Persona is locked"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v3}, Lcom/android/server/audio/FocusRequester;->getUserId()I

    move-result v3

    move/from16 v0, v19

    if-ne v3, v0, :cond_18

    .line 792
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/MediaFocusControl;->discardAudioFocusOwner()V

    goto :goto_2
.end method

.method protected resetFocusLossReceived()V
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 580
    invoke-direct {p0}, Lcom/android/server/audio/MediaFocusControl;->canReassignAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->resetFocusLossReceived()V

    .line 578
    :cond_0
    return-void
.end method

.method public setDevice(I)V
    .locals 12
    .param p1, "device"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1107
    and-int/lit8 v7, p1, 0xd

    if-eqz v7, :cond_1

    .line 1108
    const-string/jumbo v7, "MediaFocusControl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "force change device "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    const/4 p1, 0x2

    .line 1114
    :cond_0
    :goto_0
    iget v5, p0, Lcom/android/server/audio/MediaFocusControl;->mDevice:I

    .line 1115
    .local v5, "oldDevice":I
    move v4, p1

    .line 1117
    .local v4, "newDevice":I
    if-ne v5, p1, :cond_2

    .line 1118
    const-string/jumbo v7, "MediaFocusControl"

    const-string/jumbo v8, "setDevice, device doesn\'t change"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    return-void

    .line 1110
    .end local v4    # "newDevice":I
    .end local v5    # "oldDevice":I
    :cond_1
    and-int/lit16 v7, p1, 0x3f0

    if-eqz v7, :cond_0

    .line 1111
    const/16 p1, 0x80

    goto :goto_0

    .line 1122
    .restart local v4    # "newDevice":I
    .restart local v5    # "oldDevice":I
    :cond_2
    const-string/jumbo v7, "MediaFocusControl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setDevice, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    iget-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    invoke-virtual {v7, v10}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->getFocusStack(I)Ljava/util/Stack;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 1127
    const-string/jumbo v7, "MediaFocusControl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "move from default to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    iget-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    invoke-virtual {v7, v5}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->getFocusStack(I)Ljava/util/Stack;

    move-result-object v0

    .line 1130
    .local v0, "focusStack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/server/audio/FocusRequester;>;"
    iget-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1131
    .local v6, "stackIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1132
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 1133
    .local v1, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->getDevice()I

    move-result v7

    if-ne v7, v5, :cond_3

    .line 1134
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 1135
    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1140
    .end local v1    # "fr":Lcom/android/server/audio/FocusRequester;
    :cond_4
    const-string/jumbo v7, "MediaFocusControl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "move from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " to default"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    const-string/jumbo v3, ""

    .line 1143
    .local v3, "hasActiveTrack":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    invoke-virtual {v7, v4}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->getFocusStack(I)Ljava/util/Stack;

    move-result-object v0

    .line 1145
    iget-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 1146
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "hasActiveTrackUID="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v7}, Lcom/android/server/audio/FocusRequester;->getCallingUid()I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1148
    :cond_5
    const/4 v2, 0x0

    .line 1150
    .local v2, "frTop":Lcom/android/server/audio/FocusRequester;
    const-string/jumbo v7, "TRUE"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1151
    iget-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "frTop":Lcom/android/server/audio/FocusRequester;
    check-cast v2, Lcom/android/server/audio/FocusRequester;

    .line 1157
    :cond_6
    :goto_2
    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1158
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1159
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 1160
    .restart local v1    # "fr":Lcom/android/server/audio/FocusRequester;
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 1161
    iget-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v7, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1153
    .end local v1    # "fr":Lcom/android/server/audio/FocusRequester;
    .restart local v2    # "frTop":Lcom/android/server/audio/FocusRequester;
    :cond_7
    iget-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mCallClientId:Ljava/lang/String;

    if-nez v7, :cond_6

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 1154
    invoke-direct {p0, v11}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf(I)V

    goto :goto_2

    .line 1164
    .end local v2    # "frTop":Lcom/android/server/audio/FocusRequester;
    :cond_8
    if-eqz v2, :cond_9

    .line 1165
    invoke-direct {p0, v11}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf(I)V

    .line 1166
    iget-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v7, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    :cond_9
    iput p1, p0, Lcom/android/server/audio/MediaFocusControl;->mDevice:I

    .line 1105
    return-void
.end method

.method protected setDuckingInExtPolicyAvailable(Z)V
    .locals 1
    .param p1, "available"    # Z

    .prologue
    .line 461
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    .line 460
    return-void

    .line 461
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected unregisterAudioFocusClient(Ljava/lang/String;)V
    .locals 3
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 876
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 877
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 875
    return-void

    .line 876
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected unregisterPhoneStateListener(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1001
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mTmgr:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    .line 1002
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/server/audio/MediaFocusControl;->mSimCount:I

    if-ge v0, v1, :cond_1

    .line 1003
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 1004
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mTmgr:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mMSimPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1005
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/audio/MediaFocusControl;->mRilState:I

    .line 1006
    const-string/jumbo v1, "MediaFocusControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "call unregisterPhoneStateListener : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1000
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public updateFocusRequester(I)V
    .locals 12
    .param p1, "uid"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1060
    const-string/jumbo v7, "MediaFocusControl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateFocusRequester, uid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    iget-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    invoke-virtual {v7, p1}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->getFocusRequester(I)Ljava/util/ArrayList;

    move-result-object v6

    .line 1064
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/audio/FocusRequester;>;"
    const/4 v2, 0x0

    .line 1065
    .local v2, "fr":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 1066
    return-void

    .line 1068
    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1070
    .end local v2    # "fr":Lcom/android/server/audio/FocusRequester;
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/FocusRequester;>;"
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1071
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    .line 1072
    .local v2, "fr":Lcom/android/server/audio/FocusRequester;
    const-string/jumbo v7, "MediaFocusControl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "focusRequester.getClientId()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    iget-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v7, p1}, Lcom/android/server/audio/AudioService;->getAppDevice(I)I

    move-result v0

    .line 1075
    .local v0, "appDevice":I
    invoke-virtual {v2, v0}, Lcom/android/server/audio/FocusRequester;->setDevice(I)V

    .line 1079
    if-eqz v0, :cond_2

    iget v7, p0, Lcom/android/server/audio/MediaFocusControl;->mDevice:I

    if-ne v0, v7, :cond_4

    .line 1080
    :cond_2
    iget-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    invoke-virtual {v7, v10}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->getFocusStack(I)Ljava/util/Stack;

    move-result-object v1

    .line 1084
    .local v1, "focusStack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/server/audio/FocusRequester;>;"
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "hasActiveTrackUID="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1085
    .local v4, "hasActiveTrack":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1087
    .local v3, "frTop":Lcom/android/server/audio/FocusRequester;
    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1088
    const-string/jumbo v7, "TRUE"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1089
    const-string/jumbo v7, "MediaFocusControl"

    const-string/jumbo v8, "pin app playing"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v7, v11}, Lcom/android/server/audio/FocusRequester;->handleExternalFocusGain(I)V

    .line 1098
    .end local v3    # "frTop":Lcom/android/server/audio/FocusRequester;
    :cond_3
    :goto_2
    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    if-eqz v3, :cond_1

    .line 1101
    invoke-virtual {v1, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1082
    .end local v1    # "focusStack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/server/audio/FocusRequester;>;"
    .end local v4    # "hasActiveTrack":Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;

    invoke-virtual {v7, v0}, Lcom/android/server/audio/MediaFocusControl$MultiFocusStack;->getFocusStack(I)Ljava/util/Stack;

    move-result-object v1

    .restart local v1    # "focusStack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/server/audio/FocusRequester;>;"
    goto :goto_1

    .line 1092
    .restart local v3    # "frTop":Lcom/android/server/audio/FocusRequester;
    .restart local v4    # "hasActiveTrack":Ljava/lang/String;
    :cond_5
    const-string/jumbo v7, "MediaFocusControl"

    const-string/jumbo v8, "pin app paused"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    invoke-virtual {v2, v11}, Lcom/android/server/audio/FocusRequester;->handleExternalFocusGain(I)V

    .line 1094
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "frTop":Lcom/android/server/audio/FocusRequester;
    check-cast v3, Lcom/android/server/audio/FocusRequester;

    .local v3, "frTop":Lcom/android/server/audio/FocusRequester;
    goto :goto_2

    .line 1059
    .end local v0    # "appDevice":I
    .end local v1    # "focusStack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/android/server/audio/FocusRequester;>;"
    .end local v2    # "fr":Lcom/android/server/audio/FocusRequester;
    .end local v3    # "frTop":Lcom/android/server/audio/FocusRequester;
    .end local v4    # "hasActiveTrack":Ljava/lang/String;
    :cond_6
    return-void
.end method
