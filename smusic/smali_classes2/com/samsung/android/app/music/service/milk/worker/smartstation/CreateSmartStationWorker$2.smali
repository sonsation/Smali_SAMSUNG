.class Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker$2;
.super Ljava/lang/Object;
.source "CreateSmartStationWorker.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


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
        "Lrx/Observable$OnSubscribe",
        "<",
        "Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker$2;->this$0:Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 61
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker$2;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker$2;->this$0:Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker$2;->this$0:Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;->access$600(Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;)Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;->access$502(Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;)Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker$2;->this$0:Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;->access$500(Lcom/samsung/android/app/music/service/milk/worker/smartstation/CreateSmartStationWorker;)Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 66
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    .line 67
    return-void
.end method
