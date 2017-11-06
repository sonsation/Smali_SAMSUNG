.class Lcom/samsung/android/app/music/service/milk/worker/GetRecommendStationInfoWorker$1;
.super Ljava/lang/Thread;
.source "GetRecommendStationInfoWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/worker/GetRecommendStationInfoWorker;->doWorkInternal()Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/worker/GetRecommendStationInfoWorker;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/worker/GetRecommendStationInfoWorker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/worker/GetRecommendStationInfoWorker;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/worker/GetRecommendStationInfoWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/GetRecommendStationInfoWorker;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 38
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    const-string v4, "GetRecommendStationInfoWorker"

    const-string v5, "[doWork] Send Default Station"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/GetRecommendStationInfoWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/GetRecommendStationInfoWorker;

    .line 44
    invoke-virtual {v4}, Lcom/samsung/android/app/music/service/milk/worker/GetRecommendStationInfoWorker;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Station;->getFirstSpotLightStationID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "stationID":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkrecommend/RecommedStation;>;"
    new-instance v4, Lcom/samsung/android/app/music/common/model/milkrecommend/RecommedStation;

    invoke-direct {v4, v2}, Lcom/samsung/android/app/music/common/model/milkrecommend/RecommedStation;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v3, Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationResponseModel;

    invoke-direct {v3, v1}, Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationResponseModel;-><init>(Ljava/util/List;)V

    .line 49
    .local v3, "successResult":Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationResponseModel;
    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/GetRecommendStationInfoWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/GetRecommendStationInfoWorker;

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v3, v5}, Lcom/samsung/android/app/music/service/milk/worker/GetRecommendStationInfoWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 50
    return-void

    .line 39
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkrecommend/RecommedStation;>;"
    .end local v2    # "stationID":Ljava/lang/String;
    .end local v3    # "successResult":Lcom/samsung/android/app/music/common/model/milkrecommend/RecommendStationResponseModel;
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
