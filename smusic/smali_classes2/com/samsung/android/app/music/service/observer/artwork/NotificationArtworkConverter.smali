.class public final Lcom/samsung/android/app/music/service/observer/artwork/NotificationArtworkConverter;
.super Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/AbsArtworkConverter;
.source "NotificationArtworkConverter.java"


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

.field private static final SUB_TAG:Ljava/lang/String; = "Notification : "


# instance fields
.field private mCircleDefaultArtwork:Landroid/graphics/Bitmap;

.field private mDefaultArtwork:Landroid/graphics/Bitmap;

.field private final mObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 23
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/service/observer/artwork/NotificationArtworkConverter;->CONVERTER_MAP:Landroid/util/SparseArray;

    .line 28
    sget-object v0, Lcom/samsung/android/app/music/service/observer/artwork/NotificationArtworkConverter;->CONVERTER_MAP:Landroid/util/SparseArray;

    const/4 v1, 0x2

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkConverter;

    const v3, 0x7f0d00b0

    const v4, 0x7f0d0740

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/CircleArtworkConverter;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 0
    .param p1, "observable"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/AbsArtworkConverter;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/samsung/android/app/music/service/observer/artwork/NotificationArtworkConverter;->mObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 39
    return-void
.end method

.method private convertInternal(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;
    .param p3, "shape"    # I

    .prologue
    .line 89
    const-wide/16 v0, 0x0

    .line 93
    .local v0, "base":J
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/observer/artwork/NotificationArtworkConverter;->getArtworkSizeResId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 94
    .local v2, "size":I
    invoke-static {p2, v2}, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->getSquareArtwork(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 97
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    if-nez v3, :cond_0

    .line 98
    sget-object v3, Lcom/samsung/android/app/music/service/observer/artwork/NotificationArtworkConverter;->TAG:Ljava/lang/String;

    const-string v4, "Notification : bm.config == null convert to 565"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 102
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/service/observer/artwork/NotificationArtworkConverter;->resolveArtwork(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 107
    return-object p2
.end method

.method private getDefaultArtwork(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shape"    # I

    .prologue
    .line 65
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 66
    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/artwork/NotificationArtworkConverter;->mCircleDefaultArtwork:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 68
    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/artwork/NotificationArtworkConverter;->mDefaultArtwork:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 70
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getDefaultBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 69
    invoke-direct {p0, p1, v2, p2}, Lcom/samsung/android/app/music/service/observer/artwork/NotificationArtworkConverter;->convertInternal(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 74
    .local v0, "bm":Landroid/graphics/Bitmap;
    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/music/service/observer/artwork/NotificationArtworkConverter;->mCircleDefaultArtwork:Landroid/graphics/Bitmap;

    .line 76
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/artwork/NotificationArtworkConverter;->mCircleDefaultArtwork:Landroid/graphics/Bitmap;

    .line 85
    .local v1, "defaultBitmap":Landroid/graphics/Bitmap;
    :goto_1
    return-object v1

    .line 72
    .end local v1    # "defaultBitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/artwork/NotificationArtworkConverter;->mDefaultArtwork:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v2, p2}, Lcom/samsung/android/app/music/service/observer/artwork/NotificationArtworkConverter;->resolveArtwork(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 79
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/artwork/NotificationArtworkConverter;->mDefaultArtwork:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    .line 81
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/DefaultDrawableCache;->getDefaultBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 80
    invoke-direct {p0, p1, v2, p2}, Lcom/samsung/android/app/music/service/observer/artwork/NotificationArtworkConverter;->convertInternal(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/service/observer/artwork/NotificationArtworkConverter;->mDefaultArtwork:Landroid/graphics/Bitmap;

    .line 83
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/music/service/observer/artwork/NotificationArtworkConverter;->mDefaultArtwork:Landroid/graphics/Bitmap;

    .restart local v1    # "defaultBitmap":Landroid/graphics/Bitmap;
    goto :goto_1
.end method

.method private resolveArtwork(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;
    .param p3, "shape"    # I

    .prologue
    .line 111
    sget-object v1, Lcom/samsung/android/app/music/service/observer/artwork/NotificationArtworkConverter;->CONVERTER_MAP:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/IArtworkConverter;

    .line 112
    .local v0, "converter":Lcom/samsung/android/app/musiclibrary/core/utils/graphics/IArtworkConverter;
    if-eqz v0, :cond_0

    .line 113
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/IArtworkConverter;->convert(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 115
    .end local p2    # "bm":Landroid/graphics/Bitmap;
    :cond_0
    return-object p2
.end method


# virtual methods
.method public convert(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 48
    iget-object v2, p0, Lcom/samsung/android/app/music/service/observer/artwork/NotificationArtworkConverter;->mObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    .line 50
    .local v0, "m":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isRadio()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    const/4 v1, 0x2

    .line 55
    .local v1, "shape":I
    :goto_0
    if-nez p2, :cond_1

    .line 56
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/music/service/observer/artwork/NotificationArtworkConverter;->getDefaultArtwork(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 60
    :goto_1
    return-object v2

    .line 53
    .end local v1    # "shape":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "shape":I
    goto :goto_0

    .line 58
    :cond_1
    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/app/music/service/observer/artwork/NotificationArtworkConverter;->convertInternal(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    move-object v2, p2

    .line 60
    goto :goto_1
.end method

.method public getArtworkSizeResId()I
    .locals 1

    .prologue
    .line 43
    const v0, 0x7f0d0063

    return v0
.end method
