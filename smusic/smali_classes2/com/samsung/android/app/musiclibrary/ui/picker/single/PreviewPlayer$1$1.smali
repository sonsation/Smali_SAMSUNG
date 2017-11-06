.class Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1$1;
.super Ljava/lang/Object;
.source "PreviewPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;->onExtractFinished(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1$1;->this$1:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1$1;->this$1:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->access$400(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    .line 370
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "media player is already released"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1$1;->this$1:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->access$000(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;)Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$onPreviewPlayerListener;->onPlayReady()V

    .line 374
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1$1;->this$1:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->access$600(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;)V

    .line 376
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1$1;->this$1:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->access$700(Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;)Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->isResumedState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1$1;->this$1:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/PreviewPlayer;->pause(Z)V

    goto :goto_0
.end method
