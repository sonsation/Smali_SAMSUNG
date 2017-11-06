.class public Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;
.super Ljava/lang/Object;
.source "MArtworkUtils.java"


# static fields
.field public static final DEFAULT_ALBUM_ART:I

.field public static final DEFAULT_ALBUM_ART_FOR_SFINDER:Ljava/lang/String; = "music_player_default_cover"

.field public static final DEFAULT_ARTWORK_URI:Landroid/net/Uri;

.field public static final DEFAULT_BLUR_BG:I = 0x7f020198

.field public static final DEFAULT_RADIO_ALBUM_ART:I = 0x7f02018f

.field public static final DLNA_ARTWORK_URI:Landroid/net/Uri;

.field public static final NETWORK_TIMEOUT:I = 0x2710


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MDefaultArtworkUtils;->DLNA_ARTWORK_URI:Landroid/net/Uri;

    sput-object v0, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->DLNA_ARTWORK_URI:Landroid/net/Uri;

    .line 35
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MDefaultArtworkUtils;->DEFAULT_ARTWORK_URI:Landroid/net/Uri;

    sput-object v0, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->DEFAULT_ARTWORK_URI:Landroid/net/Uri;

    .line 37
    sget v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MDefaultArtworkUtils;->DEFAULT_ALBUM_ART:I

    sput v0, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->DEFAULT_ALBUM_ART:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAlbumUri(IJ)Landroid/net/Uri;
    .locals 1
    .param p0, "cpAttrs"    # I
    .param p1, "artKey"    # J

    .prologue
    .line 97
    invoke-static {p0}, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->getArtWorkUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->getAlbumUri(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getAlbumUri(Landroid/net/Uri;J)Landroid/net/Uri;
    .locals 1
    .param p0, "baseUri"    # Landroid/net/Uri;
    .param p1, "albumId"    # J

    .prologue
    .line 101
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getArtWorkUri(I)Landroid/net/Uri;
    .locals 2
    .param p0, "cpAttrs"    # I

    .prologue
    .line 52
    invoke-static {p0}, Lcom/samsung/android/app/music/provider/CpAttrs;->getCpName(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 62
    sget-object v0, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->DEFAULT_ARTWORK_URI:Landroid/net/Uri;

    :goto_0
    return-object v0

    .line 54
    :sswitch_0
    sget-object v0, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->DLNA_ARTWORK_URI:Landroid/net/Uri;

    goto :goto_0

    .line 56
    :sswitch_1
    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 57
    sget-object v0, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->DEFAULT_ARTWORK_URI:Landroid/net/Uri;

    goto :goto_0

    .line 59
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails$Album;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 52
    :sswitch_data_0
    .sparse-switch
        0x20000 -> :sswitch_0
        0x80000 -> :sswitch_1
    .end sparse-switch
.end method

.method public static getDefaultAlbumArt(I)I
    .locals 1
    .param p0, "queueType"    # I

    .prologue
    .line 142
    packed-switch p0, :pswitch_data_0

    .line 147
    sget v0, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->DEFAULT_ALBUM_ART:I

    :goto_0
    return v0

    .line 144
    :pswitch_0
    const v0, 0x7f02018f

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSquareArtwork(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "size"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    .line 112
    if-nez p0, :cond_0

    .line 138
    :goto_0
    return-object v4

    .line 117
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 118
    .local v1, "bitmapWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 119
    .local v0, "bitmapHeight":I
    if-ne v1, v0, :cond_1

    .line 121
    invoke-static {p0, p1, p1, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .local v4, "result":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 125
    .end local v4    # "result":Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 126
    .local v3, "maxSize":I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 127
    .local v5, "squareBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 128
    .local v2, "canvas":Landroid/graphics/Canvas;
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 129
    sub-int v6, v3, v1

    int-to-float v6, v6

    div-float/2addr v6, v8

    sub-int v7, v3, v0

    int-to-float v7, v7

    div-float/2addr v7, v8

    invoke-virtual {v2, p0, v6, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 133
    if-lez p1, :cond_2

    if-le v3, p1, :cond_2

    .line 134
    invoke-static {v5, p1, p1, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 136
    :cond_2
    move-object v4, v5

    .restart local v4    # "result":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static initCache(Landroid/app/Application;Z)V
    .locals 12
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "isDiskCacheEnabled"    # Z

    .prologue
    const/16 v11, 0x2710

    .line 67
    const/4 v7, 0x4

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    .line 70
    .local v5, "supportedDimensions":[I
    new-instance v7, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;

    invoke-direct {v7, p0, v5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;-><init>(Landroid/content/Context;[I)V

    .line 72
    invoke-virtual {v7, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->enableDiskCache(Z)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;

    move-result-object v4

    .line 74
    .local v4, "settings":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;
    invoke-static {p0, v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->initCache(Landroid/app/Application;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;)V

    .line 79
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;

    move-result-object v6

    .line 80
    .local v6, "syncLoader":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;
    const-string v2, "^https{0,1}.*"

    .line 81
    .local v2, "httpRegexp":Ljava/lang/String;
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceDLNALoader;

    sget-object v7, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$ServerContents$AlbumArt;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "album_art"

    aput-object v10, v8, v9

    invoke-direct {v1, v11, v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceDLNALoader;-><init>(ILandroid/net/Uri;[Ljava/lang/String;)V

    .line 85
    .local v1, "dlnaLoader":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceDLNALoader;
    const/4 v7, 0x3

    new-array v0, v7, [J

    fill-array-data v0, :array_1

    .line 87
    .local v0, "delays":[J
    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;

    invoke-direct {v3, v11, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;-><init>(ILjava/lang/String;)V

    .line 88
    .local v3, "networkLoader":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;
    invoke-virtual {v6, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->registerArtworkLoader(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;)V

    .line 89
    invoke-virtual {v6, v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->registerArtworkLoader(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;[J)V

    .line 90
    sget-boolean v7, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v7, :cond_0

    .line 91
    new-instance v7, Lcom/samsung/android/app/music/common/martworkcache/loaders/MilkAlbumArtLoader;

    invoke-direct {v7}, Lcom/samsung/android/app/music/common/martworkcache/loaders/MilkAlbumArtLoader;-><init>()V

    invoke-virtual {v6, v7, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->registerArtworkLoader(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;[J)V

    .line 92
    new-instance v7, Lcom/samsung/android/app/music/common/martworkcache/loaders/MilkArtLoader;

    invoke-direct {v7}, Lcom/samsung/android/app/music/common/martworkcache/loaders/MilkArtLoader;-><init>()V

    invoke-virtual {v6, v7, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->registerArtworkLoader(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;[J)V

    .line 94
    :cond_0
    return-void

    .line 67
    nop

    :array_0
    .array-data 4
        0x7f0d0064
        0x7f0d0063
        0x7f0d0061
        0x7f0d0062
    .end array-data

    .line 85
    :array_1
    .array-data 8
        0x64
        0xc8
        0x190
    .end array-data
.end method
