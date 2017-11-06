.class public Lcom/samsung/android/app/music/service/milk/worker/UpdateUserInfoWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "UpdateUserInfoWorker.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAdultCertifyYn:Ljava/lang/String;

.field private mPushInfo:Lcom/samsung/android/app/music/common/model/PushInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/samsung/android/app/music/service/milk/worker/UpdateUserInfoWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/milk/worker/UpdateUserInfoWorker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/app/music/common/model/PushInfo;Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "adultCertifyYn"    # Ljava/lang/String;
    .param p5, "pushInfo"    # Lcom/samsung/android/app/music/common/model/PushInfo;
    .param p6, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 23
    const/16 v4, 0x194

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 24
    iput-object p4, p0, Lcom/samsung/android/app/music/service/milk/worker/UpdateUserInfoWorker;->mAdultCertifyYn:Ljava/lang/String;

    .line 25
    iput-object p5, p0, Lcom/samsung/android/app/music/service/milk/worker/UpdateUserInfoWorker;->mPushInfo:Lcom/samsung/android/app/music/common/model/PushInfo;

    .line 26
    if-eqz p4, :cond_0

    .line 27
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getUserInfo()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/samsung/android/app/music/common/model/UserInfo;->setAdultCertifyYn(Ljava/lang/String;)V

    .line 29
    :cond_0
    return-void
.end method


# virtual methods
.method protected doWorkInternal()Lrx/Observable;
    .locals 5

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/UpdateUserInfoWorker;->getRadioTransport()Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/worker/UpdateUserInfoWorker;->mReqId:I

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/UpdateUserInfoWorker;->mAdultCertifyYn:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/UpdateUserInfoWorker;->mPushInfo:Lcom/samsung/android/app/music/common/model/PushInfo;

    .line 34
    invoke-static {v4}, Lcom/samsung/android/app/music/common/model/PushInfoArray;->create(Lcom/samsung/android/app/music/common/model/PushInfo;)Lcom/samsung/android/app/music/common/model/PushInfoArray;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;->updateUserInfo(ILjava/lang/String;Ljava/util/Map;Lcom/samsung/android/app/music/common/model/PushInfoArray;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/samsung/android/app/music/service/milk/worker/UpdateUserInfoWorker;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onApiHandled(IIILjava/lang/Object;I)V
    .locals 0
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Ljava/lang/Object;
    .param p5, "errorCode"    # I

    .prologue
    .line 46
    return-void
.end method
