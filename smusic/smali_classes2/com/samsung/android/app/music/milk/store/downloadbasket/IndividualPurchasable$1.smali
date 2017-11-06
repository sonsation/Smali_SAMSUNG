.class Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1;
.super Ljava/lang/Object;
.source "IndividualPurchasable.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->purchaseItemsInternal(Landroid/app/Activity;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;

.field final synthetic val$purchasableItemId:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1;->val$purchasableItemId:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x14

    .line 57
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1;->val$purchasableItemId:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;->purchasingAudioIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v5, :cond_0

    .line 58
    new-instance v1, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a02a7

    .line 59
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setTitle(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->mContext:Landroid/content/Context;

    const v3, 0x7f0a02af

    .line 60
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 62
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 60
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0146

    new-instance v3, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1$1;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1;)V

    .line 63
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a008a

    .line 84
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setNegativeButton(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->create()Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->mFragment:Landroid/app/Fragment;

    .line 85
    invoke-virtual {v2}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "buyLimitTrack"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 99
    :goto_0
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x0

    .line 88
    .local v0, "promotion":Lcom/samsung/android/app/music/common/model/PayPromotion;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->mFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/PromotionGetter;

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->mFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/PromotionGetter;

    invoke-interface {v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/PromotionGetter;->getPromotion()Lcom/samsung/android/app/music/common/model/PayPromotion;

    move-result-object v0

    .line 91
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/PayPromotion;->getPromotionId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 92
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/PayPromotion;->getPromotionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1;->val$purchasableItemId:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v6}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->access$000(Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;Landroid/app/Activity;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;Ljava/lang/String;Z)V

    goto :goto_0

    .line 96
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1;->val$purchasableItemId:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->access$100(Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;Lcom/samsung/android/app/music/common/model/PayPromotion;)V

    goto :goto_0
.end method
