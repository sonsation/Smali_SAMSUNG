.class public abstract Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;
.super Ljava/lang/Object;
.source "DownloadBasketPurchasable.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/downloadbasket/Purchasable;
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# instance fields
.field private mCheckableList:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableList;

.field protected final mContext:Landroid/content/Context;

.field protected final mFragment:Landroid/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "f"    # Landroid/app/Fragment;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;->mContext:Landroid/content/Context;

    .line 38
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;->mFragment:Landroid/app/Fragment;

    .line 39
    instance-of v0, p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableList;

    if-eqz v0, :cond_0

    .line 40
    check-cast p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableList;

    .end local p1    # "f":Landroid/app/Fragment;
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;->mCheckableList:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableList;

    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method protected checkAlreadyPurchased()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public onApiCalled(II)V
    .locals 3
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 117
    const-string v0, "DownloadBasket"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onApiCalled reqId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reqType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 122
    const-string v0, "DownloadBasket"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onApiHandled reqId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reqType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rspType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public purchaseItems()V
    .locals 4

    .prologue
    .line 50
    invoke-static {}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->isEnoughStorage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a027d

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setTitle(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a02ac

    .line 52
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setMessage(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const-string v1, "943"

    .line 53
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setScreenId(Ljava/lang/String;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0146

    const-string v2, "9431"

    const/4 v3, 0x0

    .line 54
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setPositiveButton(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->create()Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;->mFragment:Landroid/app/Fragment;

    .line 56
    invoke-virtual {v1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "NotEnoughMemory"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 89
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;->mCheckableList:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableList;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$1;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableList;->getCheckedPurchasableItemIdAsync(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$OnCheckedPurchasableItemIdListener;)V

    goto :goto_0
.end method

.method protected abstract purchaseItemsInternal(Landroid/app/Activity;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;I)V
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method protected startDownloadQueueActivity(Landroid/app/Activity;Ljava/util/ArrayList;Z)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "deleteDownloadBasket"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p2, "audioIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;->startDownloadQueueActivity(Landroid/app/Activity;Ljava/util/ArrayList;ZILjava/lang/String;)V

    .line 95
    return-void
.end method

.method protected startDownloadQueueActivity(Landroid/app/Activity;Ljava/util/ArrayList;ZILjava/lang/String;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "deleteDownloadBasket"    # Z
    .param p4, "type"    # I
    .param p5, "orderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;ZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "audioIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 99
    invoke-static {p2}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->toPrimitive(Ljava/util/ArrayList;)[J

    move-result-object v2

    .line 100
    .local v2, "ids":[J
    if-eqz p3, :cond_0

    .line 101
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DeleteDownloadBasketTask;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v3, "audio_id"

    new-instance v5, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$2;

    invoke-direct {v5, p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$2;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;Landroid/app/Activity;)V

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DeleteDownloadBasketTask;-><init>(Landroid/app/Activity;[JLjava/lang/String;ZLcom/samsung/android/app/music/common/util/task/DeleteMilkBaseTask$OnTaskFinishListener;)V

    new-array v1, v4, [Ljava/lang/Void;

    .line 110
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DeleteDownloadBasketTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 112
    :cond_0
    invoke-static {p1, v2, p4, p5}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueActivity$DownloadQueueLauncher;->startActivity(Landroid/app/Activity;[JILjava/lang/String;)V

    .line 113
    return-void
.end method
