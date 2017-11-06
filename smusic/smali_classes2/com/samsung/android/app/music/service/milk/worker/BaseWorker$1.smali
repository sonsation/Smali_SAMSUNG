.class Lcom/samsung/android/app/music/service/milk/worker/BaseWorker$1;
.super Ljava/lang/Object;
.source "BaseWorker.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->getNoNetworkObservable()Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;

    .prologue
    .line 113
    .local p0, "this":Lcom/samsung/android/app/music/service/milk/worker/BaseWorker$1;, "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker$1;"
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker$1;->this$0:Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 113
    .local p0, "this":Lcom/samsung/android/app/music/service/milk/worker/BaseWorker$1;, "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker$1;"
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker$1;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lcom/samsung/android/app/music/service/milk/worker/BaseWorker$1;, "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker$1;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    new-instance v1, Ljava/net/ConnectException;

    const-string v2, "no network. so api does not called."

    invoke-direct {v1, v2}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 123
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
