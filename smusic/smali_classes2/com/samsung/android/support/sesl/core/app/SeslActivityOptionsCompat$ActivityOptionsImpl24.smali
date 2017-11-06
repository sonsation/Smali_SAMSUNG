.class Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl24;
.super Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat;
.source "SeslActivityOptionsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityOptionsImpl24"
.end annotation


# instance fields
.field private final mImpl:Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat24;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat24;)V
    .locals 0
    .param p1, "impl"    # Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat24;

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat;-><init>()V

    .line 348
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl24;->mImpl:Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat24;

    .line 349
    return-void
.end method


# virtual methods
.method public getLaunchBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl24;->mImpl:Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat24;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat24;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public requestUsageTimeReport(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "receiver"    # Landroid/app/PendingIntent;

    .prologue
    .line 377
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl24;->mImpl:Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat24;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat24;->requestUsageTimeReport(Landroid/app/PendingIntent;)V

    .line 378
    return-void
.end method

.method public setLaunchBounds(Landroid/graphics/Rect;)Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat;
    .locals 2
    .param p1, "screenSpacePixelRect"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 367
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl24;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl24;->mImpl:Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat24;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat24;->setLaunchBounds(Landroid/graphics/Rect;)Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat24;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl24;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat24;)V

    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl24;->mImpl:Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat24;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat24;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat;)V
    .locals 3
    .param p1, "otherOptions"    # Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat;

    .prologue
    .line 358
    instance-of v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl24;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 360
    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl24;

    .line 361
    .local v0, "otherImpl":Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl24;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl24;->mImpl:Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat24;

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl24;->mImpl:Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat24;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat24;->update(Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat24;)V

    .line 363
    .end local v0    # "otherImpl":Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl24;
    :cond_0
    return-void
.end method
