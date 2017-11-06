.class Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler;
.super Landroid/os/Handler;
.source "SamsungBilling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/billing/SamsungBilling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BillingHandler"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BillingHandler"


# instance fields
.field isCanceled:Z

.field mCancelRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBilling;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/billing/SamsungBilling;Landroid/os/Looper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/billing/SamsungBilling;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler;->this$0:Lcom/samsung/android/app/music/milk/billing/SamsungBilling;

    .line 368
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 365
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler;->isCanceled:Z

    .line 386
    new-instance v0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler$1;-><init>(Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler;->mCancelRunnable:Ljava/lang/Runnable;

    .line 369
    return-void
.end method


# virtual methods
.method public postDelayed(J)Z
    .locals 3
    .param p1, "t"    # J

    .prologue
    .line 372
    const-string v0, "BillingHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "postDelayed delay : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler;->isCanceled:Z

    .line 374
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler;->mCancelRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public removeCallbacks()V
    .locals 3

    .prologue
    .line 378
    const-string v0, "BillingHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeCallbacks isCanceled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler;->isCanceled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler;->isCanceled:Z

    if-nez v0, :cond_0

    .line 381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler;->isCanceled:Z

    .line 382
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler;->mCancelRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBilling$BillingHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 384
    :cond_0
    return-void
.end method
