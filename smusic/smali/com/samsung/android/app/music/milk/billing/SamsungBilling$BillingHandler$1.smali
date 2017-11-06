.class Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler$1;
.super Ljava/lang/Object;
.source "SamsungBilling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler$1;->this$1:Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 389
    const-string v0, "BillingHandler"

    const-string v1, "mCancelRunnable run is called"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler$1;->this$1:Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler;->this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBilling;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling;->access$200(Lcom/samsung/android/app/music/milk/billing/SamsungBilling;)Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;->dismiss()V

    .line 393
    return-void
.end method
