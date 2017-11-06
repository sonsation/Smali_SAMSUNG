.class Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker$1;
.super Ljava/lang/Object;
.source "CreateSmartStationWorker.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;->doWorkInternal()Lrx/Observable;
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
        "Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;",
        "Lrx/Observable",
        "<",
        "Lcom/samsung/android/app/music/common/model/mystation/MyStationInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 68
    check-cast p1, Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker$1;->call(Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;)Lrx/Observable;
    .locals 8
    .param p1, "createSmartStationRequest"    # Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/mystation/MyStationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;->access$000(Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;)Ljava/lang/String;

    move-result-object v4

    .line 72
    .local v4, "adultSetting":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;->access$100(Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;)Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, "explicitSetting":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;->getExtraTransport()Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport;->getHttpUrl()Ljava/lang/String;

    move-result-object v7

    .line 76
    .local v7, "extraUrl":Ljava/lang/String;
    const/4 v6, 0x0

    .line 77
    .local v6, "forceCreate":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/DebugCompat;->isProductDev()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;->access$200(Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    move-result-object v0

    const-string/jumbo v1, "smartStationForceCreateEnabled"

    const/4 v3, 0x0

    .line 79
    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const-string v6, "1"

    .line 83
    :cond_0
    const-string v0, "CreateSmartStationWorker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doWorkInternal. eng bin. force create mode - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_1
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 87
    const-string v0, "CreateSmartStationWorker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doWorkInternal : Connect to Extra Server ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;->getExtraTransport()Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;->access$300(Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;)I

    move-result v1

    move-object v3, p1

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport;->createSmartStation(ILjava/util/Map;Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    .line 90
    :cond_2
    const-string v0, "CreateSmartStationWorker"

    const-string v1, "doWorkInternal : Connect to Radio Server"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;->getRadioTransport()Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;->access$400(Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;)I

    move-result v1

    move-object v3, p1

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;->createSmartStation(ILjava/util/Map;Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    goto :goto_0
.end method
