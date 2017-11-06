.class public abstract Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/AbsArtworkConverter;
.super Ljava/lang/Object;
.source "AbsArtworkConverter.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/utils/graphics/IArtworkConverter;


# static fields
.field protected static final DEBUG_PERFORMANCE:Z

.field protected static final LOG_TAG:Ljava/lang/String;

.field protected static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/AbsArtworkConverter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/AbsArtworkConverter;->TAG:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/AbsArtworkConverter;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/AbsArtworkConverter;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getArtworkSizeResId()I
    .annotation build Landroid/support/annotation/DimenRes;
    .end annotation
.end method

.method protected final resizeArtwork(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;
    .param p3, "sizeResId"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 22
    if-nez p2, :cond_0

    .line 23
    const/4 v2, 0x0

    .line 30
    :goto_0
    return-object v2

    .line 25
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 26
    .local v0, "bitmapSize":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 27
    .local v1, "size":I
    if-le v0, v1, :cond_1

    .line 28
    const/4 v2, 0x1

    invoke-static {p2, v1, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_1
    move-object v2, p2

    .line 30
    goto :goto_0
.end method
