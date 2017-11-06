.class Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker$1;
.super Ljava/lang/Object;
.source "GetPersonalStationInfoWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;->doWorkInternal()Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 42
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;

    invoke-static {v3}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;->access$000(Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;

    invoke-static {v4}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;->access$100(Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getStation(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v2

    .line 48
    .local v2, "stationInfo":Lcom/samsung/android/app/music/common/model/Station;
    if-nez v2, :cond_0

    .line 49
    const-string v3, "GetPersonalStationInfoWorker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doWorkInternal : Device User Station is not existed in DB - ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;

    invoke-static {v5}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;->access$100(Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;

    const/4 v4, 0x0

    new-array v5, v8, [Ljava/lang/Object;

    const v6, -0x1869f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v8, v4, v5}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;->access$200(Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 57
    :goto_1
    return-void

    .line 43
    .end local v2    # "stationInfo":Lcom/samsung/android/app/music/common/model/Station;
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 52
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "stationInfo":Lcom/samsung/android/app/music/common/model/Station;
    :cond_0
    const-string v3, "GetPersonalStationInfoWorker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doWorkInternal : Device User get Station info from DB - ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;

    invoke-static {v5}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;->access$100(Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/StationSeedDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/StationSeedDAO;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;

    invoke-static {v4}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;->access$100(Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/provider/dao/StationSeedDAO;->getSeeds(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 54
    .local v1, "seedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/Seed;>;"
    invoke-virtual {v2, v1}, Lcom/samsung/android/app/music/common/model/Station;->setSeedList(Ljava/util/ArrayList;)V

    .line 55
    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v7, v2, v4}, Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;->access$300(Lcom/samsung/android/app/music/service/milk/worker/mystation/GetPersonalStationInfoWorker;ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    goto :goto_1
.end method
