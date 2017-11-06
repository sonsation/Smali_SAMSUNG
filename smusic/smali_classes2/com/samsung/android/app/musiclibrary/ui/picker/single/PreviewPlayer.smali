.class public Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;
.super Ljava/lang/Object;
.source "PreviewPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;,
        Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$OnPlayerStateChangedListener;,
        Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$PlayerState;
    }
.end annotation


# static fields
.field private static final HIGHLIGHT_POS_CACHE_SIZE:I = 0x32

.field private static final TAG:Ljava/lang/String;

.field private static final sHighlightPositionCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivity:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

.field private final mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mAudioThumbnailCompat:Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;

.field private final mContext:Landroid/content/Context;

.field private mFromHighlight:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOffset:I

.field private mPlayReady:Z

.field private mPlayerState:I

.field private mPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$OnPlayerStateChangedListener;

.field private mPreviewPlayerListener:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-class v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->TAG:Ljava/lang/String;

    .line 44
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->sHighlightPositionCache:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mPlayReady:Z

    .line 67
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mPlayerState:I

    .line 443
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 100
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mContext:Landroid/content/Context;

    .line 101
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mActivity:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mAudioManager:Landroid/media/AudioManager;

    .line 103
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;)Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mPreviewPlayerListener:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mFromHighlight:Z

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    .prologue
    .line 36
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mOffset:I

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mOffset:I

    return p1
.end method

.method static synthetic access$300()Landroid/util/LruCache;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->sHighlightPositionCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->play()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;)Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mActivity:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;
    .param p1, "x1"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->handleError(I)V

    return-void
.end method

.method private extractHighlight(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->getAudioPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 332
    .local v1, "path":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->sHighlightPositionCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 333
    .local v0, "highlightPosition":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mOffset:I

    .line 335
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mOffset:I

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 336
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mPreviewPlayerListener:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;->onAvailableRecommendation(Z)V

    .line 337
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mPreviewPlayerListener:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;->onPlayReady()V

    .line 338
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->play()V

    .line 404
    :goto_0
    return-void

    .line 342
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->releaseRecommender()V

    .line 343
    new-instance v2, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;

    invoke-direct {v2}, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mAudioThumbnailCompat:Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;

    .line 344
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mAudioThumbnailCompat:Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;

    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;Landroid/net/Uri;)V

    .line 345
    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->extractHighlight(Ljava/lang/String;Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat$OnHighlightExtractListener;)V

    goto :goto_0
.end method

.method private getAudioPath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 310
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v1

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 311
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 313
    .local v6, "c":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 315
    .local v7, "path":Ljava/lang/String;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 319
    :cond_0
    if-eqz v6, :cond_1

    .line 320
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 323
    :cond_1
    return-object v7

    .line 319
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 320
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private handleError(I)V
    .locals 6
    .param p1, "msgResId"    # I

    .prologue
    const/4 v2, 0x0

    .line 293
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "errorMsg":Ljava/lang/String;
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleError() - message : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->showToast(Ljava/lang/String;)V

    .line 297
    sget v3, Lcom/samsung/android/app/musiclibrary/R$string;->highlights_track_not_supported:I

    if-ne p1, v3, :cond_0

    const/4 v0, 0x1

    .line 298
    .local v0, "disableCheckBox":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 299
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mPreviewPlayerListener:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;

    invoke-interface {v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;->onAvailableRecommendation(Z)V

    .line 303
    :goto_1
    return-void

    .end local v0    # "disableCheckBox":Z
    :cond_0
    move v0, v2

    .line 297
    goto :goto_0

    .line 301
    .restart local v0    # "disableCheckBox":Z
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mPreviewPlayerListener:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;->onError()V

    goto :goto_1
.end method

.method private play()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 128
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mPlayReady:Z

    if-eqz v1, :cond_0

    .line 129
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->TAG:Ljava/lang/String;

    const-string v2, "play() - only playReady"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mPlayReady:Z

    .line 145
    :goto_0
    return-void

    .line 133
    :cond_0
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->SUPPORT_MUSIC_PLAYBACK_DURING_CALL:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mContext:Landroid/content/Context;

    .line 134
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/CallStateChecker;->isCallIdle(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->unable_to_play_during_call:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    .line 141
    .local v0, "result":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMUSIC-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play() - request audio focus result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 144
    invoke-direct {p0, v4}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->setPlayerState(I)V

    goto :goto_0
.end method

.method private setDataSource(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 232
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDataSource() - path : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 235
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 237
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->setPlayerState(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 248
    :goto_0
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDataSource() - IllegalStateException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->playback_failed_msg:I

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->handleError(I)V

    goto :goto_0

    .line 241
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 242
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDataSource() - IOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->playback_failed_msg:I

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->handleError(I)V

    goto :goto_0

    .line 244
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDataSource() - SecurityException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->playback_failed_msg:I

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->handleError(I)V

    goto :goto_0
.end method

.method private setPlayerState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 111
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mPlayerState:I

    if-eq p1, v0, :cond_0

    .line 112
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mPlayerState:I

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$OnPlayerStateChangedListener;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$OnPlayerStateChangedListener;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mPlayerState:I

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$OnPlayerStateChangedListener;->onPlayerStateChanged(I)V

    .line 117
    :cond_0
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 328
    return-void
.end method


# virtual methods
.method public abandonAudioFocus()V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 307
    return-void
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public getHighlightOffset()I
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mOffset:I

    return v0
.end method

.method public getHighlightOffset(J)I
    .locals 3
    .param p1, "audioId"    # J

    .prologue
    .line 427
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 428
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->sHighlightPositionCache:Landroid/util/LruCache;

    invoke-virtual {v2, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 429
    .local v0, "offset":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 430
    const/4 v2, -0x1

    .line 432
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method public getRecommendationResult()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mUri:Landroid/net/Uri;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mOffset:I

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->getResultIntent(Landroid/net/Uri;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 263
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->TAG:Ljava/lang/String;

    const-string v1, "onCompletion()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->pause(Z)V

    .line 265
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mPreviewPlayerListener:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;->onCompletion()V

    .line 266
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 270
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer onError() - what : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", extra : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/16 v1, 0x64

    if-ne p2, v1, :cond_0

    if-nez p3, :cond_0

    .line 273
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->sdcard_removed_msg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "errorMsg":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->showToast(Ljava/lang/String;)V

    .line 278
    .end local v0    # "errorMsg":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 276
    :cond_0
    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->playback_failed_msg:I

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->handleError(I)V

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepared() - fromHighlight  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mFromHighlight:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mFromHighlight:Z

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->extractHighlight(Landroid/net/Uri;)V

    .line 259
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mPreviewPlayerListener:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;->onPlayReady()V

    .line 257
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->play()V

    goto :goto_0
.end method

.method protected onProgressFinished()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 290
    :cond_0
    return-void
.end method

.method protected onProgressStarted()V
    .locals 4

    .prologue
    .line 282
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mActivity:Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mContext:Landroid/content/Context;

    sget v3, Lcom/samsung/android/app/musiclibrary/R$string;->processing:I

    .line 283
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 284
    return-void
.end method

.method public pause(Z)V
    .locals 1
    .param p1, "abandonAudioFocus"    # Z

    .prologue
    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 183
    if-eqz p1, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->abandonAudioFocus()V

    .line 186
    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->setPlayerState(I)V

    .line 187
    return-void
.end method

.method public playReady(JZ)V
    .locals 1
    .param p1, "audioId"    # J
    .param p3, "fromHighlight"    # Z

    .prologue
    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mPlayReady:Z

    .line 178
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->startPlayer(JZ)V

    .line 179
    return-void
.end method

.method public releasePlayer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 211
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->stop()V

    .line 212
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->releaseRecommender()V

    .line 213
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 214
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 215
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mUri:Landroid/net/Uri;

    .line 216
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mOffset:I

    .line 217
    return-void
.end method

.method public releaseRecommender()V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mAudioThumbnailCompat:Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mAudioThumbnailCompat:Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->close()V

    .line 409
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mAudioThumbnailCompat:Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;

    .line 411
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->onProgressFinished()V

    .line 412
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 201
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->abandonAudioFocus()V

    .line 205
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mOffset:I

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mUri:Landroid/net/Uri;

    .line 207
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->setPlayerState(I)V

    .line 208
    return-void
.end method

.method public setOnPlayerStateChangedListener(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$OnPlayerStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$OnPlayerStateChangedListener;

    .prologue
    .line 440
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mPlayerStateChangedListener:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$OnPlayerStateChangedListener;

    .line 441
    return-void
.end method

.method public setOnPreviewPlayerListener(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;

    .prologue
    .line 436
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mPreviewPlayerListener:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;

    .line 437
    return-void
.end method

.method public startPlayer(JZ)V
    .locals 5
    .param p1, "audioId"    # J
    .param p3, "fromHighlight"    # Z

    .prologue
    const/4 v4, 0x0

    .line 148
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 149
    .local v2, "uri":Landroid/net/Uri;
    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->getAudioPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "path":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 174
    :goto_0
    return-void

    .line 152
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/privatemode/DefaultPrivateUtils;->isPrivateModeItem(Landroid/content/Context;J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 153
    sget v3, Lcom/samsung/android/app/musiclibrary/R$string;->personal_item_set_as_error:I

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->handleError(I)V

    goto :goto_0

    .line 156
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    move-result-object v0

    .line 157
    .local v0, "drmManager":Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->isDrm(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->supportRingtone(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 158
    sget v3, Lcom/samsung/android/app/musiclibrary/R$string;->error_not_support_type:I

    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->handleError(I)V

    goto :goto_0

    .line 161
    :cond_2
    iput-boolean p3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mFromHighlight:Z

    .line 162
    iput v4, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mOffset:I

    .line 163
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mUri:Landroid/net/Uri;

    if-ne v3, v2, :cond_4

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mPlayerState:I

    if-eqz v3, :cond_4

    .line 164
    if-eqz p3, :cond_3

    .line 165
    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->extractHighlight(Landroid/net/Uri;)V

    goto :goto_0

    .line 167
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 168
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->play()V

    goto :goto_0

    .line 172
    :cond_4
    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mUri:Landroid/net/Uri;

    .line 173
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mFromHighlight:Z

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mPreviewPlayerListener:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;->onAvailableRecommendation(Z)V

    .line 193
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mPlayerState:I

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 195
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->setPlayerState(I)V

    .line 197
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->abandonAudioFocus()V

    .line 198
    return-void
.end method

.method public togglePlay()V
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->pause(Z)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->play()V

    goto :goto_0
.end method
