.class public Lcom/samsung/android/app/music/service/milk/worker/GetPickListWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "GetPickListWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/PickList;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mPage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/samsung/android/app/music/service/milk/worker/GetPickListWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/milk/worker/GetPickListWorker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "page"    # I
    .param p5, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 20
    const/16 v4, 0x2905

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 21
    iput p4, p0, Lcom/samsung/android/app/music/service/milk/worker/GetPickListWorker;->mPage:I

    .line 22
    return-void
.end method


# virtual methods
.method protected doWorkInternal()Lrx/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/PickList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/GetPickListWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/GetPickListWorker;->getRequestId()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/app/music/service/milk/worker/GetPickListWorker;->mPage:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->getPickList(IILjava/util/Map;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/samsung/android/app/music/service/milk/worker/GetPickListWorker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/PickList;I)V
    .locals 2
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/PickList;
    .param p5, "errorCode"    # I

    .prologue
    .line 36
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    .line 37
    packed-switch p3, :pswitch_data_0

    .line 48
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p3, p4, v0}, Lcom/samsung/android/app/music/service/milk/worker/GetPickListWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 49
    return-void

    .line 39
    :pswitch_1
    sget-object v0, Lcom/samsung/android/app/music/service/milk/worker/GetPickListWorker;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onApiHandled() SUCCESS"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :pswitch_2
    sget-object v0, Lcom/samsung/android/app/music/service/milk/worker/GetPickListWorker;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onApiHandled() FAILURE"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :pswitch_3
    sget-object v0, Lcom/samsung/android/app/music/service/milk/worker/GetPickListWorker;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onApiHandled() RSP_ERR"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 13
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/PickList;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/GetPickListWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/PickList;I)V

    return-void
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 13
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/PickList;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/GetPickListWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/PickList;I)V

    return-void
.end method
