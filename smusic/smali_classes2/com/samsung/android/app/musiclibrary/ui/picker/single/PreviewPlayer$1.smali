.class Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;
.super Ljava/lang/Object;
.source "PreviewPlayer.java"

# interfaces
.implements Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat$OnHighlightExtractListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->extractHighlight(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtractError(I)V
    .locals 4
    .param p1, "errorType"    # I

    .prologue
    .line 385
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->onProgressFinished()V

    .line 386
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->access$202(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;I)I

    .line 388
    sget v2, Lcom/samsung/android/app/music/support/samsung/media/mir/AudioThumbnailCompat;->OPEN_ERR_UNSUPPORT_FILE_TYPE:I

    if-ne p1, v2, :cond_0

    .line 389
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->highlights_track_not_supported:I

    .line 390
    .local v0, "errMsgResId":I
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->access$000(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;)Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;->onPlayReady()V

    .line 391
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->access$600(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;)V

    .line 395
    :goto_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 396
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1$2;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 402
    return-void

    .line 393
    .end local v0    # "errMsgResId":I
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_0
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->error_unknown:I

    .restart local v0    # "errMsgResId":I
    goto :goto_0
.end method

.method public onExtractFinished(J)V
    .locals 5
    .param p1, "offset"    # J

    .prologue
    .line 357
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->onProgressFinished()V

    .line 358
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->access$100(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v2, v2

    mul-int/lit16 v2, v2, 0x3e8

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->access$202(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;I)I

    .line 363
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->access$300()Landroid/util/LruCache;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;->val$uri:Landroid/net/Uri;

    long-to-int v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->access$400(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->access$200(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 365
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 366
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 381
    return-void

    .line 361
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->access$202(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;I)I

    goto :goto_0
.end method

.method public onExtractStarted(Z)V
    .locals 2
    .param p1, "isStarted"    # Z

    .prologue
    .line 349
    if-eqz p1, :cond_0

    .line 350
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->access$000(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;)Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;->onAvailableRecommendation(Z)V

    .line 351
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->onProgressStarted()V

    .line 353
    :cond_0
    return-void
.end method
