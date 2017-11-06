.class public Lcom/samsung/android/app/music/common/martworkcache/loaders/MilkAlbumArtLoader;
.super Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceContentProviderLoader;
.source "MilkAlbumArtLoader.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MilkAlbumArtLoader"


# instance fields
.field private mBigImageUriColumnIndex:I

.field private final mLoader:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;

.field private mMediumImageUriColumnIndex:I

.field private mSmallImageUriColumnIndex:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 41
    sget-object v0, Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails$Album;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "image_url_small"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "image_url_middle"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "image_url_big"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceContentProviderLoader;-><init>(Landroid/net/Uri;[Ljava/lang/String;)V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/common/martworkcache/loaders/MilkAlbumArtLoader;->mBigImageUriColumnIndex:I

    .line 43
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;

    const/16 v1, 0x2710

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/martworkcache/loaders/MilkAlbumArtLoader;->mLoader:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;

    .line 44
    return-void
.end method

.method private static convertThumbnailSize(Landroid/content/Context;I)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "size"    # I

    .prologue
    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 138
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x7f0d0064

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 139
    .local v1, "bitmapSizeSmall":I
    const v4, 0x7f0d0063

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 141
    .local v0, "bitmapSizeMiddle":I
    if-le p1, v0, :cond_0

    .line 142
    const/16 v2, 0x258

    .line 148
    .local v2, "modifiedSize":I
    :goto_0
    const-string v4, "MilkAlbumArtLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "convertThumbnailSize() | origin: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pixel > modified: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pixel"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return v2

    .line 143
    .end local v2    # "modifiedSize":I
    :cond_0
    if-gt p1, v0, :cond_1

    if-le p1, v1, :cond_1

    .line 144
    const/16 v2, 0xc8

    .restart local v2    # "modifiedSize":I
    goto :goto_0

    .line 146
    .end local v2    # "modifiedSize":I
    :cond_1
    const/16 v2, 0x60

    .restart local v2    # "modifiedSize":I
    goto :goto_0
.end method

.method private findUrl(ILandroid/database/Cursor;)Ljava/lang/String;
    .locals 5
    .param p1, "size"    # I
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .line 84
    iget v3, p0, Lcom/samsung/android/app/music/common/martworkcache/loaders/MilkAlbumArtLoader;->mBigImageUriColumnIndex:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 86
    const-string v3, "image_url_big"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/music/common/martworkcache/loaders/MilkAlbumArtLoader;->mBigImageUriColumnIndex:I

    .line 87
    const-string v3, "image_url_middle"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/music/common/martworkcache/loaders/MilkAlbumArtLoader;->mMediumImageUriColumnIndex:I

    .line 88
    const-string v3, "image_url_small"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/music/common/martworkcache/loaders/MilkAlbumArtLoader;->mSmallImageUriColumnIndex:I

    .line 90
    :cond_0
    iget v3, p0, Lcom/samsung/android/app/music/common/martworkcache/loaders/MilkAlbumArtLoader;->mBigImageUriColumnIndex:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "bigUrl":Ljava/lang/String;
    iget v3, p0, Lcom/samsung/android/app/music/common/martworkcache/loaders/MilkAlbumArtLoader;->mMediumImageUriColumnIndex:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "middleUrl":Ljava/lang/String;
    iget v3, p0, Lcom/samsung/android/app/music/common/martworkcache/loaders/MilkAlbumArtLoader;->mSmallImageUriColumnIndex:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "smallUrl":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 102
    const/4 v2, 0x0

    .end local v0    # "bigUrl":Ljava/lang/String;
    .end local v1    # "middleUrl":Ljava/lang/String;
    .end local v2    # "smallUrl":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v2

    .line 96
    .restart local v0    # "bigUrl":Ljava/lang/String;
    .restart local v1    # "middleUrl":Ljava/lang/String;
    .restart local v2    # "smallUrl":Ljava/lang/String;
    :sswitch_0
    if-nez v2, :cond_1

    if-eqz v1, :cond_2

    move-object v2, v1

    goto :goto_0

    :cond_2
    move-object v2, v0

    goto :goto_0

    .line 98
    :sswitch_1
    if-eqz v1, :cond_3

    .end local v1    # "middleUrl":Ljava/lang/String;
    :goto_1
    move-object v2, v1

    goto :goto_0

    .restart local v1    # "middleUrl":Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_4

    move-object v1, v0

    goto :goto_1

    :cond_4
    move-object v1, v2

    goto :goto_1

    .line 100
    :sswitch_2
    if-eqz v0, :cond_5

    .end local v0    # "bigUrl":Ljava/lang/String;
    :goto_2
    move-object v2, v0

    goto :goto_0

    .restart local v0    # "bigUrl":Ljava/lang/String;
    :cond_5
    if-eqz v1, :cond_6

    move-object v0, v1

    goto :goto_2

    :cond_6
    move-object v0, v2

    goto :goto_2

    .line 94
    :sswitch_data_0
    .sparse-switch
        0x60 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x258 -> :sswitch_2
    .end sparse-switch
.end method

.method private static getThumbnailId(Landroid/net/Uri;)J
    .locals 4
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 126
    const/4 v1, 0x0

    .line 128
    .local v1, "id":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 133
    :goto_0
    return-wide v2

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 133
    const-wide/16 v2, -0x1

    goto :goto_0
.end method


# virtual methods
.method public getMaxRequestDuration(Landroid/net/Uri;)J
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/common/martworkcache/loaders/MilkAlbumArtLoader;->mLoader:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;->getMaxRequestDuration(Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isDiskCached(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public isMultiResolution(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public isRemote(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public loadArtwork(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "size"    # I
    .param p4, "options"    # Landroid/graphics/BitmapFactory$Options;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 50
    const-string v7, "MilkAlbumArtLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadArtwork() called with: uri = ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "], size = ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {p2}, Lcom/samsung/android/app/music/common/martworkcache/loaders/MilkAlbumArtLoader;->getThumbnailId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 52
    .local v4, "thumbnailId":J
    const-string/jumbo v2, "thumbnail_id =? AND thumbnail_type =?"

    .line 54
    .local v2, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .line 55
    .local v6, "thumbnailUrl":Ljava/lang/String;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    .line 56
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x1

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x0

    .line 55
    invoke-virtual {p0, p1, v2, v7, v8}, Lcom/samsung/android/app/music/common/martworkcache/loaders/MilkAlbumArtLoader;->openCursor(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 57
    .local v0, "c":Landroid/database/Cursor;
    invoke-static {p1, p3}, Lcom/samsung/android/app/music/common/martworkcache/loaders/MilkAlbumArtLoader;->convertThumbnailSize(Landroid/content/Context;I)I

    move-result v3

    .line 60
    .local v3, "thumbnailSize":I
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 61
    invoke-direct {p0, v3, v0}, Lcom/samsung/android/app/music/common/martworkcache/loaders/MilkAlbumArtLoader;->findUrl(ILandroid/database/Cursor;)Ljava/lang/String;

    move-result-object v6

    .line 62
    if-eqz v6, :cond_0

    .line 63
    invoke-static {v6}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getImagePixelSize(Ljava/lang/String;)I

    move-result v3

    .line 65
    :cond_0
    const-string v7, "MilkAlbumArtLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadArtwork() thumbnailUrl = ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] for: uri = ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "], size = ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_1
    if-eqz v0, :cond_2

    .line 71
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 74
    :cond_2
    if-eqz v6, :cond_4

    .line 75
    iget-object v7, p0, Lcom/samsung/android/app/music/common/martworkcache/loaders/MilkAlbumArtLoader;->mLoader:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;

    .line 76
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, p1, v8, v3, p4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceNetworkLoader;->loadArtwork(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    move-result-object v1

    .line 77
    .local v1, "result":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    const/16 v7, 0x258

    invoke-static {v1, v7}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->changeMaxSize(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    move-result-object v7

    .line 79
    .end local v1    # "result":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    :goto_0
    return-object v7

    .line 70
    :catchall_0
    move-exception v7

    if-eqz v0, :cond_3

    .line 71
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v7

    .line 79
    :cond_4
    sget-object v7, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->Empty:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    goto :goto_0
.end method
