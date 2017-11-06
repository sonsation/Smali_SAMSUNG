.class public Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;
.super Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;
.source "DrmBasketFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable$OnHeaderInitListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DrmBasketFragment"


# instance fields
.field mSubscription:Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getSubscription()Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;->mSubscription:Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;

    return-object v0
.end method

.method protected getTabId()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

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
    .local p1, "subscriptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;>;"
    const/4 v2, 0x0

    .line 64
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 65
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;->mSubscription:Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;

    .line 66
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;->getDueDate()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "dueDate":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;->getHeader()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;->updateValue(ILjava/lang/CharSequence;)V

    .line 69
    .end local v0    # "dueDate":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected initHeaderBuilder(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;)V
    .locals 3
    .param p1, "builder"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0a029c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0a02b9

    .line 47
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->setFirstRowFrame1(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0a02b5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->setFirstRowFrame2(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0a029f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->setFirstRowFrame3(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;

    .line 50
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable;

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable;->addHeaderUpdateListener(ILcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable$OnHeaderInitListener;)V

    .line 27
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/HeaderUpdateObervable;->removeHeaderUpdateListener(I)V

    .line 81
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->onDestroy()V

    .line 82
    return-void
.end method

.method public onMilkServiceConnected()V
    .locals 3

    .prologue
    .line 37
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->onMilkServiceConnected()V

    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getUser()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v0

    .line 39
    .local v0, "userinfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    const-string v1, "1"

    iget-object v2, v0, Lcom/samsung/android/app/music/common/model/UserInfo;->drmProductUser:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;->getListType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;->initListLoader(I)V

    .line 42
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 32
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmPurchasable;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;->setPurchasable(Lcom/samsung/android/app/music/milk/store/downloadbasket/Purchasable;)V

    .line 33
    return-void
.end method

.method public updateHeader()V
    .locals 3

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;->getHeader()Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DrmBasketFragment;->getCheckedItemCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$DownloadBasketHeaderWrapper;->updateValue(ILjava/lang/CharSequence;)V

    .line 55
    return-void
.end method
