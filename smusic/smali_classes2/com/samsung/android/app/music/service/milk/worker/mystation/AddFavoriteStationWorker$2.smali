.class Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker$2;
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
    .line 66
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker$2;->this$0:Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 70
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker$2;->this$0:Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker$2;->this$0:Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->access$000(Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, -0x270f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v6, v2, v3}, Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;->access$700(Lcom/samsung/android/app/music/service/milk/worker/mystation/AddFavoriteStationWorker;ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 75
    const-string v1, "AddFavoriteStationWorker"

    const-string v2, "doWorkInternal : station id is empty"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
