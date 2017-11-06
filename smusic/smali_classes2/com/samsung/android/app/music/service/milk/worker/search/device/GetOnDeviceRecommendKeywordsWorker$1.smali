.class Lcom/samsung/android/app/music/service/milk/worker/search/device/GetOnDeviceRecommendKeywordsWorker$1;
.super Ljava/lang/Thread;
.source "GetOnDeviceRecommendKeywordsWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/worker/search/device/GetOnDeviceRecommendKeywordsWorker;->doWorkInternal()Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/worker/search/device/GetOnDeviceRecommendKeywordsWorker;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/worker/search/device/GetOnDeviceRecommendKeywordsWorker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/worker/search/device/GetOnDeviceRecommendKeywordsWorker;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/worker/search/device/GetOnDeviceRecommendKeywordsWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/search/device/GetOnDeviceRecommendKeywordsWorker;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 42
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    const-string v1, "GetOnDeviceRecommendKeywordsWorker"

    const-string v2, "doWork >>> Search Keyword is empty"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/search/device/GetOnDeviceRecommendKeywordsWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/search/device/GetOnDeviceRecommendKeywordsWorker;

    const/4 v2, 0x0

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    const v5, -0x1869f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v6, v2, v3}, Lcom/samsung/android/app/music/service/milk/worker/search/device/GetOnDeviceRecommendKeywordsWorker;->access$000(Lcom/samsung/android/app/music/service/milk/worker/search/device/GetOnDeviceRecommendKeywordsWorker;ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 48
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
