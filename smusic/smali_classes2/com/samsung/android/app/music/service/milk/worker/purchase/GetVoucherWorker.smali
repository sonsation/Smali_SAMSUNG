.class public Lcom/samsung/android/app/music/service/milk/worker/purchase/GetVoucherWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "GetVoucherWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/purchase/VoucherList;",
        ">;"
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "GetVoucherWorker"


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    .prologue
    .line 27
    const/16 v4, 0x27e4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 28
    return-void
.end method

.method private declared-synchronized updateVoucher(Lcom/samsung/android/app/music/common/model/purchase/VoucherList;)V
    .locals 4
    .param p1, "item"    # Lcom/samsung/android/app/music/common/model/purchase/VoucherList;

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/purchase/VoucherList;->getList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetVoucherWorker;->mContext:Landroid/content/Context;

    .line 87
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$Vouchers;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :goto_0
    monitor-exit p0

    return-void

    .line 89
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetVoucherWorker;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$Vouchers;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    .line 90
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/purchase/VoucherList;->toContentValuesArray()[Landroid/content/ContentValues;

    move-result-object v2

    .line 89
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->bulkInsert(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected doWorkInternal()Lrx/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/purchase/VoucherList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    const-string v0, "GetVoucherWorker"

    const-string v1, "doWorkInternal is called"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetVoucherWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetVoucherWorker;->mReqId:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetVoucherWorker;->mContext:Landroid/content/Context;

    .line 34
    invoke-static {v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->getChannelId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->getVoucher(ILjava/util/Map;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "GetVoucherWorker"

    return-object v0
.end method

.method public onApiCalled(II)V
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I

    .prologue
    .line 44
    const-string v0, "GetVoucherWorker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApiCalled requestType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public bridge synthetic onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6

    .prologue
    .line 23
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/purchase/VoucherList;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetVoucherWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/purchase/VoucherList;I)V

    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/purchase/VoucherList;I)V
    .locals 2
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/purchase/VoucherList;
    .param p5, "errorCode"    # I

    .prologue
    .line 50
    const-string v0, "GetVoucherWorker"

    const-string v1, "onApiHandled onApiHandled is called "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    packed-switch p2, :pswitch_data_0

    .line 81
    :goto_0
    :pswitch_0
    return-void

    .line 53
    :pswitch_1
    packed-switch p3, :pswitch_data_1

    goto :goto_0

    .line 55
    :pswitch_2
    const-string v0, "GetVoucherWorker"

    const-string v1, "GET_VOUCHER Request Succeed "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0, p4}, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetVoucherWorker;->updateVoucher(Lcom/samsung/android/app/music/common/model/purchase/VoucherList;)V

    goto :goto_0

    .line 66
    :pswitch_3
    const-string v0, "GetVoucherWorker"

    const-string v1, "GET_VOUCHER Request Canceled "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :pswitch_4
    const-string v0, "GetVoucherWorker"

    const-string v1, "GET_VOUCHER  Response time out"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x27e4
        :pswitch_1
    .end packed-switch

    .line 53
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 23
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/purchase/VoucherList;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/purchase/GetVoucherWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/purchase/VoucherList;I)V

    return-void
.end method
