.class Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$2;
.super Ljava/lang/Object;
.source "DownloadBasketPurchasable.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/util/task/DeleteMilkBaseTask$OnTaskFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;->startDownloadQueueActivity(Landroid/app/Activity;Ljava/util/ArrayList;ZILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$2;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskFinished(I)V
    .locals 2
    .param p1, "result"    # I

    .prologue
    .line 105
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$2;->this$0:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$DownloadBasket;->getCount(Landroid/content/Context;)I

    move-result v0

    .line 106
    .local v0, "count":I
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketPurchasable$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 109
    :cond_0
    return-void
.end method
