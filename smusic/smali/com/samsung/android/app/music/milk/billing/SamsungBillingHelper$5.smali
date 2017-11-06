.class Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$5;
.super Ljava/lang/Object;
.source "SamsungBillingHelper.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/popup/MilkOKDialog$OnDialogBtnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->handleServerError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

.field final synthetic val$dialog:Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$5;->this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$5;->val$dialog:Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeButtonClicked()V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$5;->val$dialog:Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;->dismiss()V

    .line 399
    return-void
.end method

.method public onPositiveButtonClicked()V
    .locals 3

    .prologue
    .line 403
    const-string v0, "SamsungBilling"

    const-string v1, "ALREADY_USED_PROMOTION - positive. continue purchase with original price"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$5;->this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->access$100(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$5;->this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->access$100(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;->setOptional1(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$5;->this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->access$200(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$5;->this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$5;->this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    .line 409
    invoke-static {v2}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->access$100(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

    move-result-object v2

    .line 408
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getPaymentDataSubscription(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;)I

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$5;->val$dialog:Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/dialog/AlreadyUsedPromotionDialog;->dismiss()V

    .line 412
    return-void
.end method
