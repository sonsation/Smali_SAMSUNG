.class public Lcom/samsung/android/app/music/service/milk/worker/purchase/UpdatePurchasedTrackWorker;
.super Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;
.source "UpdatePurchasedTrackWorker.java"


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
.field public static final LOG_TAG:Ljava/lang/String; = "UpdatePurchasedTrackWorker"


# instance fields
.field private ext:Ljava/lang/String;

.field private ext_320:Ljava/lang/String;

.field private orderId:Ljava/lang/String;

.field private trackId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/samsung/android/app/music/service/milk/MilkServiceInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # I
    .param p3, "reqId"    # I
    .param p4, "service"    # Lcom/samsung/android/app/music/service/milk/MilkServiceInterface;
    .param p5, "trackId"    # Ljava/lang/String;
    .param p6, "orderId"    # Ljava/lang/String;
    .param p7, "ext"    # Ljava/lang/String;
    .param p8, "ext_320"    # Ljava/lang/String;

    .prologue
    .line 36
    const/16 v4, 0x27e7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/BaseWorker;-><init>(Landroid/content/Context;IIILcom/samsung/android/app/music/service/milk/MilkServiceInterface;)V

    .line 38
    iput-object p5, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/UpdatePurchasedTrackWorker;->trackId:Ljava/lang/String;

    .line 39
    iput-object p6, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/UpdatePurchasedTrackWorker;->orderId:Ljava/lang/String;

    .line 40
    iput-object p7, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/UpdatePurchasedTrackWorker;->ext:Ljava/lang/String;

    .line 41
    iput-object p8, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/UpdatePurchasedTrackWorker;->ext_320:Ljava/lang/String;

    .line 43
    const-string v0, "UpdatePurchasedTrackWorker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdatePurchasedTrackWorker trackid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " orderId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ext : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ext_320 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected doWorkInternal()Lrx/Observable;
    .locals 7
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
    .line 50
    const-string v0, "UpdatePurchasedTrackWorker"

    const-string v1, "doWorkInternal is called"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/worker/purchase/UpdatePurchasedTrackWorker;->getStoreTransport()Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/UpdatePurchasedTrackWorker;->trackId:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/UpdatePurchasedTrackWorker;->orderId:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/UpdatePurchasedTrackWorker;->ext:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/UpdatePurchasedTrackWorker;->ext_320:Ljava/lang/String;

    .line 52
    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/app/music/service/milk/net/transport/StoreTransport;->updatePurchasedTrack(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "UpdatePurchasedTrackWorker"

    return-object v0
.end method

.method public onApiCalled(II)V
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I

    .prologue
    .line 62
    const-string v0, "UpdatePurchasedTrackWorker"

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

    .line 63
    return-void
.end method

.method public onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V
    .locals 6
    .param p1, "requestId"    # I
    .param p2, "requestType"    # I
    .param p3, "responseType"    # I
    .param p4, "successResult"    # Lcom/samsung/android/app/music/common/model/ResponseModel;
    .param p5, "errorCode"    # I

    .prologue
    const/4 v5, 0x0

    .line 68
    const-string v2, "UpdatePurchasedTrackWorker"

    const-string v3, "onApiHandled onApiHandled is called "

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    packed-switch p2, :pswitch_data_0

    .line 104
    :goto_0
    return-void

    .line 71
    :pswitch_0
    packed-switch p3, :pswitch_data_1

    goto :goto_0

    .line 73
    :pswitch_1
    const-string v2, "UpdatePurchasedTrackWorker"

    const-string v3, "UPDATE_PURCHASED_TRACK Request Succeed "

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 75
    .local v0, "values":Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/UpdatePurchasedTrackWorker;->ext_320:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    const-string v2, "local_track_ext_320k"

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/UpdatePurchasedTrackWorker;->ext_320:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "track_id = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/UpdatePurchasedTrackWorker;->trackId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "where":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/UpdatePurchasedTrackWorker;->mContext:Landroid/content/Context;

    .line 88
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$PurchasedTracks;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3, v0, v1, v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 80
    .end local v1    # "where":Ljava/lang/String;
    :cond_0
    const-string v2, "local_track_ext"

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/worker/purchase/UpdatePurchasedTrackWorker;->ext:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 97
    .end local v0    # "values":Landroid/content/ContentValues;
    :pswitch_2
    const-string v2, "UpdatePurchasedTrackWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE_PURCHASED_TRACK Failure: Response failure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, p3, v5, v2}, Lcom/samsung/android/app/music/service/milk/worker/purchase/UpdatePurchasedTrackWorker;->invokeCallback(ILandroid/os/Parcelable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x27e7
        :pswitch_0
    .end packed-switch

    .line 71
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic onApiHandled(IIILjava/lang/Object;I)V
    .locals 6

    .prologue
    .line 22
    move-object v4, p4

    check-cast v4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/worker/purchase/UpdatePurchasedTrackWorker;->onApiHandled(IIILcom/samsung/android/app/music/common/model/ResponseModel;I)V

    return-void
.end method
