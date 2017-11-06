.class Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker$1;
.super Ljava/lang/Object;
.source "GetSearchPresetsWorker.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;->getNoNetworkObservable()Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Lcom/samsung/android/app/music/common/model/milksearch/SearchPresetInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 56
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker$1;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lcom/samsung/android/app/music/common/model/milksearch/SearchPresetInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Lcom/samsung/android/app/music/common/model/milksearch/SearchPresetInfo;>;"
    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;

    .line 67
    invoke-static {v3}, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;->access$000(Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/samsung/android/app/music/common/model/milksearch/SearchPresetInfo;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const-string v5, "preset_cache"

    const-wide/32 v6, 0x19000

    invoke-static {v3, v4, v5, v6, v7}, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->open(Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/lang/String;J)Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;->mCache:Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;

    .line 69
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;

    iget-object v2, v2, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;->mCache:Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;

    const-string v3, "key_preset_info"

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;->get(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/milksearch/SearchPresetInfo;

    .line 70
    .local v1, "info":Lcom/samsung/android/app/music/common/model/milksearch/SearchPresetInfo;
    if-eqz v1, :cond_0

    .line 71
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getNoNetworkObservable : has preset cache"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;->access$200(Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/model/milksearch/SearchPresetInfo;->setId(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 74
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;

    iget-object v2, v2, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;->mCache:Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    .line 84
    .end local v1    # "info":Lcom/samsung/android/app/music/common/model/milksearch/SearchPresetInfo;
    :goto_2
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 76
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "info":Lcom/samsung/android/app/music/common/model/milksearch/SearchPresetInfo;
    :cond_0
    :try_start_2
    new-instance v2, Ljava/net/ConnectException;

    const-string v3, "no network. so api does not called."

    invoke-direct {v2, v3}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 79
    .end local v1    # "info":Lcom/samsung/android/app/music/common/model/milksearch/SearchPresetInfo;
    :catch_1
    move-exception v0

    .line 80
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 82
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;

    iget-object v2, v2, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;->mCache:Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    goto :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;

    iget-object v3, v3, Lcom/samsung/android/app/music/service/milk/worker/search/store/GetSearchPresetsWorker;->mCache:Lcom/samsung/android/app/music/milk/store/model/ParcelDiskCache;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/IOUtils;->close(Ljava/io/Closeable;)V

    throw v2
.end method
