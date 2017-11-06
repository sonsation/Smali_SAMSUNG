.class public Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;
.super Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;
.source "SubscriptionPurchasable.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mPurchasableItemIdSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "f"    # Landroid/app/Fragment;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;-><init>(Landroid/app/Fragment;)V

    .line 33
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->mPurchasableItemIdSparseArray:Landroid/util/SparseArray;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;Ljava/util/ArrayList;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->itemsDeduction(Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->mPurchasableItemIdSparseArray:Landroid/util/SparseArray;

    return-object v0
.end method

.method private itemsDeduction(Ljava/util/ArrayList;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "audioIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v2, -0x1

    .line 113
    .local v2, "reqId":I
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->mFragment:Landroid/app/Fragment;

    instance-of v7, v7, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionGetter;

    if-eqz v7, :cond_4

    .line 114
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->mFragment:Landroid/app/Fragment;

    check-cast v7, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionGetter;

    .line 115
    invoke-interface {v7}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionGetter;->getSubscriptions()Ljava/util/ArrayList;

    move-result-object v5

    .line 116
    .local v5, "subscriptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;>;"
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 117
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v7}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    instance-of v7, v7, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;

    if-eqz v7, :cond_2

    .line 118
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->mFragment:Landroid/app/Fragment;

    .line 119
    invoke-virtual {v7}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;

    invoke-interface {v7}, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v1

    .line 120
    .local v1, "milkService":Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->mContext:Landroid/content/Context;

    .line 121
    invoke-static {v7, p1}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Tracks;->getTrackIds(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    .line 122
    .local v6, "trackIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 123
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_1

    .line 124
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;

    .line 125
    .local v4, "subscription":Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;
    if-eqz v0, :cond_0

    .line 126
    const-string v7, "@"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    :cond_0
    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;->getOrderId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    .end local v4    # "subscription":Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;
    :cond_1
    const-string v7, "@"

    invoke-static {v7, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    .line 131
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 130
    invoke-virtual {v1, p0, v7, v8}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->subscriptionDeduction(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 142
    .end local v0    # "i":I
    .end local v1    # "milkService":Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    .end local v5    # "subscriptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;>;"
    .end local v6    # "trackIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return v2

    .line 133
    .restart local v5    # "subscriptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;>;"
    :cond_2
    sget-object v7, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " itemsDeduction MilkServiceGetter is not implemented!!!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 137
    :cond_3
    sget-object v7, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " itemsDeduction subscription is null or count 0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 140
    .end local v5    # "subscriptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/purchase/SimpleSubscription;>;"
    :cond_4
    sget-object v7, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " itemsDeduction SubscriptionGetter is not implemented!!!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 147
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;->onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V

    .line 148
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->mPurchasableItemIdSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    .line 149
    .local v0, "purchasableItemId":Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;
    if-nez p3, :cond_1

    .line 150
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->mFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionGetter;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->mFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionGetter;

    invoke-interface {v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionGetter;->invalidateSubscription()V

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;->allAudioIds:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->startDownloadQueueActivity(Landroid/app/Activity;Ljava/util/ArrayList;Z)V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_1
    sget-object v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onApiHandled fail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected purchaseItemsInternal(Landroid/app/Activity;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;I)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "itemId"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;
    .param p3, "availableCount"    # I

    .prologue
    const v6, 0x7f0a0146

    const v5, 0x7f0a008a

    .line 39
    if-eqz p3, :cond_0

    .line 40
    new-instance v0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a02a7

    .line 41
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setTitle(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->mContext:Landroid/content/Context;

    const v2, 0x7f0a02a6

    .line 42
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p2, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;->purchasingAudioIds:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 42
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const-string v1, "939"

    .line 45
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setScreenId(Ljava/lang/String;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const-string v1, "9422"

    new-instance v2, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1;

    invoke-direct {v2, p0, p2, p3}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;I)V

    .line 46
    invoke-virtual {v0, v6, v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setPositiveButton(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const-string v1, "9421"

    .line 87
    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setNegativeButton(ILjava/lang/String;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->create()Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->mFragment:Landroid/app/Fragment;

    .line 89
    invoke-virtual {v1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "buyTrack"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 109
    :goto_0
    return-void

    .line 91
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a02ab

    .line 92
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setTitle(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a02b4

    .line 93
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setMessage(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const-string v1, "947"

    .line 94
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setScreenId(Ljava/lang/String;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const-string v1, "9442"

    new-instance v2, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$2;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;)V

    .line 95
    invoke-virtual {v0, v6, v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setPositiveButton(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    const-string v1, "9441"

    .line 105
    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setNegativeButton(ILjava/lang/String;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->create()Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->mFragment:Landroid/app/Fragment;

    .line 107
    invoke-virtual {v1}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "countZero"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
