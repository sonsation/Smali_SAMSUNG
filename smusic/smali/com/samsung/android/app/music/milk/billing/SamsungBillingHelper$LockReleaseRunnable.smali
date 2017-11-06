.class Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$LockReleaseRunnable;
.super Ljava/lang/Object;
.source "SamsungBillingHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LockReleaseRunnable"
.end annotation


# instance fields
.field mLockable:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;)V
    .locals 0
    .param p1, "lockable"    # Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    .prologue
    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$LockReleaseRunnable;->mLockable:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    .line 348
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper$LockReleaseRunnable;->mLockable:Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/billing/SamsungBillingHelper;->unlock()V

    .line 353
    return-void
.end method
