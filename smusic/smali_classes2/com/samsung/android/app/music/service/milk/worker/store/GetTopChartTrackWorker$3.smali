.class Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker$3;
.super Ljava/lang/Object;
.source "GetTopChartTrackWorker.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;->doWorkInternal()Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Ljava/lang/String;",
        "Lrx/Observable",
        "<",
        "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker$3;->this$0:Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker$3;->call(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/String;)Lrx/Observable;
    .locals 7
    .param p1, "displayId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doWork : getStoreDisplayDetailPage. displayId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker$3;->this$0:Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker$3;->this$0:Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;

    .line 67
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;->getRequestId()I

    move-result v2

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker$3;->this$0:Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;->access$300(Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;)I

    move-result v3

    const-string v4, "2"

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker$3;->this$0:Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;->access$100(Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p1

    .line 66
    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->getStoreDisplayDetailPage(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
