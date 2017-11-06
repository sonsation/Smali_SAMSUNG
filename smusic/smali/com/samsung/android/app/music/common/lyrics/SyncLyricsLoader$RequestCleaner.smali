.class Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$RequestCleaner;
.super Landroid/os/Handler;
.source "SyncLyricsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestCleaner"
.end annotation


# static fields
.field private static final CLEAN_REQUESTS:I = 0x1

.field private static final COLLECT_TIME:J = 0xbb8L

.field private static final DELAY_CLEAN:J = 0x2710L


# instance fields
.field private mLastTime:J


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 68
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 83
    iget v6, p1, Landroid/os/Message;->what:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 84
    invoke-static {}, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Clean requests !"

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :try_start_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/util/LongSparseArray;

    .line 87
    .local v5, "reqMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$Request;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 88
    .local v0, "currTime":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 89
    invoke-virtual {v5, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$Request;

    .line 91
    .local v4, "r":Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$Request;
    iget-wide v6, v4, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$Request;->requestTime:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0x1b58

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 92
    invoke-virtual {v5, v3}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 93
    add-int/lit8 v3, v3, -0x1

    .line 94
    invoke-static {}, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Remove outdated request : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$Request;->clients:Ljava/util/Set;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", time : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v4, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$Request;->requestTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 98
    .end local v0    # "currTime":J
    .end local v3    # "i":I
    .end local v4    # "r":Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$Request;
    .end local v5    # "reqMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$Request;>;"
    :catch_0
    move-exception v2

    .line 99
    .local v2, "e":Ljava/lang/ClassCastException;
    invoke-static {}, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Wrong usage !"

    invoke-static {v6, v7, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :cond_1
    return-void
.end method

.method postClean(Landroid/util/LongSparseArray;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$Request;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "reqMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$Request;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 72
    .local v0, "currTime":J
    iget-wide v4, p0, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$RequestCleaner;->mLastTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0xbb8

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 73
    const/4 v3, 0x1

    invoke-static {p0, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 74
    .local v2, "m":Landroid/os/Message;
    const-wide/16 v4, 0x2710

    invoke-virtual {p0, v2, v4, v5}, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$RequestCleaner;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 76
    iput-wide v0, p0, Lcom/samsung/android/app/music/common/lyrics/SyncLyricsLoader$RequestCleaner;->mLastTime:J

    .line 78
    .end local v2    # "m":Landroid/os/Message;
    :cond_0
    return-void
.end method
