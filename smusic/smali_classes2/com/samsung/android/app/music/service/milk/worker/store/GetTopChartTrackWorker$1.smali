.class Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker$1;
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
        "Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    check-cast p1, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker$1;->call(Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call(Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;)Ljava/lang/String;
    .locals 5
    .param p1, "storeMainResponseModel"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;

    .prologue
    .line 47
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doWork : getStoreTopNewUpdate - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;->getDisplayList()Ljava/util/List;

    move-result-object v1

    .line 49
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .line 50
    .local v0, "displayItem":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    const-string v3, "2"

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getDisplayGroup()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 51
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getDisplayType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;

    invoke-static {v4}, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;->access$100(Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getDisplayId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;->access$202(Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;->access$200(Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;)Ljava/lang/String;

    move-result-object v2

    .line 56
    .end local v0    # "displayItem":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
