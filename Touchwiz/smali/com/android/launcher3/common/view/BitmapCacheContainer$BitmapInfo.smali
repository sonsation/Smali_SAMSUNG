.class Lcom/android/launcher3/common/view/BitmapCacheContainer$BitmapInfo;
.super Ljava/lang/Object;
.source "LiveIconManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/view/BitmapCacheContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapInfo"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public timestamp:J


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p1, p0, Lcom/android/launcher3/common/view/BitmapCacheContainer$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 265
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/common/view/BitmapCacheContainer$BitmapInfo;->timestamp:J

    .line 266
    return-void
.end method


# virtual methods
.method public isExpired()Z
    .locals 8

    .prologue
    .line 269
    const-wide/32 v0, 0xea60

    .line 271
    .local v0, "EXPIRE_TIME":J
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 272
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/launcher3/common/view/BitmapCacheContainer$BitmapInfo;->timestamp:J

    sub-long v4, v2, v4

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 273
    const/4 v4, 0x1

    .line 275
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
