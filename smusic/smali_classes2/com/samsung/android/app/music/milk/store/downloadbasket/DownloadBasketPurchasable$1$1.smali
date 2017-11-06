.class Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$1$1;
.super Ljava/lang/Object;
.source "DownloadBasketPurchasable.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$1;->result(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$1;

.field final synthetic val$id:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$1;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$1;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$1;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$1$1;->val$id:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$1;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$1$1;->this$1:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$1;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$1$1;->val$id:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;->alreadyPurchasedAudioIds:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;->startDownloadQueueActivity(Landroid/app/Activity;Ljava/util/ArrayList;Z)V

    .line 74
    return-void
.end method
