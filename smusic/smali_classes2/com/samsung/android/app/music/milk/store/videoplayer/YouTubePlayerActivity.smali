.class public Lcom/samsung/android/app/music/milk/store/videoplayer/YouTubePlayerActivity;
.super Lcom/google/android/youtube/player/YouTubeBaseActivity;
.source "YouTubePlayerActivity.java"

# interfaces
.implements Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;


# static fields
.field private static final GOOGLE_CONSOLE_KEY:Ljava/lang/String; = "AIzaSyAt9p0xvM7ZpXdPT_iEpvrdeaGlEWuf3AY"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final RECOVERY_DIALOG_REQUEST:I = 0x1


# instance fields
.field private mMvId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/samsung/android/app/music/milk/store/videoplayer/YouTubePlayerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/store/videoplayer/YouTubePlayerActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/google/android/youtube/player/YouTubeBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getYouTubePlayerProvider()Lcom/google/android/youtube/player/YouTubePlayer$Provider;
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/YouTubePlayerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f1203e9

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/player/YouTubePlayerFragment;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 28
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/YouTubePlayerActivity;->getYouTubePlayerProvider()Lcom/google/android/youtube/player/YouTubePlayer$Provider;

    move-result-object v0

    const-string v1, "AIzaSyAt9p0xvM7ZpXdPT_iEpvrdeaGlEWuf3AY"

    invoke-interface {v0, v1, p0}, Lcom/google/android/youtube/player/YouTubePlayer$Provider;->initialize(Ljava/lang/String;Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;)V

    .line 32
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/google/android/youtube/player/YouTubeBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v2, 0x7f04014c

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/videoplayer/YouTubePlayerActivity;->setContentView(I)V

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/YouTubePlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 41
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "youtube_url"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    const-string/jumbo v2, "youtube_url"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/YouTubePlayerActivity;->mMvId:Ljava/lang/String;

    .line 47
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/YouTubePlayerActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f1203e9

    .line 48
    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/player/YouTubePlayerFragment;

    .line 49
    .local v1, "youTubePlayerFragment":Lcom/google/android/youtube/player/YouTubePlayerFragment;
    const-string v2, "AIzaSyAt9p0xvM7ZpXdPT_iEpvrdeaGlEWuf3AY"

    invoke-virtual {v1, v2, p0}, Lcom/google/android/youtube/player/YouTubePlayerFragment;->initialize(Ljava/lang/String;Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;)V

    .line 50
    return-void

    .line 44
    .end local v1    # "youTubePlayerFragment":Lcom/google/android/youtube/player/YouTubePlayerFragment;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/YouTubePlayerActivity;->finish()V

    goto :goto_0
.end method

.method public onInitializationFailure(Lcom/google/android/youtube/player/YouTubePlayer$Provider;Lcom/google/android/youtube/player/YouTubeInitializationResult;)V
    .locals 3
    .param p1, "provider"    # Lcom/google/android/youtube/player/YouTubePlayer$Provider;
    .param p2, "errorReason"    # Lcom/google/android/youtube/player/YouTubeInitializationResult;

    .prologue
    .line 66
    invoke-virtual {p2}, Lcom/google/android/youtube/player/YouTubeInitializationResult;->isUserRecoverableError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p2, p0, v0}, Lcom/google/android/youtube/player/YouTubeInitializationResult;->getErrorDialog(Landroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 72
    :goto_0
    return-void

    .line 69
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/milk/store/videoplayer/YouTubePlayerActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInitializationFailure : Reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/youtube/player/YouTubeInitializationResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/YouTubePlayerActivity;->finish()V

    goto :goto_0
.end method

.method public onInitializationSuccess(Lcom/google/android/youtube/player/YouTubePlayer$Provider;Lcom/google/android/youtube/player/YouTubePlayer;Z)V
    .locals 1
    .param p1, "provider"    # Lcom/google/android/youtube/player/YouTubePlayer$Provider;
    .param p2, "player"    # Lcom/google/android/youtube/player/YouTubePlayer;
    .param p3, "wasRestored"    # Z

    .prologue
    .line 55
    if-nez p3, :cond_0

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/YouTubePlayerActivity;->mMvId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/YouTubePlayerActivity;->mMvId:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/google/android/youtube/player/YouTubePlayer;->loadVideo(Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/YouTubePlayerActivity;->mMvId:Ljava/lang/String;

    .line 61
    :cond_0
    return-void
.end method
