.class public final Lcom/samsung/android/app/music/service/observer/artwork/WidgetArtworkConverter;
.super Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/AbsArtworkConverter;
.source "WidgetArtworkConverter.java"


# static fields
.field private static final CONVERTER_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/utils/graphics/IArtworkConverter;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUB_TAG:Ljava/lang/String; = "Widget : "


# instance fields
.field private mCircleDefaultArtwork:Landroid/graphics/Bitmap;

.field private mDefaultArtwork:Landroid/graphics/Bitmap;

.field private final mObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const v4, 0x7f0d0047

    .line 22
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/service/observer/artwork/WidgetArtworkConverter;->CONVERTER_MAP:Landroid/util/SparseArray;

    .line 26
    sget-object v0, Lcom/samsung/android/app/music/service/observer/artwork/WidgetArtworkConverter;->CONVERTER_MAP:Landroid/util/SparseArray;

    const/4 v1, 0x2

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkConverter;

    const v3, 0x7f0d0740

    invoke-direct {v2, v4, v3}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkConverter;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    sget-object v0, Lcom/samsung/android/app/music/service/observer/artwork/WidgetArtworkConverter;->CONVERTER_MAP:Landroid/util/SparseArray;

    const/4 v1, 0x1

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;

    const v3, 0x7f020197

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/RoundMaskConverter;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 0
    .param p1, "observable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/AbsArtworkConverter;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/artwork/WidgetArtworkConverter;->mObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 40
    return-void
.end method

.method private convertInternal(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;
    .param p3, "shape"    # I

    .prologue
    .line 83
    const-wide/16 v0, 0x0

    .line 87
    .local v0, "base":J
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/observer/artwork/WidgetArtworkConverter;->getArtworkSizeResId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 88
    .local v2, "size":I
    invoke-static {p2, v2}, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->getSquareArtwork(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 91
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    if-nez v3, :cond_0

    .line 92
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 95
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/observer/artwork/WidgetArtworkConverter;->resolveArtwork(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 100
    return-object p2
.end method

.method private getDefaultArtwork(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shape"    # I

    .prologue
    .line 60
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 61
    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/artwork/WidgetArtworkConverter;->mCircleDefaultArtwork:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 63
    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/artwork/WidgetArtworkConverter;->mDefaultArtwork:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 65
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getDefaultBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 64
    invoke-direct {p0, p1, v2, p2}, Lcom/samsung/android/app/music/service/observer/artwork/WidgetArtworkConverter;->convertInternal(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 69
    .local v0, "bm":Landroid/graphics/Bitmap;
    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/music/service/observer/artwork/WidgetArtworkConverter;->mCircleDefaultArtwork:Landroid/graphics/Bitmap;

    .line 71
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/artwork/WidgetArtworkConverter;->mCircleDefaultArtwork:Landroid/graphics/Bitmap;

    .line 79
    .local v1, "defaultBitmap":Landroid/graphics/Bitmap;
    :goto_1
    return-object v1

    .line 67
    .end local v1    # "defaultBitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/artwork/WidgetArtworkConverter;->mDefaultArtwork:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v2, p2}, Lcom/samsung/android/app/music/service/observer/artwork/WidgetArtworkConverter;->resolveArtwork(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 73
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/artwork/WidgetArtworkConverter;->mDefaultArtwork:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    .line 75
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getDefaultBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 74
    invoke-direct {p0, p1, v2, p2}, Lcom/samsung/android/app/music/service/observer/artwork/WidgetArtworkConverter;->convertInternal(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/service/observer/artwork/WidgetArtworkConverter;->mDefaultArtwork:Landroid/graphics/Bitmap;

    .line 77
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/artwork/WidgetArtworkConverter;->mDefaultArtwork:Landroid/graphics/Bitmap;

    .restart local v1    # "defaultBitmap":Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method private resolveArtwork(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;
    .param p3, "shape"    # I

    .prologue
    .line 104
    sget-object v1, Lcom/samsung/android/app/music/service/observer/artwork/WidgetArtworkConverter;->CONVERTER_MAP:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/IArtworkConverter;

    .line 105
    .local v0, "converter":Lcom/samsung/android/app/musiclibrary/core/utils/graphics/IArtworkConverter;
    if-eqz v0, :cond_0

    .line 106
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/IArtworkConverter;->convert(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 108
    .end local p2    # "bm":Landroid/graphics/Bitmap;
    :cond_0
    return-object p2
.end method


# virtual methods
.method public convert(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 49
    const/4 v0, 0x1

    .line 50
    .local v0, "shape":I
    if-nez p2, :cond_0

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/service/observer/artwork/WidgetArtworkConverter;->getDefaultArtwork(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 55
    :goto_0
    return-object v1

    .line 53
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/service/observer/artwork/WidgetArtworkConverter;->resolveArtwork(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    move-object v1, p2

    .line 55
    goto :goto_0
.end method

.method public getArtworkSizeResId()I
    .locals 1

    .prologue
    .line 44
    const v0, 0x7f0d0047

    return v0
.end method
