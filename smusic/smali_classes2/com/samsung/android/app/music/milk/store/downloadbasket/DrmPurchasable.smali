.class public Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;
.super Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;
.source "DrmPurchasable.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mOrderId:Ljava/lang/String;

.field private mPurchasableItemId:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "f"    # Landroid/app/Fragment;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;-><init>(Landroid/app/Fragment;)V

    .line 32
    return-void
.end method


# virtual methods
.method protected checkAlreadyPurchased()Z
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 65
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;->onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;->TAG:Ljava/lang/String;

    const-string v1, "activity is null or destroyed"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .end local p4    # "rspData":Ljava/lang/Object;
    :cond_1
    :goto_0
    return-void

    .line 70
    .restart local p4    # "rspData":Ljava/lang/Object;
    :cond_2
    if-nez p3, :cond_1

    .line 71
    instance-of v0, p4, Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;

    if-eqz v0, :cond_1

    .line 72
    check-cast p4, Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;

    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;->getVerifiedTracks()Ljava/util/ArrayList;

    move-result-object v6

    .line 73
    .local v6, "tracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrack;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;->mPurchasableItemId:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;->allAudioIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;->mPurchasableItemId:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;->allAudioIds:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;->mOrderId:Ljava/lang/String;

    move-object v0, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;->startDownloadQueueActivity(Landroid/app/Activity;Ljava/util/ArrayList;ZILjava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;->mContext:Landroid/content/Context;

    const-string v1, "Fail check license"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected purchaseItemsInternal(Landroid/app/Activity;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;I)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "purchasableItemId"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;
    .param p3, "availableCount"    # I

    .prologue
    .line 42
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;

    if-eqz v2, :cond_0

    .line 43
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;->mFragment:Landroid/app/Fragment;

    instance-of v2, v2, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionGetter;

    if-eqz v2, :cond_0

    .line 44
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;->mFragment:Landroid/app/Fragment;

    check-cast v2, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionGetter;

    .line 45
    invoke-interface {v2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionGetter;->getSubscription()Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;

    move-result-object v0

    .line 46
    .local v0, "subscription":Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;
    if-nez v0, :cond_1

    .line 47
    sget-object v2, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "purchaseItemsInternal subscription is null. isDestroyed - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;->mFragment:Landroid/app/Fragment;

    .line 48
    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->isDestroyed()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 47
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .end local v0    # "subscription":Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;
    :cond_0
    :goto_0
    return-void

    .line 52
    .restart local v0    # "subscription":Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;->getOrderId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;->mOrderId:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;->mPurchasableItemId:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    .line 54
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;->mContext:Landroid/content/Context;

    iget-object v3, p2, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;->allAudioIds:Ljava/util/ArrayList;

    .line 55
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Tracks;->getTrackIds(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 56
    .local v1, "trackIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;

    invoke-interface {v2}, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    const-string v3, "@"

    .line 57
    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;->mOrderId:Ljava/lang/String;

    const-string v5, "00"

    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->checkDRMLicense(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
