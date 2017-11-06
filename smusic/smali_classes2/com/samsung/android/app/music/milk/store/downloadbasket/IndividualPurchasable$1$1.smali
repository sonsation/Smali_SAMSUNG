.class Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1$1;
.super Ljava/lang/Object;
.source "IndividualPurchasable.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "promotion":Lcom/samsung/android/app/music/common/model/PayPromotion;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->mFragment:Landroid/app/Fragment;

    instance-of v1, v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/PromotionGetter;

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->mFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/PromotionGetter;

    .line 69
    invoke-interface {v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/PromotionGetter;->getPromotion()Lcom/samsung/android/app/music/common/model/PayPromotion;

    move-result-object v0

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1;->val$purchasableItemId:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    const/16 v2, 0x14

    .line 72
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;->subListPurchasingAudioIds(I)Ljava/util/ArrayList;

    .line 73
    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/PayPromotion;->getPromotionId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 75
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/PayPromotion;->getPromotionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1;

    iget-object v3, v3, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1;->val$purchasableItemId:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    .line 78
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/PayPromotion;->getPromotionId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 76
    invoke-static {v1, v2, v3, v4, v5}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->access$000(Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;Landroid/app/Activity;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;Ljava/lang/String;Z)V

    .line 83
    :goto_0
    return-void

    .line 80
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$1;->val$purchasableItemId:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->access$100(Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;Lcom/samsung/android/app/music/common/model/PayPromotion;)V

    goto :goto_0
.end method
