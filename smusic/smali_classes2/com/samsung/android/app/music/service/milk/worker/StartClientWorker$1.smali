.class Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker$1;
.super Ljava/lang/Object;
.source "StartClientWorker.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;->doWorkInternal()Lrx/Observable;
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
        "Lcom/samsung/android/app/music/common/model/ServerTime;",
        "Lrx/Observable",
        "<",
        "Lcom/samsung/android/app/music/common/model/StartClientInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 47
    check-cast p1, Lcom/samsung/android/app/music/common/model/ServerTime;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker$1;->call(Lcom/samsung/android/app/music/common/model/ServerTime;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Lcom/samsung/android/app/music/common/model/ServerTime;)Lrx/Observable;
    .locals 9
    .param p1, "serverTime"    # Lcom/samsung/android/app/music/common/model/ServerTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/common/model/ServerTime;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/StartClientInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/ServerTime;->getCurTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->setServerTime(Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;

    iget-object v0, v0, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->getMccSimOperator()Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "mcc":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;

    iget-object v0, v0, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->getMncSimOperator()Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, "mnc":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;

    iget-object v0, v0, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->hasEasterEgg(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v5, "1"

    .line 54
    .local v5, "testYn":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->getShortenPackageName()Ljava/lang/String;

    move-result-object v6

    .line 55
    .local v6, "packageName":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;

    iget-object v0, v0, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->IsRoaming(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v7, "1"

    .line 56
    .local v7, "isRoaming":Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;

    iget-object v0, v0, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/transport/InitTransport$Factory;->create(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/net/transport/InitTransport;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;->getRequestId()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;

    iget-object v2, v2, Lcom/samsung/android/app/music/service/milk/worker/StartClientWorker;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    .line 57
    invoke-static {v2, v8}, Lcom/samsung/android/app/music/service/milk/net/CommonQueryMap;->getBasicQuery(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 56
    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/app/music/service/milk/net/transport/InitTransport;->startClient(ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0

    .line 53
    .end local v5    # "testYn":Ljava/lang/String;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "isRoaming":Ljava/lang/String;
    :cond_0
    const-string v5, "0"

    goto :goto_0

    .line 55
    .restart local v5    # "testYn":Ljava/lang/String;
    .restart local v6    # "packageName":Ljava/lang/String;
    :cond_1
    const-string v7, "0"

    goto :goto_1
.end method
