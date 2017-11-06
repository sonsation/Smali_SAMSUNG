.class Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$1;->this$0:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 198
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$1;->this$0:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;

    monitor-enter v1

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$1;->this$0:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->access$000(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 200
    monitor-exit v1

    .line 208
    :goto_0
    return-object v3

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$1;->this$0:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->access$100(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;)V

    .line 203
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$1;->this$0:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->access$200(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$1;->this$0:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->access$300(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;)V

    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache$1;->this$0:Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;->access$402(Lcom/samsung/android/app/music/milk/store/model/DiskLruCache;I)I

    .line 207
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
