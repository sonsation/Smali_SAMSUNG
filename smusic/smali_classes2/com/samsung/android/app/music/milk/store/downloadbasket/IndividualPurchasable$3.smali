.class Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$3;
.super Ljava/lang/Object;
.source "IndividualPurchasable.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->showPayPromotionDialog(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;Lcom/samsung/android/app/music/common/model/PayPromotion;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;

.field final synthetic val$promotion:Lcom/samsung/android/app/music/common/model/PayPromotion;

.field final synthetic val$purchasableItemId:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;Lcom/samsung/android/app/music/common/model/PayPromotion;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$3;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$3;->val$purchasableItemId:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$3;->val$promotion:Lcom/samsung/android/app/music/common/model/PayPromotion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$3;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$3;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$3;->val$purchasableItemId:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$3;->val$promotion:Lcom/samsung/android/app/music/common/model/PayPromotion;

    .line 122
    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/PayPromotion;->getPromotionId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 121
    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->access$000(Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;Landroid/app/Activity;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;Ljava/lang/String;Z)V

    .line 123
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "949"

    const-string v2, "9456"

    .line 124
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method
