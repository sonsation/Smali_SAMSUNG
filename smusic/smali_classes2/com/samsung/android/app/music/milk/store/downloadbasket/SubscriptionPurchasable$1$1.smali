.class Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1$1;
.super Ljava/lang/Object;
.source "SubscriptionPurchasable.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 66
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1;

    iget-object v3, v3, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1;->val$itemId:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1;

    iget v4, v4, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1;->val$availableCount:I

    .line 68
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;->subListPurchasingAudioIds(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 66
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->access$000(Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;Ljava/util/ArrayList;)I

    move-result v0

    .line 70
    .local v0, "reqId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->access$100(Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$1;->val$itemId:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    .line 73
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    :cond_0
    return-void
.end method
