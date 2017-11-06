.class Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$1;
.super Ljava/lang/Object;
.source "SamsungBillingHelper.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->buySubscription(Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$OnBillingStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$1;->this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingAppAvailable()V
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$1;->this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->access$200(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$1;->this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$1;->this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    .line 209
    invoke-static {v2}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->access$100(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

    move-result-object v2

    .line 208
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getPaymentDataSubscription(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;)I

    .line 210
    return-void
.end method

.method public onBillingAppUnavailable(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 214
    return-void
.end method
