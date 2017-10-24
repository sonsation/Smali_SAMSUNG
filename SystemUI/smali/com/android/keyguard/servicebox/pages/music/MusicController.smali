.class public Lcom/android/keyguard/servicebox/pages/music/MusicController;
.super Ljava/lang/Object;
.source "MusicController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/servicebox/pages/music/MusicController$1;,
        Lcom/android/keyguard/servicebox/pages/music/MusicController$2;,
        Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/keyguard/servicebox/pages/music/MusicController;


# instance fields
.field private mAppLabelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHeadsetReceiver:Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver;

.field private mIsListeningStarted:Z

.field private mIsOOBETextNeed:Z

.field private mLastMediaMetadata:Landroid/media/MediaMetadata;

.field private mLastMusicAppName:Ljava/lang/String;

.field private mLastMusicLyrics:Ljava/lang/String;

.field private mLastPackageName:Ljava/lang/String;

.field private mLastPlaybackState:Landroid/media/session/PlaybackState;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private mMediaPlaybackStateChangeListener:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

.field private mMonitor:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

.field private mMusicActivityLaunchPendingIntent:Landroid/app/PendingIntent;

.field private mOnHeadsetListener:Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver$OnHeadsetListener;

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mIsOOBETextNeed:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Landroid/media/MediaMetadata;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastMusicAppName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastMusicLyrics:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mMonitor:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/servicebox/pages/music/MusicController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mIsOOBETextNeed:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/servicebox/pages/music/MusicController;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/keyguard/servicebox/pages/music/MusicController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastMusicAppName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/keyguard/servicebox/pages/music/MusicController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastMusicLyrics:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/keyguard/servicebox/pages/music/MusicController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/keyguard/servicebox/pages/music/MusicController;Landroid/media/session/PlaybackState;)Landroid/media/session/PlaybackState;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastPlaybackState:Landroid/media/session/PlaybackState;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/keyguard/servicebox/pages/music/MusicController;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mMusicActivityLaunchPendingIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/servicebox/pages/music/MusicController;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->loadMusicAppLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/servicebox/pages/music/MusicController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->loadLastInformation()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/servicebox/pages/music/MusicController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->writeMusicPageToSetting()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->sInstance:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    .line 44
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mListeners:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mAppLabelMap:Ljava/util/HashMap;

    .line 58
    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastPlaybackState:Landroid/media/session/PlaybackState;

    .line 59
    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    .line 60
    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mMusicActivityLaunchPendingIntent:Landroid/app/PendingIntent;

    .line 61
    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastMusicLyrics:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastPackageName:Ljava/lang/String;

    .line 63
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastMusicAppName:Ljava/lang/String;

    .line 65
    iput-boolean v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mIsOOBETextNeed:Z

    .line 66
    iput-boolean v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mIsListeningStarted:Z

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLock:Ljava/lang/Object;

    .line 293
    new-instance v0, Lcom/android/keyguard/servicebox/pages/music/MusicController$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/music/MusicController$1;-><init>(Lcom/android/keyguard/servicebox/pages/music/MusicController;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mMediaPlaybackStateChangeListener:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    .line 412
    new-instance v0, Lcom/android/keyguard/servicebox/pages/music/MusicController$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/music/MusicController$2;-><init>(Lcom/android/keyguard/servicebox/pages/music/MusicController;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mOnHeadsetListener:Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver$OnHeadsetListener;

    .line 72
    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mContext:Landroid/content/Context;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mPm:Landroid/content/pm/PackageManager;

    .line 75
    new-instance v0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    invoke-direct {v0, p1}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mMonitor:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    .line 76
    new-instance v0, Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mOnHeadsetListener:Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver$OnHeadsetListener;

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver;-><init>(Landroid/content/Context;Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver$OnHeadsetListener;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mHeadsetReceiver:Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver;

    .line 78
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->loadLastInformation()V

    .line 71
    return-void
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/music/MusicController;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    sget-object v0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->sInstance:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    if-nez v0, :cond_1

    .line 104
    const-class v1, Lcom/android/keyguard/servicebox/pages/music/MusicController;

    monitor-enter v1

    .line 105
    :try_start_0
    sget-object v0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->sInstance:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/android/keyguard/servicebox/pages/music/MusicController;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->sInstance:Lcom/android/keyguard/servicebox/pages/music/MusicController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 111
    :cond_1
    sget-object v0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->sInstance:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    return-object v0

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private loadLastInformation()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    .line 82
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "servicebox_music_last_pkg"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastPackageName:Ljava/lang/String;

    .line 84
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastPackageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mIsOOBETextNeed:Z

    .line 86
    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastMusicAppName:Ljava/lang/String;

    .line 87
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    .line 88
    return-void

    .line 91
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastPackageName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->loadMusicAppLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastMusicAppName:Ljava/lang/String;

    .line 92
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "servicebox_music_last_title"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "lastMusicTitle":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "servicebox_music_last_artist"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "lastMusicArtist":Ljava/lang/String;
    new-instance v0, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v0}, Landroid/media/MediaMetadata$Builder;-><init>()V

    .line 96
    .local v0, "builder":Landroid/media/MediaMetadata$Builder;
    const-string/jumbo v3, "android.media.metadata.TITLE"

    invoke-virtual {v0, v3, v2}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    .line 97
    const-string/jumbo v3, "android.media.metadata.ARTIST"

    invoke-virtual {v0, v3, v1}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    .line 99
    invoke-virtual {v0}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    .line 81
    return-void
.end method

.method private loadMusicAppLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 267
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    const-string/jumbo v2, ""

    return-object v2

    .line 271
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mAppLabelMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 272
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mAppLabelMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 275
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mPm:Landroid/content/pm/PackageManager;

    if-nez v2, :cond_2

    .line 276
    const-string/jumbo v2, ""

    return-object v2

    .line 280
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mPm:Landroid/content/pm/PackageManager;

    const/16 v4, 0x80

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 281
    .local v0, "appName":Ljava/lang/String;
    const-string/jumbo v2, "MusicController_LOCK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loadMusicAppLabel() packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", label = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 283
    const-string/jumbo v2, ""

    return-object v2

    .line 285
    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mAppLabelMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    return-object v0

    .line 287
    .end local v0    # "appName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 288
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 290
    const-string/jumbo v2, ""

    return-object v2
.end method

.method private startMusicStateListening()V
    .locals 3

    .prologue
    .line 243
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 244
    :try_start_0
    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mIsListeningStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 245
    return-void

    .line 248
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mIsListeningStarted:Z

    .line 249
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mMonitor:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mMediaPlaybackStateChangeListener:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->setOnPlaybackStateChangedListener(Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;)V

    .line 250
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mHeadsetReceiver:Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver;->registerReceiver()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 242
    return-void

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private stopMusicStateListening()V
    .locals 2

    .prologue
    .line 255
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 256
    :try_start_0
    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mIsListeningStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit v1

    .line 257
    return-void

    .line 260
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mMonitor:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->removeOnPlaybackStateChangedListener()V

    .line 261
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mHeadsetReceiver:Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver;->unregisterReceiver()V

    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mIsListeningStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 254
    return-void

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private writeMusicPageToSetting()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    const-string/jumbo v1, "servicebox_music"

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/SettingsHelper;->setServiceBoxSharePageName(Ljava/lang/String;)V

    .line 238
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;

    .prologue
    .line 115
    if-nez p1, :cond_0

    return-void

    .line 117
    :cond_0
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 118
    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ref$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 119
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .local v0, "l":Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;
    if-ne v0, p1, :cond_1

    monitor-exit v4

    .line 122
    return-void

    .line 126
    .end local v0    # "l":Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;>;"
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mListeners:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    .line 128
    invoke-virtual {p0, p1}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->requestCacheData(Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;)V

    .line 130
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 131
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->startMusicStateListening()V

    .line 114
    :cond_3
    return-void

    .line 117
    .end local v2    # "ref$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public isOOBETextNeed()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mIsOOBETextNeed:Z

    return v0
.end method

.method public launchMusicApp(Lcom/android/keyguard/servicebox/KeyguardStatusCallback;)Z
    .locals 8
    .param p1, "callback"    # Lcom/android/keyguard/servicebox/KeyguardStatusCallback;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 194
    const-string/jumbo v3, "MusicController_LOCK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "launchMusicApp() pk = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    if-nez p1, :cond_0

    .line 196
    return v6

    .line 200
    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mMonitor:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object v1

    .line 201
    .local v1, "pi":Landroid/app/PendingIntent;
    if-eqz v1, :cond_1

    .line 202
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 203
    .local v2, "sessionIntent":Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 204
    const-string/jumbo v3, "MusicController_LOCK"

    const-string/jumbo v4, "launch session intent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-interface {p1, v2, v6}, Lcom/android/keyguard/servicebox/KeyguardStatusCallback;->startActivity(Landroid/content/Intent;Z)V

    .line 206
    return v7

    .line 210
    .end local v2    # "sessionIntent":Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastPackageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mPm:Landroid/content/pm/PackageManager;

    if-nez v3, :cond_3

    .line 211
    :cond_2
    return v6

    .line 215
    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 216
    .local v0, "launchIntent":Landroid/content/Intent;
    if-eqz v0, :cond_4

    .line 217
    invoke-interface {p1, v0, v6}, Lcom/android/keyguard/servicebox/KeyguardStatusCallback;->startActivity(Landroid/content/Intent;Z)V

    .line 218
    const-string/jumbo v3, "MusicController_LOCK"

    const-string/jumbo v4, "launch package intent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return v7

    .line 221
    :cond_4
    const-string/jumbo v3, "MusicController_LOCK"

    const-string/jumbo v4, "there is no launch intent"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return v6
.end method

.method public removeAllCacheData()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mAppLabelMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 230
    return-void
.end method

.method public removeCallback(Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;

    .prologue
    .line 136
    if-nez p1, :cond_0

    return-void

    .line 138
    :cond_0
    invoke-interface {p1}, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;->clear()V

    .line 140
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 141
    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "iIdx":I
    :goto_0
    if-ltz v0, :cond_3

    .line 142
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;

    .line 144
    .local v1, "l":Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;
    if-eqz v1, :cond_1

    if-ne v1, p1, :cond_2

    .line 145
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v1    # "l":Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;
    :cond_3
    monitor-exit v3

    .line 150
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 151
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->stopMusicStateListening()V

    .line 152
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->removeAllCacheData()V

    .line 135
    :cond_4
    return-void

    .line 140
    .end local v0    # "iIdx":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public requestCacheData(Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;

    .prologue
    .line 157
    const-string/jumbo v0, "MusicController_LOCK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestCacheData() callback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->isOOBETextNeed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    :cond_0
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastPlaybackState:Landroid/media/session/PlaybackState;

    invoke-interface {p1, v0}, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    .line 163
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    invoke-interface {p1, v0}, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;->setMetadata(Landroid/media/MediaMetadata;)V

    .line 164
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastMusicLyrics:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;->setLyrics(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastMusicAppName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;->setAppName(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public sendKeyToPlayer(I)V
    .locals 14
    .param p1, "keyCode"    # I

    .prologue
    .line 169
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 170
    .local v2, "now":J
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mMonitor:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 171
    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x101

    move-wide v4, v2

    move v7, p1

    .line 170
    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->sendMediaButtonEvent(Landroid/view/KeyEvent;)Z

    .line 172
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mMonitor:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 173
    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x101

    move-wide v4, v2

    move v7, p1

    .line 172
    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->sendMediaButtonEvent(Landroid/view/KeyEvent;)Z

    .line 168
    return-void
.end method

.method public showBigActivity()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 177
    const-string/jumbo v1, "MusicController_LOCK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showBigActivity() pi = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mMusicActivityLaunchPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mMusicActivityLaunchPendingIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_0

    .line 179
    return v4

    .line 183
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mMusicActivityLaunchPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    const/4 v1, 0x1

    return v1

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v1, "MusicController_LOCK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showBigActivity() occur exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    .line 187
    return v4
.end method
