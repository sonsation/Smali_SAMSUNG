.class Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker$1;
.super Ljava/lang/Object;
.source "ReplaceDeepLinkStationWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;->doWorkInternal()Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 39
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;->access$000(Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.samsung.radio.fragment.deep_link_station_id"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "preStationId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 41
    new-array v1, v7, [Ljava/lang/String;

    .line 42
    .local v1, "stationIDs":[Ljava/lang/String;
    aput-object v0, v1, v6

    .line 43
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MyStationDAO;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->delete([Ljava/lang/String;)I

    .line 45
    .end local v1    # "stationIDs":[Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->getInstance()Lcom/samsung/android/app/music/provider/dao/MyStationDAO;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;

    invoke-static {v3}, Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;->access$100(Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Lcom/samsung/android/app/music/provider/dao/MyStationDAO;->insert(Lcom/samsung/android/app/music/common/model/Station;Z)J

    .line 46
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;->access$200(Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.samsung.radio.fragment.deep_link_station_id"

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;

    invoke-static {v4}, Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;->access$100(Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/common/preferences/Pref;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;

    invoke-static {v3}, Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;->access$100(Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;

    invoke-static {v5}, Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;->access$300(Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;

    invoke-static {v5}, Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;->access$400(Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v6, v3, v4}, Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;->access$500(Lcom/samsung/android/app/music/service/milk/worker/mystation/ReplaceDeepLinkStationWorker;ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 49
    return-void
.end method
