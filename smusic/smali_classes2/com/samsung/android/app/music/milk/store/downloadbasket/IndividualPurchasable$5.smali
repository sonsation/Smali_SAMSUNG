.class Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$5;
.super Ljava/lang/Object;
.source "IndividualPurchasable.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->requestBilling(Landroid/app/Activity;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;

.field final synthetic val$purchasableItemId:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

.field final synthetic val$trackIds:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;Ljava/util/ArrayList;Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$5;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$5;->val$trackIds:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$5;->val$purchasableItemId:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 170
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCancel"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public onFail(ILjava/lang/String;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFail resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 7
    .param p1, "orderId"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSuccess orderId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$5;->val$trackIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v2, v3, [Landroid/content/ContentValues;

    .line 151
    .local v2, "values":[Landroid/content/ContentValues;
    invoke-static {}, Lcom/samsung/android/app/music/common/util/ConvertSystemTime;->getCurrentTimeGMT()Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "date":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$5;->val$trackIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 153
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$5;->val$trackIds:Ljava/util/ArrayList;

    .line 154
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, p1, v0, v4}, Lcom/samsung/android/app/music/common/model/purchase/PurchasedTrack;->createContentValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v3

    aput-object v3, v2, v1

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$5;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;

    iget-object v3, v3, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->mContext:Landroid/content/Context;

    .line 158
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$PurchasedTracks;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    .line 157
    invoke-static {v3, v4, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->bulkInsert(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 159
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$5;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$5;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;

    iget-object v4, v4, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable$5;->val$purchasableItemId:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;

    iget-object v5, v5, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketCheckableListImpl$PurchasableItemId;->allAudioIds:Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/app/music/milk/store/downloadbasket/IndividualPurchasable;->startDownloadQueueActivity(Landroid/app/Activity;Ljava/util/ArrayList;Z)V

    .line 161
    return-void
.end method
