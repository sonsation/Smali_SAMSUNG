.class Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$2;
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


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$2;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$2;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/TabSelectable;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable$2;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/SubscriptionPurchasable;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/TabSelectable;

    const/4 v1, 0x2

    .line 102
    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/TabSelectable;->setCurrentItem(I)V

    .line 104
    :cond_0
    return-void
.end method
