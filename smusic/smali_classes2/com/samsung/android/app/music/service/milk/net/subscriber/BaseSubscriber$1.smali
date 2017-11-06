.class Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber$1;
.super Ljava/lang/Object;
.source "BaseSubscriber.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;->handleException()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<",
        "Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;

    .prologue
    .line 81
    .local p0, "this":Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber$1;, "Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber$1;"
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber$1;->this$0:Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;)V
    .locals 6
    .param p1, "connectionState"    # Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber$1;, "Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber$1;"
    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 84
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;->CONNECT:Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;

    .line 85
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber$1;->this$0:Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;->access$000(Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;)Lcom/samsung/android/app/music/service/milk/net/OnApiCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber$1;->this$0:Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;

    iget v1, v1, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;->mReqId:I

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber$1;->this$0:Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;

    iget v2, v2, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;->mReqType:I

    const/4 v5, -0x3

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/net/OnApiCallback;->onApiHandled(IIILjava/lang/Object;I)V

    .line 94
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber$1;->this$0:Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;->access$000(Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;)Lcom/samsung/android/app/music/service/milk/net/OnApiCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber$1;->this$0:Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;

    iget v1, v1, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;->mReqId:I

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber$1;->this$0:Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;

    iget v2, v2, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;->mReqType:I

    const/4 v5, -0x2

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/net/OnApiCallback;->onApiHandled(IIILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 81
    .local p0, "this":Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber$1;, "Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber$1;"
    check-cast p1, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber$1;->call(Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable$ConnectionState;)V

    return-void
.end method
