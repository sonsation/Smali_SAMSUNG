.class Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker$1;
.super Ljava/lang/Object;
.source "AddFavoriteStationWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->doWorkInternal()Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 43
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;

    invoke-static {v3}, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->access$000(Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->access$100(Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    new-array v1, v6, [Ljava/lang/String;

    .line 50
    .local v1, "stationIDs":[Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->access$000(Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 52
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MyStationDAO;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->delete([Ljava/lang/String;)I

    .line 53
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->access$200(Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.samsung.radio.fragment.deep_link_station_id"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/common/preferences/Pref;->remove(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    .end local v1    # "stationIDs":[Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MyStationDAO;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;

    invoke-static {v3}, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->access$000(Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->insert(Lcom/samsung/android/app/music/common/model/Station;Z)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 57
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;

    invoke-static {v3}, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->access$000(Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;

    invoke-static {v5}, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->access$300(Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;

    invoke-static {v5}, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->access$400(Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v7, v3, v4}, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->access$500(Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 61
    :goto_1
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 59
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;

    const/4 v3, 0x0

    new-array v4, v6, [Ljava/lang/Object;

    const v5, -0x1869f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v6, v3, v4}, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->access$600(Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    goto :goto_1
.end method
