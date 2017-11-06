.class public Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;
.super Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;
.source "IndividualPurchasable.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final PURCHASE_LIMIT:I = 0x14


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "f"    # Landroid/app/Fragment;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;-><init>(Landroid/app/Fragment;)V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;Landroid/app/Activity;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->requestBilling(Landroid/app/Activity;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;Lcom/samsung/android/app/music/common/model/PayPromotion;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;
    .param p1, "x1"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;
    .param p2, "x2"    # Lcom/samsung/android/app/music/common/model/PayPromotion;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->showPayPromotionDialog(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;Lcom/samsung/android/app/music/common/model/PayPromotion;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private requestBilling(Landroid/app/Activity;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "purchasableItemId"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;
    .param p3, "productId"    # Ljava/lang/String;
    .param p4, "payYn"    # Z

    .prologue
    .line 141
    instance-of v2, p1, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;

    if-eqz v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->mContext:Landroid/content/Context;

    iget-object v3, p2, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;->purchasingAudioIds:Ljava/util/ArrayList;

    .line 143
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Tracks;->getTrackIds(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 144
    .local v1, "trackIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;-><init>(Landroid/app/Activity;)V

    .line 145
    .local v0, "billingHelper":Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;
    const-string v2, "@"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$5;

    invoke-direct {v3, p0, v1, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$5;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;Ljava/util/ArrayList;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)V

    invoke-virtual {v0, v2, p3, p4, v3}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->buyTrack(Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;)V

    .line 174
    .end local v0    # "billingHelper":Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;
    .end local v1    # "trackIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private showPayPromotionDialog(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;Lcom/samsung/android/app/music/common/model/PayPromotion;)V
    .locals 3
    .param p1, "purchasableItemId"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;
    .param p2, "promotion"    # Lcom/samsung/android/app/music/common/model/PayPromotion;

    .prologue
    .line 106
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->mContext:Landroid/content/Context;

    const v2, 0x7f0a02a7

    .line 107
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 108
    invoke-virtual {p2}, Lcom/samsung/android/app/music/common/model/PayPromotion;->getPromotionNotice()Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/PayPromotionDialog;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/dialog/milk/PayPromotionDialog;

    move-result-object v0

    .line 109
    .local v0, "dialog":Lcom/samsung/android/app/music/common/dialog/milk/PayPromotionDialog;
    new-instance v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$2;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/dialog/milk/PayPromotionDialog;->setOnNeturalButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 118
    new-instance v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$3;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;Lcom/samsung/android/app/music/common/model/PayPromotion;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/dialog/milk/PayPromotionDialog;->setOnPostiveButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 128
    new-instance v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$4;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/dialog/milk/PayPromotionDialog;->setOnNegativeButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 136
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "payPromotion"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/PayPromotionDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 137
    return-void
.end method


# virtual methods
.method protected purchaseItemsInternal(Landroid/app/Activity;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;I)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "purchasableItemId"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;
    .param p3, "availableCount"    # I

    .prologue
    .line 46
    new-instance v0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a02a7

    .line 47
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setTitle(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a02ad

    .line 48
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setMessage(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.radio.KEY_STORE_DATA_CONFIGS_PURCHASE_POPUP_TEXT"

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->mContext:Landroid/content/Context;

    const v4, 0x7f0a02ae

    .line 51
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setDescription(Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const-string v1, "940"

    .line 53
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setScreenId(Ljava/lang/String;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0146

    const-string v2, "9424"

    new-instance v3, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1;

    invoke-direct {v3, p0, p2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)V

    .line 54
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setPositiveButton(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a008a

    const-string v2, "9423"

    .line 100
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setNegativeButton(ILjava/lang/String;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->create()Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->mFragment:Landroid/app/Fragment;

    .line 101
    invoke-virtual {v1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "buyTrack"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 102
    return-void
.end method
