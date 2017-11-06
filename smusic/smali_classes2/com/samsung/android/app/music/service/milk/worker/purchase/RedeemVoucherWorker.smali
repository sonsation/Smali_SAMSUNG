.class public Lcom/samsung/android/app/music/service/milk/worker/purchase/RedeemVoucherWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "RedeemVoucherWorker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/service/milk/worker/BaseWorker",
        "<",
        "Lcom/samsung/android/app/music/common/model/ResponseModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "RedeemVoucherWorker"


# instance fields
.field private final id:J


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;J)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;
    .param p5, "id"    # J

    .prologue
    .line 32
    const/16 v4, 0x27e6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 34
    iput-wide p5, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/RedeemVoucherWorker;->id:J

    .line 35
    return-void
.end method


# virtual methods
.method protected doWorkInternal()Lrx/Observable;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lcom/samsung/android/app/music/common/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    const-string v2, "RedeemVoucherWorker"

    const-string v3, "doWorkInternal is called"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/app/music/service/milk/worker/purchase/RedeemVoucherWorker;->id:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 42
    .local v5, "selection":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/service/milk/worker/purchase/RedeemVoucherWorker;->mContext:Landroid/content/Context;

    .line 43
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$Vouchers;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 42
    .local v17, "c":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 44
    if-eqz v17, :cond_2

    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 46
    const-string/jumbo v2, "voucherId"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 47
    .local v10, "voucher_id":I
    const-string v2, "productId"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 48
    .local v12, "voucher_product_id":Ljava/lang/String;
    const-string/jumbo v2, "voucherCode"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 49
    .local v11, "voucher_code":Ljava/lang/String;
    const-string v2, "pricingTypeCode"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 50
    .local v13, "voucher_pricing_type_code":Ljava/lang/String;
    const-string v2, "cuTypeCode"

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 52
    .local v14, "voucher_cu_type_code":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/service/milk/worker/purchase/RedeemVoucherWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/app/music/service/milk/worker/purchase/RedeemVoucherWorker;->mReqId:I

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/service/milk/worker/purchase/RedeemVoucherWorker;->mContext:Landroid/content/Context;

    .line 53
    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->getChannelId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/service/milk/worker/purchase/RedeemVoucherWorker;->mContext:Landroid/content/Context;

    .line 56
    invoke-static {v2}, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->getMccSimOperator()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/service/milk/worker/purchase/RedeemVoucherWorker;->mContext:Landroid/content/Context;

    .line 57
    invoke-static {v2}, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/util/MilkTelephonyManager;->getMncSimOperator()Ljava/lang/String;

    move-result-object v16

    .line 53
    invoke-interface/range {v6 .. v16}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->redeemVoucher(ILjava/util/Map;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 59
    if-eqz v17, :cond_0

    if-eqz v3, :cond_1

    :try_start_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 61
    .end local v10    # "voucher_id":I
    .end local v11    # "voucher_code":Ljava/lang/String;
    .end local v12    # "voucher_product_id":Ljava/lang/String;
    .end local v13    # "voucher_pricing_type_code":Ljava/lang/String;
    .end local v14    # "voucher_cu_type_code":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 59
    .restart local v10    # "voucher_id":I
    .restart local v11    # "voucher_code":Ljava/lang/String;
    .restart local v12    # "voucher_product_id":Ljava/lang/String;
    .restart local v13    # "voucher_pricing_type_code":Ljava/lang/String;
    .restart local v14    # "voucher_cu_type_code":Ljava/lang/String;
    :catch_0
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v10    # "voucher_id":I
    .end local v11    # "voucher_code":Ljava/lang/String;
    .end local v12    # "voucher_product_id":Ljava/lang/String;
    .end local v13    # "voucher_pricing_type_code":Ljava/lang/String;
    .end local v14    # "voucher_cu_type_code":Ljava/lang/String;
    :cond_2
    if-eqz v17, :cond_3

    if-eqz v3, :cond_4

    :try_start_2
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 60
    :cond_3
    :goto_1
    const-string v2, "RedeemVoucherWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doWorkInternal fail to query id - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/app/music/service/milk/worker/purchase/RedeemVoucherWorker;->id:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const/4 v2, 0x0

    goto :goto_0

    .line 59
    :catch_1
    move-exception v2

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 42
    :catch_2
    move-exception v2

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 59
    :catchall_0
    move-exception v3

    move-object/from16 v18, v3

    move-object v3, v2

    move-object/from16 v2, v18

    :goto_2
    if-eqz v17, :cond_5

    if-eqz v3, :cond_6

    :try_start_4
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_3
    throw v2

    :catch_3
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v2

    goto :goto_2
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "RedeemVoucherWorker"

    return-object v0
.end method

.method public onApiCalled(II)V
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I

    .prologue
    .line 71
    const-string v0, "RedeemVoucherWorker"

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

    .line 72
    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 5
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/ResponseModel;
    .param p5, "errorCode"    # I

    .prologue
    const/4 v4, 0x0

    .line 76
    const-string v1, "RedeemVoucherWorker"

    const-string v2, "onApiHandled onApiHandled is called "

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    packed-switch p2, :pswitch_data_0

    .line 110
    :goto_0
    return-void

    .line 79
    :pswitch_0
    packed-switch p3, :pswitch_data_1

    goto :goto_0

    .line 81
    :pswitch_1
    const-string v1, "RedeemVoucherWorker"

    const-string v2, "REDEEM_VOUCHER Request Succeed "

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0, p3, p4, v1}, Lcom/samsung/android/app/music/service/milk/worker/purchase/RedeemVoucherWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/RedeemVoucherWorker;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;

    invoke-interface {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;->getBinder()Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/service/milk/IMilkService$Stub;->getVoucher(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 92
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_2
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, p3, v1, v2}, Lcom/samsung/android/app/music/service/milk/worker/purchase/RedeemVoucherWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 95
    :pswitch_3
    const-string v1, "RedeemVoucherWorker"

    const-string v2, "REGISTER_VOUCHER Request Canceled "

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :pswitch_4
    const-string v1, "RedeemVoucherWorker"

    const-string v2, "REGISTER_VOUCHER  Response time out"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x27e6
        :pswitch_0
    .end packed-switch

    .line 79
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 25
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/purchase/RedeemVoucherWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    return-void
.end method
