.class Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl21;
.super Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat;
.source "SeslActivityOptionsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityOptionsImpl21"
.end annotation


# instance fields
.field private final mImpl:Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat21;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat21;)V
    .locals 0
    .param p1, "impl"    # Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat21;

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat;-><init>()V

    .line 299
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl21;->mImpl:Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat21;

    .line 300
    return-void
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl21;->mImpl:Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat21;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat21;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat;)V
    .locals 3
    .param p1, "otherOptions"    # Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat;

    .prologue
    .line 309
    instance-of v1, p1, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl21;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 311
    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl21;

    .line 312
    .local v0, "otherImpl":Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl21;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl21;->mImpl:Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat21;

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl21;->mImpl:Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat21;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat21;->update(Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat21;)V

    .line 314
    .end local v0    # "otherImpl":Lcom/samsung/android/support/sesl/core/app/SeslActivityOptionsCompat$ActivityOptionsImpl21;
    :cond_0
    return-void
.end method
