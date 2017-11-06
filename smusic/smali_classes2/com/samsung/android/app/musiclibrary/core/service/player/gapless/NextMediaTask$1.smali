.class Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$1;
.super Ljava/lang/Object;
.source "NextMediaTask.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->setNextMediaPlayer(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;)Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->access$202(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;Z)Z

    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;)Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;->setPrepared()V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 168
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setNextMediaPlayer onPrepared called "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;

    .line 169
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;)Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "but mNextMedia is null !!"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-static {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;->access$300(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask;Ljava/lang/String;)V

    .line 170
    monitor-exit v1

    .line 171
    return-void

    .line 169
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
