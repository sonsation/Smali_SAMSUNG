.class Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker$2;
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
        "Lcom/samsung/android/app/music/common/model/SimpleTrackList;",
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
    .line 69
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker$2;->this$0:Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;)Lcom/samsung/android/app/music/common/model/SimpleTrackList;
    .locals 8
    .param p1, "storeMainResponseModel"    # Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;

    .prologue
    .line 72
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doWork : map model - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v1, Lcom/samsung/android/app/music/common/model/SimpleTrackList;

    invoke-direct {v1}, Lcom/samsung/android/app/music/common/model/SimpleTrackList;-><init>()V

    .line 74
    .local v1, "list":Lcom/samsung/android/app/music/common/model/SimpleTrackList;
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;->getResultCode()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/music/common/model/SimpleTrackList;->setResultCode(I)V

    .line 75
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/music/common/model/SimpleTrackList;->setId(Ljava/lang/String;)V

    .line 77
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v4, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;->getDisplayList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .line 80
    .local v0, "group":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getContentList()Ljava/util/List;

    move-result-object v3

    .line 81
    .local v3, "topCharts":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;>;"
    if-eqz v3, :cond_0

    .line 82
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    .line 83
    .local v2, "topChartTrack":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;
    invoke-static {v2}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->from(Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;)Lcom/samsung/android/app/music/common/model/SimpleTrack;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    .end local v0    # "group":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    .end local v2    # "topChartTrack":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;
    .end local v3    # "topCharts":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;>;"
    :cond_1
    invoke-virtual {v1, v4}, Lcom/samsung/android/app/music/common/model/SimpleTrackList;->setTrackList(Ljava/util/List;)V

    .line 89
    return-object v1
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    check-cast p1, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/worker/store/GetTopChartTrackWorker$2;->call(Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;)Lcom/samsung/android/app/music/common/model/SimpleTrackList;

    move-result-object v0

    return-object v0
.end method
