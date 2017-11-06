.class public Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;
.source "FullScreenVideoPlayerActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;
.implements Lcom/devbrackets/android/exomedia/listener/OnErrorListener;
.implements Lcom/devbrackets/android/exomedia/listener/OnPreparedListener;
.implements Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;
.implements Lcom/samsung/android/app/music/milk/store/videoplayer/OnUpdateProgressListener;
.implements Lcom/samsung/android/app/music/milk/store/videoplayer/VideoControlButtonListener;
.implements Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;
.implements Lcom/samsung/android/app/music/network/NetworkManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;
    }
.end annotation


# static fields
.field public static final EXTRA_YOUTUBE_URL:Ljava/lang/String; = "youtube_url"

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final USER_LIMIT:I = 0xea60

.field private static final YOUTUBE_HOST:Ljava/lang/String; = "www.youtube.com"

.field private static final YOUTUBE_PACKAGE:Ljava/lang/String; = "com.google.android.youtube"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBufferPercent:I

.field private mCurrent:I

.field private mDuration:I

.field protected mEmVideoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

.field private mIsCalledAdjustment:Z

.field private mLastAudioFocus:I

.field private mLastOrientation:I

.field private mMusicVideoPlay:Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;

.field protected mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

.field private mNoisyAudioStreamReceiver:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;

.field private mPauseByTransient:Z

.field private mPausedInOnStop:Z

.field private mStartPlayTime:J

.field private mTitle:Ljava/lang/String;

.field private mVideoControl:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

.field private rotationSettingObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;-><init>()V

    .line 78
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mPausedInOnStop:Z

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mLastAudioFocus:I

    .line 86
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mPauseByTransient:Z

    .line 88
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mIsCalledAdjustment:Z

    .line 96
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mCurrent:I

    .line 98
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mBufferPercent:I

    .line 100
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mDuration:I

    .line 102
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mLastOrientation:I

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mMusicVideoPlay:Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;

    .line 106
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mStartPlayTime:J

    .line 152
    new-instance v0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$1;-><init>(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->rotationSettingObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;IILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->showError(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;)Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mMusicVideoPlay:Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;)Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;
    .param p1, "x1"    # Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mMusicVideoPlay:Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->playYoutubeVideo(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->playVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$602(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mIsCalledAdjustment:Z

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->stop()V

    return-void
.end method

.method private getAudioFocus()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 507
    sget-object v2, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAudioFocus : requesting audio focus. current focus - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mLastAudioFocus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x3

    .line 511
    invoke-virtual {v2, p0, v3, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 514
    .local v0, "result":I
    if-eq v0, v1, :cond_0

    .line 515
    sget-object v1, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getAudioFocus : Requested but not granted audio focus"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const/4 v1, 0x0

    .line 520
    :goto_0
    return v1

    .line 518
    :cond_0
    sget-object v2, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAudioFocus : Requested and granted audio focus. result - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->onAudioFocusChange(I)V

    goto :goto_0
.end method

.method private getService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    .locals 1

    .prologue
    .line 666
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    return-object v0
.end method

.method private playVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "artistName"    # Ljava/lang/String;
    .param p3, "songTitle"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 405
    sget-object v0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playVideo : uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", artistName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", songTitle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mEmVideoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mEmVideoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mVideoControl:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    if-eqz v0, :cond_1

    .line 413
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 414
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p3, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mTitle:Ljava/lang/String;

    .line 419
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mVideoControl:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->setTitle(Ljava/lang/CharSequence;)V

    .line 421
    :cond_1
    return-void

    .line 416
    :cond_2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s - %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    aput-object p3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method private playYoutubeVideo(Landroid/net/Uri;)V
    .locals 3
    .param p1, "youtubeUri"    # Landroid/net/Uri;

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 396
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "com.google.android.youtube"

    invoke-static {v2, v1}, Lcom/samsung/android/app/music/common/util/PackageLauncher;->isPackageInstalled(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result v0

    .line 397
    .local v0, "isInstalled":Z
    if-eqz v0, :cond_0

    .line 398
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->runOnYouTubeSDK(Ljava/lang/String;)V

    .line 402
    :goto_0
    return-void

    .line 400
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->runOnWebView(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private refreshVideoControl()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 224
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mEmVideoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    if-nez v1, :cond_0

    .line 225
    sget-object v1, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "refreshVideoControl : Error! EmVideoView is null"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mEmVideoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v1, v3}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->setControls(Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;)V

    .line 230
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mEmVideoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    const v2, 0x7f110031

    invoke-virtual {v1, v2}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->setPreviewImage(I)V

    .line 232
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mVideoControl:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->isVisible()Z

    move-result v0

    .line 233
    .local v0, "isVisible":Z
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mVideoControl:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->setOnUpdateProgressListener(Lcom/samsung/android/app/music/milk/store/videoplayer/OnUpdateProgressListener;)V

    .line 234
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mVideoControl:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->removeAllViews()V

    .line 235
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mVideoControl:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->stopPlayingProgress()V

    .line 236
    iput-object v3, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mVideoControl:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    .line 238
    new-instance v1, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mVideoControl:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    .line 239
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mEmVideoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mVideoControl:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-virtual {v1, v2}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->setControls(Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;)V

    .line 240
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mVideoControl:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    const v2, 0x7f02007e

    const v3, 0x7f02007d

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->setPlayPauseImages(II)V

    .line 242
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mVideoControl:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->setOnUpdateProgressListener(Lcom/samsung/android/app/music/milk/store/videoplayer/OnUpdateProgressListener;)V

    .line 243
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mVideoControl:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->setButtonListener(Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;)V

    .line 244
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mVideoControl:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->setControlButtonListener(Lcom/samsung/android/app/music/milk/store/videoplayer/VideoControlButtonListener;)V

    .line 245
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mVideoControl:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mVideoControl:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->setTitle(Ljava/lang/CharSequence;)V

    .line 247
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mVideoControl:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mCurrent:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->setPosition(J)V

    .line 248
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mVideoControl:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->setDuration(J)V

    .line 249
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mCurrent:I

    int-to-long v2, v1

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mDuration:I

    int-to-long v4, v1

    iget v6, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mBufferPercent:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->onUpdateProgress(JJI)V

    .line 251
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mEmVideoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v1}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mVideoControl:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->updatePlaybackState(Z)V

    .line 255
    :cond_1
    if-eqz v0, :cond_2

    .line 256
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mEmVideoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v1}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->showControls()V

    goto/16 :goto_0

    .line 258
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mVideoControl:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->hideDelayed(J)V

    goto/16 :goto_0
.end method

.method private requestToPlayVideo(Ljava/lang/String;)V
    .locals 4
    .param p1, "mvId"    # Ljava/lang/String;

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->getService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$2;-><init>(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 391
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 313
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getMusicVideoPlay(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/List;)I

    .line 392
    return-void
.end method

.method private rotateVideo()V
    .locals 2

    .prologue
    .line 645
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mLastOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 646
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->setRequestedOrientation(I)V

    .line 650
    :goto_0
    return-void

    .line 648
    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method private runOnWebView(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 674
    const-class v0, Lcom/samsung/android/app/music/milk/store/videoplayer/YouTubeWebActivity;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->runYouTube(Ljava/lang/Class;Ljava/lang/String;)V

    .line 675
    return-void
.end method

.method private runOnYouTubeSDK(Ljava/lang/String;)V
    .locals 1
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    .line 670
    const-class v0, Lcom/samsung/android/app/music/milk/store/videoplayer/YouTubePlayerActivity;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->runYouTube(Ljava/lang/Class;Ljava/lang/String;)V

    .line 671
    return-void
.end method

.method private runYouTube(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p1, "clsName"    # Ljava/lang/Class;
    .param p2, "param"    # Ljava/lang/String;

    .prologue
    .line 678
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 679
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "youtube_url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 680
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 681
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->finish()V

    .line 682
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->startActivity(Landroid/content/Intent;)V

    .line 683
    return-void
.end method

.method private showError(IILjava/lang/String;)V
    .locals 1
    .param p1, "rspType"    # I
    .param p2, "errorCode"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 653
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->show(II)V

    .line 656
    :cond_0
    return-void
.end method

.method private showUpSellPopup()V
    .locals 1

    .prologue
    .line 619
    const-string/jumbo v0, "show-upsell"

    invoke-static {p0, v0}, Lcom/samsung/android/app/music/milk/MilkDialogLauncher;->launchDialog(Landroid/content/Context;Ljava/lang/String;)V

    .line 620
    return-void
.end method

.method private start()V
    .locals 2

    .prologue
    .line 272
    sget-object v0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : in"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mEmVideoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->start()V

    .line 275
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mNoisyAudioStreamReceiver:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mNoisyAudioStreamReceiver:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;->registerBroadcastReceiver(Landroid/app/Activity;)V

    .line 278
    :cond_0
    return-void
.end method

.method private stop()V
    .locals 2

    .prologue
    .line 281
    sget-object v0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "pause : in"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mEmVideoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->pause()V

    .line 284
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mNoisyAudioStreamReceiver:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mNoisyAudioStreamReceiver:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;->unregisterBroadcastReceiver(Landroid/app/Activity;)V

    .line 287
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 694
    return-void
.end method

.method public getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 688
    const/4 v0, 0x0

    return-object v0
.end method

.method public onAudioFocusChange(I)V
    .locals 3
    .param p1, "focusChange"    # I

    .prologue
    .line 475
    sget-object v0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioFocusChange : onAudioFocusChange - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mLastAudioFocus:I

    .line 478
    packed-switch p1, :pswitch_data_0

    .line 504
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 480
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mEmVideoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mPauseByTransient:Z

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mEmVideoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->start()V

    .line 482
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mPauseByTransient:Z

    goto :goto_0

    .line 486
    :pswitch_2
    sget-object v0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onAudioFocusChange : received AUDIOFOCUS_LOSS, pause video"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mEmVideoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mEmVideoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mEmVideoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->pause()V

    goto :goto_0

    .line 493
    :pswitch_3
    sget-object v0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onAudioFocusChange : received AUDIOFOCUS_LOSS_TRANSIENT or CAN_DUCK, pause video"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mEmVideoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mEmVideoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mEmVideoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->pause()V

    .line 497
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mPauseByTransient:Z

    goto :goto_0

    .line 478
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 639
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mVideoControl:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mVideoControl:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->switchAnimateVisibility()V

    .line 642
    :cond_0
    return-void
.end method

.method public onCloseButtonClicked()V
    .locals 6

    .prologue
    .line 624
    sget-object v0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCloseButtonClicked : clicked"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "321"

    const-string v2, "4381"

    iget v3, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mCurrent:I

    int-to-long v4, v3

    .line 626
    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 627
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->finish()V

    .line 628
    return-void
.end method

.method public onCompletion()V
    .locals 6

    .prologue
    .line 461
    sget-object v0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCompletion : Completion"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "321"

    const-string v2, "4385"

    iget v3, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mDuration:I

    int-to-long v4, v3

    .line 463
    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 464
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->finish()V

    .line 465
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 264
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 265
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mLastOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 266
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mLastOrientation:I

    .line 267
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->refreshVideoControl()V

    .line 269
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    .line 115
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->rotationSettingObserver:Landroid/database/ContentObserver;

    .line 114
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 118
    const v0, 0x7f04012e

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->setContentView(I)V

    .line 120
    const v0, 0x7f120392

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mEmVideoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mEmVideoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    const v1, 0x7f110031

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->setPreviewImage(I)V

    .line 123
    const v0, 0x7f1202b5

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    .line 125
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 127
    new-instance v0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mVideoControl:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mVideoControl:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    const v1, 0x7f02007e

    const v2, 0x7f02007d

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->setPlayPauseImages(II)V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mVideoControl:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->setOnUpdateProgressListener(Lcom/samsung/android/app/music/milk/store/videoplayer/OnUpdateProgressListener;)V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mVideoControl:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->setButtonListener(Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;)V

    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mVideoControl:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->setControlButtonListener(Lcom/samsung/android/app/music/milk/store/videoplayer/VideoControlButtonListener;)V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mVideoControl:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mEmVideoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mEmVideoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mVideoControl:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->setControls(Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;)V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mEmVideoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v0, p0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->setOnPreparedListener(Lcom/devbrackets/android/exomedia/listener/OnPreparedListener;)V

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mEmVideoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v0, p0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->setOnCompletionListener(Lcom/devbrackets/android/exomedia/listener/OnCompletionListener;)V

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mEmVideoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v0, p0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->setOnErrorListener(Lcom/devbrackets/android/exomedia/listener/OnErrorListener;)V

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mEmVideoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->showControls()V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mEmVideoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, p0, v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->initialize(Lcom/samsung/android/app/music/network/NetworkManager;Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;Landroid/view/View;Z)V

    .line 146
    new-instance v0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;-><init>(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mNoisyAudioStreamReceiver:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;

    .line 147
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->getService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->bindService(Landroid/content/ServiceConnection;)Z

    .line 149
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "321"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onDestroy()V

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->destroy()V

    .line 168
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->getService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->getService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mEmVideoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mEmVideoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->stopPlayback()V

    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mEmVideoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->setControls(Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;)V

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mVideoControl:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mVideoControl:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->setOnUpdateProgressListener(Lcom/samsung/android/app/music/milk/store/videoplayer/OnUpdateProgressListener;)V

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mVideoControl:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->setVideoView(Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;)V

    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mVideoControl:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->updatePlaybackState(Z)V

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 184
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mLastAudioFocus:I

    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->rotationSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mNoisyAudioStreamReceiver:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;

    if-eqz v0, :cond_3

    .line 189
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mNoisyAudioStreamReceiver:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;->unregisterBroadcastReceiver(Landroid/app/Activity;)V

    .line 191
    :cond_3
    return-void
.end method

.method public onError()Z
    .locals 2

    .prologue
    .line 469
    sget-object v0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onError : Error occurred"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const/4 v0, 0x0

    return v0
.end method

.method public onFastForwardClicked()Z
    .locals 1

    .prologue
    .line 615
    const/4 v0, 0x0

    return v0
.end method

.method public onNextClicked()Z
    .locals 1

    .prologue
    .line 605
    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 195
    sget-object v0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onPause : in"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mEmVideoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mPausedInOnStop:Z

    .line 198
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mEmVideoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->pause()V

    .line 199
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mLastAudioFocus:I

    .line 201
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onPause()V

    .line 202
    return-void
.end method

.method public onPlayPauseClicked()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 567
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mEmVideoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v2}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->isPlaying()Z

    move-result v1

    .line 568
    .local v1, "isPlaying":Z
    sget-object v2, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPlayPauseClicked : mEmVideoView.isPlaying() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mLastAudioFocus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mLastAudioFocus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    if-eqz v1, :cond_2

    .line 573
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mNoisyAudioStreamReceiver:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;

    if-eqz v2, :cond_0

    .line 574
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mNoisyAudioStreamReceiver:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;

    invoke-virtual {v2, p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;->unregisterBroadcastReceiver(Landroid/app/Activity;)V

    .line 583
    :cond_0
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v4

    const-string v5, "321"

    const-string v6, "4382"

    if-eqz v1, :cond_3

    const-string v2, "Play"

    .line 584
    :goto_1
    invoke-virtual {v4, v5, v6, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const/4 v0, 0x1

    .line 588
    .local v0, "granted":Z
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mLastAudioFocus:I

    if-eq v2, v3, :cond_1

    .line 589
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->getAudioFocus()Z

    move-result v0

    .line 591
    :cond_1
    if-nez v0, :cond_4

    .line 592
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->stop()V

    move v2, v3

    .line 595
    :goto_2
    return v2

    .line 578
    .end local v0    # "granted":Z
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mNoisyAudioStreamReceiver:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;

    if-eqz v2, :cond_0

    .line 579
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mNoisyAudioStreamReceiver:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;

    invoke-virtual {v2, p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;->registerBroadcastReceiver(Landroid/app/Activity;)V

    goto :goto_0

    .line 583
    :cond_3
    const-string v2, "Pause"

    goto :goto_1

    .line 595
    .restart local v0    # "granted":Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public onPrepared()V
    .locals 6

    .prologue
    const v4, 0xea60

    .line 425
    sget-object v2, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onPrepared : in"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const/4 v0, 0x1

    .line 427
    .local v0, "granted":Z
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mLastAudioFocus:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 428
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->getAudioFocus()Z

    move-result v0

    .line 431
    :cond_0
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mEmVideoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    if-eqz v2, :cond_4

    .line 432
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->getService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getUser()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v1

    .line 437
    .local v1, "info":Lcom/samsung/android/app/music/common/model/UserInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/UserInfo;->isStreamingUser()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 438
    sget-object v2, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onPrepared : unlimited user"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mEmVideoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v2}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->getDuration()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mDuration:I

    .line 453
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->start()V

    .line 457
    .end local v1    # "info":Lcom/samsung/android/app/music/common/model/UserInfo;
    :goto_1
    return-void

    .line 441
    .restart local v1    # "info":Lcom/samsung/android/app/music/common/model/UserInfo;
    :cond_2
    sget-object v2, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onPrepared : limited user"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->showUpSellPopup()V

    .line 443
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mEmVideoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v2}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->getDuration()I

    move-result v2

    if-ge v2, v4, :cond_3

    .line 444
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mEmVideoView:Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;

    invoke-virtual {v2}, Lcom/devbrackets/android/exomedia/ui/widget/EMVideoView;->getDuration()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mDuration:I

    .line 448
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mVideoControl:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    if-eqz v2, :cond_1

    .line 449
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mVideoControl:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    iget v3, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mDuration:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->setDuration(J)V

    goto :goto_0

    .line 446
    :cond_3
    iput v4, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mDuration:I

    goto :goto_2

    .line 455
    .end local v1    # "info":Lcom/samsung/android/app/music/common/model/UserInfo;
    :cond_4
    sget-object v2, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onPrepared : Failed to grant AudioFocus or mEmVideoView is null"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onPreviousClicked()Z
    .locals 1

    .prologue
    .line 600
    const/4 v0, 0x0

    return v0
.end method

.method public onRetry()V
    .locals 1

    .prologue
    .line 660
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->hide()V

    .line 663
    :cond_0
    return-void
.end method

.method public onRewindClicked()Z
    .locals 1

    .prologue
    .line 610
    const/4 v0, 0x0

    return v0
.end method

.method public onRotateButtonClicked()V
    .locals 3

    .prologue
    .line 632
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->rotateVideo()V

    .line 633
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "321"

    const-string v2, "4383"

    .line 634
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 291
    sget-object v2, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceConnected : name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 294
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "contentId"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, "mvId":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 296
    sget-object v2, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onServiceConnected : Music Video Id must not be null!"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.android.app.music.service.milk.MilkService"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    sget-object v2, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->LOG_TAG:Ljava/lang/String;

    const-string v3, "onServiceConnected : requestToPlayVideo"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->requestToPlayVideo(Ljava/lang/String;)V

    .line 304
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->getService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getServerTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mStartPlayTime:J

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 310
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 206
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onStart()V

    .line 208
    sget-object v1, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onStart : in"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    sget-object v2, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->CACHED:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->switchMode(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;)V

    .line 211
    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mPausedInOnStop:Z

    if-eqz v1, :cond_2

    .line 212
    const/4 v0, 0x1

    .line 213
    .local v0, "granted":Z
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mLastAudioFocus:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->getAudioFocus()Z

    move-result v0

    .line 216
    :cond_0
    if-eqz v0, :cond_1

    .line 217
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->start()V

    .line 219
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mPausedInOnStop:Z

    .line 221
    .end local v0    # "granted":Z
    :cond_2
    return-void
.end method

.method public onUpdateProgress(JJI)V
    .locals 7
    .param p1, "position"    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3, "duration"    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p5, "bufferPercent"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param

    .prologue
    const-wide/32 v2, 0xea60

    .line 526
    long-to-int v0, p1

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mCurrent:I

    .line 527
    iput p5, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mBufferPercent:I

    .line 529
    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;->StreamingUser:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    .line 530
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->hasFeature(Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 531
    sget-object v0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onUpdateProgress : finish"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->finish()V

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;->StreamingUser:Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;

    .line 534
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/feature/MilkUIFeature;->hasFeature(Lcom/samsung/android/app/music/milk/feature/MilkUIFeature$MilkFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mIsCalledAdjustment:Z

    if-nez v0, :cond_0

    .line 535
    sget-object v0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateProgress : adjustment music video : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->getService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->getService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$3;-><init>(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;)V

    iget-wide v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mStartPlayTime:J

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->mMusicVideoPlay:Lcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->adjustmentMusicVideo(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;JJLcom/samsung/android/app/music/common/model/milkmusicvideo/MusicVideoPlay;)I

    goto :goto_0
.end method

.method public removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 700
    return-void
.end method
