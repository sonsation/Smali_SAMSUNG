.class Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5$1;
.super Ljava/lang/Object;
.source "LyricsCache.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricsLoader2$OnLyricsLoadFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;

.field final synthetic val$audioId:J

.field final synthetic val$holder:Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;J)V
    .locals 1
    .param p1, "this$1"    # Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5$1;->this$1:Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;

    iput-object p2, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5$1;->val$holder:Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;

    iput-wide p3, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5$1;->val$audioId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLyricsLoadFinished(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V
    .locals 6
    .param p1, "lyrics"    # Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .prologue
    .line 359
    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5$1;->val$holder:Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;

    iput-object p1, v1, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;->lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .line 360
    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5$1;->val$holder:Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;

    iget-object v1, v1, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;->lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5$1;->val$holder:Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;

    iget-object v1, v1, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;->lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->EMPTY_LYRICS:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    if-eq v1, v2, :cond_0

    .line 361
    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5$1;->val$holder:Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;

    iget-object v1, v1, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;->lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->trim()V

    .line 363
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5$1;->this$1:Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;

    iget-object v1, v1, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$800(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 364
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5$1;->this$1:Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;

    iget-object v1, v1, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$900(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)Landroid/util/LruCache;

    move-result-object v1

    iget-wide v4, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5$1;->val$audioId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5$1;->val$holder:Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;

    iget-object v4, v4, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;->lyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-virtual {v1, v3, v4}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    iget-object v1, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5$1;->this$1:Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;

    iget-object v1, v1, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5;->this$0:Lcom/samsung/android/app/music/common/lyrics/LyricsCache;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->access$1000(Lcom/samsung/android/app/music/common/lyrics/LyricsCache;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/music/common/lyrics/LyricsCache$5$1;->val$holder:Lcom/samsung/android/app/music/common/lyrics/LyricsCache$LyricsHolder;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 368
    .local v0, "res":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 369
    return-void

    .line 365
    .end local v0    # "res":Landroid/os/Message;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
