.class public Lcom/samsung/android/app/music/service/milk/worker/GetNoticeListWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "GetNoticeListWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/milknotice/NoticeItemList;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/samsung/android/app/music/service/milk/worker/GetNoticeListWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/milk/worker/GetNoticeListWorker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 22
    const/16 v4, 0xb

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected doWorkInternal()Lrx/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/milknotice/NoticeItemList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/GetNoticeListWorker;->getRadioTransport()Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/worker/GetNoticeListWorker;->mReqId:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;->noticeList(ILjava/util/Map;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/samsung/android/app/music/service/milk/worker/GetNoticeListWorker;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public onApiCalled(II)V
    .locals 0
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiCalled(II)V

    .line 33
    return-void
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 16
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/milknotice/NoticeItemList;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/GetNoticeListWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/milknotice/NoticeItemList;I)V

    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/milknotice/NoticeItemList;I)V
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/milknotice/NoticeItemList;
    .param p5, "errorCode"    # I

    .prologue
    .line 38
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 40
    packed-switch p3, :pswitch_data_0

    .line 47
    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p3, p4, v0}, Lcom/samsung/android/app/music/service/milk/worker/GetNoticeListWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 48
    return-void

    .line 42
    :pswitch_0
    sget-object v0, Lcom/samsung/android/app/music/service/milk/worker/GetNoticeListWorker;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApiHandled - Get Notice list success : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 43
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/milknotice/NoticeItemList;->getNoticeList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 16
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/milknotice/NoticeItemList;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/GetNoticeListWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/milknotice/NoticeItemList;I)V

    return-void
.end method
