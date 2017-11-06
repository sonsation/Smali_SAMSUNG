.class public Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;
.super Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;
.source "IndividualBasketFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/downloadbasket/PromotionGetter;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "IndividualBasketFragment"


# instance fields
.field private mPayPromotion:Lcom/samsung/android/app/music/common/model/PayPromotion;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private showPromotionBanner(Ljava/lang/String;)V
    .locals 0
    .param p1, "imgUrl"    # Ljava/lang/String;

    .prologue
    .line 76
    return-void
.end method


# virtual methods
.method public getPromotion()Lcom/samsung/android/app/music/common/model/PayPromotion;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;->mPayPromotion:Lcom/samsung/android/app/music/common/model/PayPromotion;

    return-object v0
.end method

.method protected getTabId()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x2

    return v0
.end method

.method protected initHeaderBuilder(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0a02b5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->setFirstRowFrame1(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0a029b

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    .line 41
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->setFirstRowFrame2(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;

    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0a02b8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;->setFirstRowFrame3(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketHeader$Builder;

    .line 45
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 80
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V

    .line 81
    if-nez p3, :cond_0

    .line 82
    instance-of v0, p4, Lcom/samsung/android/app/music/common/model/PayPromotion;

    if-eqz v0, :cond_0

    .line 83
    check-cast p4, Lcom/samsung/android/app/music/common/model/PayPromotion;

    .end local p4    # "rspData":Ljava/lang/Object;
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;->mPayPromotion:Lcom/samsung/android/app/music/common/model/PayPromotion;

    .line 84
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;->mPayPromotion:Lcom/samsung/android/app/music/common/model/PayPromotion;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/PayPromotion;->getPromotionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;->mPayPromotion:Lcom/samsung/android/app/music/common/model/PayPromotion;

    .line 85
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/PayPromotion;->getPromotionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;->mPayPromotion:Lcom/samsung/android/app/music/common/model/PayPromotion;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/PayPromotion;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;->showPromotionBanner(Ljava/lang/String;)V

    .line 90
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 27
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;->getListType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;->initListLoader(I)V

    .line 29
    return-object v0
.end method

.method public onMilkServiceConnected()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->onMilkServiceConnected()V

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->checkPayPromotion(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)I

    .line 72
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 35
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;->setPurchasable(Lcom/samsung/android/app/music/milk/store/downloadbasket/Purchasable;)V

    .line 36
    return-void
.end method

.method public updateHeader()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;)V

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualBasketFragment;->getCheckedItemHeaderInfoAsync(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$OnCheckedItemHeaderInfoListener;[I)V

    .line 61
    return-void

    .line 49
    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x2
    .end array-data
.end method
