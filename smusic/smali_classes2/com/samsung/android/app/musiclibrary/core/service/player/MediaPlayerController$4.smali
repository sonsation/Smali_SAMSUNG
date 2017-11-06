.class Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$4;
.super Ljava/lang/Object;
.source "MediaPlayerController.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    .prologue
    .line 566
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    .prologue
    .line 569
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-nez v1, :cond_0

    .line 570
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$300(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Landroid/media/MediaPlayer;)V

    .line 583
    :goto_0
    return-void

    .line 573
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$300(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Landroid/media/MediaPlayer;)V

    .line 574
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$402(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;)Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    .line 575
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$500(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 576
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 577
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "next_file_path"

    .line 578
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 577
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$500(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/ISkipSilenceController;->onMediaPlayerStateChanged(ILandroid/os/Bundle;)V

    .line 582
    .end local v0    # "data":Landroid/os/Bundle;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Landroid/media/MediaPlayer;)V

    goto :goto_0
.end method
