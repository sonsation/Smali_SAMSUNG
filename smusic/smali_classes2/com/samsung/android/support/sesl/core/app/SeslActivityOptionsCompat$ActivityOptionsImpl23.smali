.class Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl23;
.super Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat;
.source "SeslActivityOptionsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityOptionsImpl23"
.end annotation


# instance fields
.field private final mImpl:Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;)V
    .locals 0
    .param p1, "impl"    # Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;

    .prologue
    .line 320
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat;-><init>()V

    .line 321
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl23;->mImpl:Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;

    .line 322
    return-void
.end method


# virtual methods
.method public requestUsageTimeReport(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "receiver"    # Landroid/app/PendingIntent;

    .prologue
    .line 340
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl23;->mImpl:Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;->requestUsageTimeReport(Landroid/app/PendingIntent;)V

    .line 341
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl23;->mImpl:Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat;)V
    .locals 3
    .param p1, "otherOptions"    # Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat;

    .prologue
    .line 331
    instance-of v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl23;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 333
    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl23;

    .line 334
    .local v0, "otherImpl":Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl23;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl23;->mImpl:Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl23;->mImpl:Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;->update(Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat23;)V

    .line 336
    .end local v0    # "otherImpl":Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl23;
    :cond_0
    return-void
.end method
