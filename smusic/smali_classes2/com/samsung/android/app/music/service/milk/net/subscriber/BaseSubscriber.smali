.class public Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;
.super Lrx/Subscriber;
.source "BaseSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/app/music/common/model/ResponseModel;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mCallback:Lcom/samsung/android/app/music/service/milk/net/OnApiCallback;

.field protected mReqId:I

.field protected mReqType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILcom/samsung/android/app/music/service/milk/net/OnApiCallback;)V
    .locals 0
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "callback"    # Lcom/samsung/android/app/music/service/milk/net/OnApiCallback;

    .prologue
    .line 25
    .local p0, "this":Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;, "Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber<TT;>;"
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 26
    iput-object p3, p0, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;->mCallback:Lcom/samsung/android/app/music/service/milk/net/OnApiCallback;

    .line 27
    iput p1, p0, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;->mReqId:I

    .line 28
    iput p2, p0, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;->mReqType:I

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;)Lcom/samsung/android/app/music/service/milk/net/OnApiCallback;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;->mCallback:Lcom/samsung/android/app/music/service/milk/net/OnApiCallback;

    return-object v0
.end method

.method private handleException()V
    .locals 2

    .prologue
    .line 80
    .local p0, "this":Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;, "Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber<TT;>;"
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;->get()Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/net/observable/ConnectivityObservable;->check()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber$1;-><init>(Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;)V

    .line 81
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 96
    return-void
.end method


# virtual methods
.method public getRequestType()I
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;, "Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber<TT;>;"
    iget v0, p0, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;->mReqType:I

    return v0
.end method

.method public onCompleted()V
    .locals 2

    .prologue
    .line 45
    .local p0, "this":Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;, "Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber<TT;>;"
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCompleted"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 50
    .local p0, "this":Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;, "Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;->mCallback:Lcom/samsung/android/app/music/service/milk/net/OnApiCallback;

    if-nez v0, :cond_0

    .line 51
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onError no callback"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    :goto_0
    return-void

    .line 54
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onError error"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;->mCallback:Lcom/samsung/android/app/music/service/milk/net/OnApiCallback;

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;->mReqId:I

    iget v2, p0, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;->mReqType:I

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, -0x3

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/net/OnApiCallback;->onApiHandled(IIILjava/lang/Object;I)V

    goto :goto_0

    .line 60
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;->handleException()V

    goto :goto_0
.end method

.method public onNext(Lcom/samsung/android/app/music/common/model/ResponseModel;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;, "Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber<TT;>;"
    .local p1, "t":Lcom/samsung/android/app/music/common/model/ResponseModel;, "TT;"
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNext result - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;->mCallback:Lcom/samsung/android/app/music/service/milk/net/OnApiCallback;

    if-eqz v0, :cond_1

    .line 68
    const/4 v3, 0x0

    .line 69
    .local v3, "responseType":I
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/ResponseModel;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const/4 v3, 0x1

    .line 72
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNext requestType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;->getRequestType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " responseType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 74
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/ResponseModel;->getResultCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;->mCallback:Lcom/samsung/android/app/music/service/milk/net/OnApiCallback;

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;->mReqId:I

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;->getRequestType()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/ResponseModel;->getResultCode()I

    move-result v5

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/net/OnApiCallback;->onApiHandled(IIILjava/lang/Object;I)V

    .line 77
    .end local v3    # "responseType":I
    :cond_1
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 15
    .local p0, "this":Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;, "Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber<TT;>;"
    check-cast p1, Lcom/samsung/android/app/music/common/model/ResponseModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;->onNext(Lcom/samsung/android/app/music/common/model/ResponseModel;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 37
    .local p0, "this":Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;, "Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber<TT;>;"
    invoke-super {p0}, Lrx/Subscriber;->onStart()V

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;->mCallback:Lcom/samsung/android/app/music/service/milk/net/OnApiCallback;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;->mCallback:Lcom/samsung/android/app/music/service/milk/net/OnApiCallback;

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;->mReqId:I

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;->getRequestType()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/music/service/milk/net/OnApiCallback;->onApiCalled(II)V

    .line 41
    :cond_0
    return-void
.end method
