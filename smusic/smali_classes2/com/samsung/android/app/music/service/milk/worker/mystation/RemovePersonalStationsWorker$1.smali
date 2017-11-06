.class Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker$1;
.super Ljava/lang/Object;
.source "RemovePersonalStationsWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;->doWorkInternal()Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 45
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;->access$000(Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;

    invoke-static {v3}, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;->access$100(Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;)Ljava/util/List;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v4, v6, v2}, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;->access$200(Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 55
    :goto_1
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 53
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;

    new-array v2, v5, [Ljava/lang/Object;

    const v3, -0x1869f

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v5, v6, v2}, Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;->access$300(Lcom/samsung/android/app/music/service/milk/worker/mystation/RemovePersonalStationsWorker;ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    goto :goto_1
.end method
