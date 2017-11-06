.class public Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;
.super Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;
.source "SubscriptionBasketFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable$OnHeaderInitListener;
.implements Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionGetter;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SubscriptionBasketFragment"


# instance fields
.field private mAvailableCount:I

.field private mSubscriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->mAvailableCount:I

    return-void
.end method


# virtual methods
.method public getAvailableCount()I
    .locals 4

    .prologue
    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "count":I
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->mSubscriptions:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 98
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->mSubscriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;

    .line 99
    .local v1, "subscription":Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;->getAvailableCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 100
    goto :goto_0

    .line 102
    .end local v1    # "subscription":Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;
    :cond_0
    return v0
.end method

.method public getSubscriptions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->mSubscriptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getTabId()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public initHeader(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "subscriptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;>;"
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->mSubscriptions:Ljava/util/ArrayList;

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->getHeader()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->getAvailableCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;->updateValue(ILjava/lang/CharSequence;)V

    .line 87
    return-void
.end method

.method protected initHeaderBuilder(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;)V
    .locals 4
    .param p1, "builder"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0a029c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->setFirstRowFrame1(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0a029b

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    .line 76
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->setFirstRowFrame2(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0a02b5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->mContext:Landroid/content/Context;

    .line 79
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0529

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 78
    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->setFirstRowFrame3(Ljava/lang/CharSequence;Ljava/lang/CharSequence;F)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;

    .line 81
    return-void
.end method

.method public invalidateSubscription()V
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;

    invoke-interface {v0}, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->verifyTracks(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I

    .line 110
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable;

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable;

    const/4 v1, 0x1

    .line 35
    invoke-interface {v0, v1, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable;->addHeaderUpdateListener(ILcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable$OnHeaderInitListener;)V

    .line 37
    :cond_0
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
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V

    .line 123
    if-nez p3, :cond_0

    .line 124
    instance-of v2, p4, Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;

    if-eqz v2, :cond_0

    move-object v0, p4

    .line 125
    check-cast v0, Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;

    .line 126
    .local v0, "info":Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;->getSubscriptionList()Ljava/util/ArrayList;

    move-result-object v1

    .line 127
    .local v1, "subscriptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;>;"
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->initHeader(Ljava/util/ArrayList;)V

    .line 130
    .end local v0    # "info":Lcom/samsung/android/app/music/common/model/purchase/VerifiedTrackInfo;
    .end local v1    # "subscriptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;>;"
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable;->removeHeaderUpdateListener(I)V

    .line 117
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->onDestroy()V

    .line 118
    return-void
.end method

.method public onMilkServiceConnected()V
    .locals 3

    .prologue
    .line 65
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->onMilkServiceConnected()V

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getUser()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v0

    .line 67
    .local v0, "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    const-string v1, "1"

    iget-object v2, v0, Lcom/samsung/android/app/music/common/model/UserInfo;->downloadableUser:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->mContext:Landroid/content/Context;

    .line 68
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$PurchasedTracks;->getCount(Landroid/content/Context;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->getListType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->initListLoader(I)V

    .line 71
    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 42
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->setPurchasable(Lcom/samsung/android/app/music/milk/store/downloadbasket/Purchasable;)V

    .line 43
    return-void
.end method

.method public updateHeader()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionBasketFragment;->getCheckedItemHeaderInfoAsync(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$OnCheckedItemHeaderInfoListener;[I)V

    .line 56
    return-void

    .line 47
    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method
