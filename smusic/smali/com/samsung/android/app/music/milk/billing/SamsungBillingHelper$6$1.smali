.class Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6$1;
.super Ljava/lang/Object;
.source "SamsungBillingHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6;->onDownloadSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6;

    .prologue
    .line 466
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6$1;->this$1:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6$1;->this$1:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6;->val$l:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$BillingAppStatusListener;->onBillingAppAvailable()V

    .line 470
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6$1;->this$1:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$6;->this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->access$600(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/dialog/BillingUpdateProgress;->dismiss()V

    .line 471
    return-void
.end method
