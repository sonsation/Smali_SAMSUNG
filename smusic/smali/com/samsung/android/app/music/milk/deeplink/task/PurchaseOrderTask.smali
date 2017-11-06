.class public Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;
.super Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;
.source "PurchaseOrderTask.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PurchaseOrderTask"


# instance fields
.field private mPricingTypeCode:Ljava/lang/String;

.field private mProductId:Ljava/lang/String;

.field private mPromotionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;-><init>(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 25
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->PRODUCT_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;->mProductId:Ljava/lang/String;

    .line 26
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->PRICING_TYPE_CODE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;->mPricingTypeCode:Ljava/lang/String;

    .line 27
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->PROMOTION_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->getQueryParameter(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;->mPromotionId:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .prologue
    .line 37
    new-instance v1, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;->mProductId:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;-><init>(Ljava/lang/String;)V

    .line 38
    .local v1, "item":Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;->mPricingTypeCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->setPricingCode(Ljava/lang/String;)V

    .line 39
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;->mPromotionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->setOptional1(Ljava/lang/String;)V

    .line 41
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;->mActivity:Landroid/app/Activity;

    instance-of v2, v2, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;

    if-eqz v2, :cond_0

    .line 42
    new-instance v0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;-><init>(Landroid/app/Activity;)V

    .line 43
    .local v0, "billingHelper":Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->buySubscription(Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;)V

    .line 47
    .end local v0    # "billingHelper":Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;
    :goto_0
    return-void

    .line 45
    :cond_0
    const-string v2, "PurchaseOrderTask"

    const-string v3, "execute : activity is not instance of BaseMilkServiceActivity"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-string v0, "PurchaseOrderTask"

    return-object v0
.end method

.method protected ignoreMyMusicMode()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public isValidTask()Z
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;->mProductId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;->mPricingTypeCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
