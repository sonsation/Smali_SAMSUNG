.class Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1;
.super Ljava/lang/Object;
.source "SubscriptionPurchasable.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->purchaseItemsInternal(Landroid/app/Activity;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;

.field final synthetic val$availableCount:I

.field final synthetic val$itemId:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1;->val$itemId:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    iput p3, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1;->val$availableCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 51
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1;->val$itemId:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;->purchasingAudioIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1;->val$availableCount:I

    if-le v1, v2, :cond_1

    .line 52
    new-instance v1, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a02ab

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setTitle(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->mContext:Landroid/content/Context;

    const v3, 0x7f0a02aa

    .line 54
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1;->val$itemId:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    iget-object v5, v5, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;->purchasingAudioIds:Ljava/util/ArrayList;

    .line 56
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 54
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v1

    const-string v2, "944"

    .line 57
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setScreenId(Ljava/lang/String;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0146

    const-string v3, "9433"

    new-instance v4, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1$1;-><init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1;)V

    .line 59
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setPositiveButton(ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a008a

    const-string v3, "9432"

    .line 76
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setNegativeButton(ILjava/lang/String;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->create()Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->mFragment:Landroid/app/Fragment;

    .line 79
    invoke-virtual {v2}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "notEnough"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1;->val$itemId:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;->purchasingAudioIds:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->access$000(Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;Ljava/util/ArrayList;)I

    move-result v0

    .line 82
    .local v0, "reqId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->access$100(Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1;->val$itemId:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method
