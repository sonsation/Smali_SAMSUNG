.class public abstract Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.super Ljava/lang/Object;
.source "BaseWorker.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/net/OnApiCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/app/music/common/model/ResponseModel;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/music/service/milk/net/OnApiCallback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mApiInterceptCallback:Lcom/samsung/android/app/music/service/milk/net/OnApiCallback;

.field protected final mAppId:I

.field protected mContext:Landroid/content/Context;

.field protected mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

.field protected final mReqId:I

.field protected final mReqType:I

.field private mSuccessResult:Lcom/samsung/android/app/music/common/model/ResponseModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "reqType"    # I
    .param p5, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 61
    .local p0, "this":Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;, "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->mContext:Landroid/content/Context;

    .line 63
    iput p2, p0, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->mAppId:I

    .line 64
    iput p3, p0, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->mReqId:I

    .line 65
    iput p4, p0, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->mReqType:I

    .line 66
    iput-object p5, p0, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .line 67
    return-void
.end method


# virtual methods
.method public final doWork()V
    .locals 5

    .prologue
    .line 53
    .local p0, "this":Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;, "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker<TT;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->doWorkInternal()Lrx/Observable;

    move-result-object v0

    .line 54
    .local v0, "worker":Lrx/Observable;, "Lrx/Observable<TT;>;"
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->scheduler()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->mReqId:I

    iget v4, p0, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->mReqType:I

    invoke-direct {v2, v3, v4, p0}, Lcom/samsung/android/app/music/service/milk/net/subscriber/BaseSubscriber;-><init>(IILcom/samsung/android/app/music/service/milk/net/OnApiCallback;)V

    .line 56
    invoke-virtual {v1, v2}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 58
    :cond_0
    return-void
.end method

.method protected abstract doWorkInternal()Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected getAdultSetting()Ljava/lang/String;
    .locals 3

    .prologue
    .line 173
    .local p0, "this":Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;, "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker<TT;>;"
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/LoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getUserInfo()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v0

    .line 175
    .local v0, "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/UserInfo;->getIsAdult()Ljava/lang/String;

    move-result-object v1

    .line 180
    :goto_0
    return-object v1

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getAdultSetting :  0 - loading default value"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v1, "0"

    goto :goto_0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 78
    .local p0, "this":Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;, "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDownloadTransport()Lcom/samsung/android/app/music/service/milk/net/transport/DownloadTransport;
    .locals 1

    .prologue
    .line 94
    .local p0, "this":Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;, "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/transport/DownloadTransport$Proxy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/net/transport/DownloadTransport;

    move-result-object v0

    return-object v0
.end method

.method protected getEncodedUrlParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 206
    .local p0, "this":Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;, "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker<TT;>;"
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 210
    .end local p1    # "param":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 207
    .restart local p1    # "param":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method protected getExplicitSetting()Ljava/lang/String;
    .locals 4

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;, "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker<TT;>;"
    const/4 v3, 0x0

    .line 185
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v1

    const-string v2, "explicit_option"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 186
    .local v0, "isExplicitEnabled":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 187
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 188
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getExtraTransport()Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport;
    .locals 1

    .prologue
    .line 90
    .local p0, "this":Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;, "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport$Proxy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/net/transport/ExtraTransport;

    move-result-object v0

    return-object v0
.end method

.method public abstract getLogTag()Ljava/lang/String;
.end method

.method protected getNoNetworkObservable()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;, "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker<TT;>;"
    new-instance v0, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker$1;-><init>(Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getRadioTransport()Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;
    .locals 1

    .prologue
    .line 86
    .local p0, "this":Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;, "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    move-result-object v0

    return-object v0
.end method

.method public getReqType()I
    .locals 1

    .prologue
    .line 107
    .local p0, "this":Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;, "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker<TT;>;"
    iget v0, p0, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->mReqType:I

    return v0
.end method

.method public getRequestId()I
    .locals 1

    .prologue
    .line 158
    .local p0, "this":Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;, "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker<TT;>;"
    iget v0, p0, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->mReqId:I

    return v0
.end method

.method public getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;
    .locals 1

    .prologue
    .line 82
    .local p0, "this":Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;, "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport$Proxy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v0

    return-object v0
.end method

.method public getSucessResult()Lcom/samsung/android/app/music/common/model/ResponseModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;, "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->mSuccessResult:Lcom/samsung/android/app/music/common/model/ResponseModel;

    return-object v0
.end method

.method protected varargs invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "rspType"    # I
    .param p2, "rspData"    # Landroid/os/Parcelable;
    .param p3, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 98
    .local p0, "this":Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;, "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    if-eqz v0, :cond_0

    .line 99
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 100
    .local v5, "i":Landroid/content/Intent;
    const-string/jumbo v0, "responseData"

    invoke-virtual {v5, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 101
    const-string/jumbo v0, "responseExtData"

    invoke-virtual {v5, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->mAppId:I

    iget v2, p0, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->mReqId:I

    iget v3, p0, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->mReqType:I

    move v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;->invokeBroadcast(IIIILandroid/content/Intent;)V

    .line 104
    .end local v5    # "i":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public isDeviceUser()Z
    .locals 3

    .prologue
    .line 166
    .local p0, "this":Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;, "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker<TT;>;"
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/LoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getUserInfo()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v0

    .line 168
    .local v0, "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserStatus()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 169
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserStatus()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onApiCalled(II)V
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I

    .prologue
    .line 129
    .local p0, "this":Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;, "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker<TT;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApiCalled requestId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requestType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->mApiInterceptCallback:Lcom/samsung/android/app/music/service/milk/net/OnApiCallback;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->mApiInterceptCallback:Lcom/samsung/android/app/music/service/milk/net/OnApiCallback;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/music/service/milk/net/OnApiCallback;->onApiCalled(II)V

    .line 134
    :cond_0
    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p5, "errorCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIITT;I)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;, "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker<TT;>;"
    .local p4, "successResult":Lcom/samsung/android/app/music/common/model/ResponseModel;, "TT;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApiHandled requestId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requestType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " responseType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errorCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->mSuccessResult:Lcom/samsung/android/app/music/common/model/ResponseModel;

    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->mApiInterceptCallback:Lcom/samsung/android/app/music/service/milk/net/OnApiCallback;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->mApiInterceptCallback:Lcom/samsung/android/app/music/service/milk/net/OnApiCallback;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 153
    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/net/OnApiCallback;->onApiHandled(IIILjava/lang/Object;I)V

    .line 155
    :cond_0
    return-void
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 35
    .local p0, "this":Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;, "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker<TT;>;"
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    return-void
.end method

.method public scheduler()Lrx/Scheduler;
    .locals 1

    .prologue
    .line 70
    .local p0, "this":Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;, "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public serializeIds(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "this":Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;, "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker<TT;>;"
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 193
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 194
    .local v1, "index":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 195
    .local v0, "id":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 196
    const-string v4, "@"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    add-int/lit8 v1, v1, 0x1

    .line 200
    goto :goto_0

    .line 201
    .end local v0    # "id":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public setOnApiInterceptCallback(Lcom/samsung/android/app/music/service/milk/net/OnApiCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/app/music/service/milk/net/OnApiCallback;

    .prologue
    .line 162
    .local p0, "this":Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;, "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker<TT;>;"
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->mApiInterceptCallback:Lcom/samsung/android/app/music/service/milk/net/OnApiCallback;

    .line 163
    return-void
.end method
