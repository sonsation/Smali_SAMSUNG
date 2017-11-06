.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;
.super Ljava/lang/Object;
.source "ResizeStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$TestProvider;,
        Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;
    }
.end annotation


# static fields
.field private static final DEBUG_RESIZE_STRATEGY:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "ArtWorkResizeStrategy"


# instance fields
.field private mDefaultBiggestSize:Ljava/lang/Integer;

.field private final mKnownBiggestSize:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupportedDimensions:[I

.field private mSupportedSizes:[I


# direct methods
.method public constructor <init>([I)V
    .locals 1
    .param p1, "supportedDimensions"    # [I

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->mKnownBiggestSize:Ljava/util/HashMap;

    .line 68
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->mSupportedDimensions:[I

    .line 71
    return-void
.end method

.method private assertEquals(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "b1"    # Landroid/graphics/Bitmap;
    .param p2, "b2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 311
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    :cond_1
    return-void

    .line 314
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Assertion failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not equals: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkSupportedSize(I)V
    .locals 7
    .param p1, "size"    # I

    .prologue
    .line 173
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->mSupportedSizes:[I

    if-nez v2, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->updateSupportedSizes()V

    .line 176
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->mSupportedSizes:[I

    invoke-static {v2, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    if-gez v2, :cond_2

    .line 179
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->mSupportedSizes:[I

    .line 180
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->updateSupportedSizes()V

    .line 182
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->mSupportedSizes:[I

    invoke-static {v2, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    if-gez v2, :cond_2

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Abnormal height "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " normal heights are: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->mSupportedSizes:[I

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget v0, v3, v2

    .line 186
    .local v0, "s":I
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 192
    .end local v0    # "s":I
    :cond_1
    const-string v2, "ArtWorkResizeStrategy"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    return-void
.end method

.method private getInsertIndex(I)I
    .locals 3
    .param p1, "bitmapSize"    # I

    .prologue
    .line 161
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->mSupportedSizes:[I

    .line 162
    .local v1, "supportedSizes":[I
    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 163
    .local v0, "insertIndex":I
    if-gez v0, :cond_0

    .line 164
    neg-int v2, v0

    add-int/lit8 v0, v2, -0x1

    .line 166
    :cond_0
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_1

    .line 167
    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    .line 169
    :cond_1
    return v0
.end method

.method private getTestResult(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 230
    .line 231
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->artworkLoadingResult(Landroid/graphics/Bitmap;II)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;

    move-result-object v0

    return-object v0
.end method

.method private tempTest()V
    .locals 14

    .prologue
    const/16 v13, 0xd2

    const/16 v12, 0xbe

    const/4 v11, 0x0

    .line 236
    const/16 v4, 0xc8

    .line 237
    .local v4, "s1":I
    const/16 v5, 0x168

    .line 238
    .local v5, "s2":I
    const/16 v6, 0x280

    .line 239
    .local v6, "s3":I
    const/4 v9, 0x3

    new-array v9, v9, [I

    const/4 v10, 0x0

    aput v4, v9, v10

    const/4 v10, 0x1

    aput v5, v9, v10

    const/4 v10, 0x2

    aput v6, v9, v10

    iput-object v9, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->mSupportedSizes:[I

    .line 240
    invoke-static {v12, v12, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 241
    .local v7, "smaller":Landroid/graphics/Bitmap;
    invoke-static {v4, v4, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 242
    .local v0, "bs1":Landroid/graphics/Bitmap;
    invoke-static {v13, v13, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 243
    .local v1, "bs12":Landroid/graphics/Bitmap;
    invoke-static {v6, v6, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 244
    .local v2, "bs3":Landroid/graphics/Bitmap;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->mDefaultBiggestSize:Ljava/lang/Integer;

    .line 245
    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->mKnownBiggestSize:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 246
    const-string v9, "content://media/external/audio/albumart/17"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 247
    .local v8, "uri":Landroid/net/Uri;
    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$TestProvider;

    invoke-direct {v3, v11}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$TestProvider;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$1;)V

    .line 249
    .local v3, "p":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$TestProvider;
    invoke-static {v8, v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->keyFor(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object v9

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->unknownMaxSizeResult(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;

    move-result-object v10

    invoke-virtual {p0, v9, v10, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->putResult(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;)V

    .line 250
    iget-object v9, v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$TestProvider;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v9, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->assertEquals(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 252
    invoke-static {v8, v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->keyFor(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object v9

    invoke-virtual {p0, v9, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->getResult(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    invoke-direct {p0, v9, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->assertEquals(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 254
    invoke-static {v8, v5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->keyFor(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object v9

    invoke-virtual {p0, v9, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->getResult(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    invoke-direct {p0, v9, v11}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->assertEquals(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 256
    invoke-static {v8, v6}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->keyFor(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object v9

    invoke-virtual {p0, v9, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->getResult(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    invoke-direct {p0, v9, v11}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->assertEquals(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 259
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$TestProvider;->clean()V

    .line 260
    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->mKnownBiggestSize:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 263
    invoke-static {v8, v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->keyFor(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object v9

    invoke-direct {p0, v7}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->getTestResult(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;

    move-result-object v10

    invoke-virtual {p0, v9, v10, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->putResult(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;)V

    .line 264
    iget-object v9, v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$TestProvider;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v9, v7}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->assertEquals(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 266
    invoke-static {v8, v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->keyFor(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object v9

    invoke-virtual {p0, v9, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->getResult(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    invoke-direct {p0, v9, v7}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->assertEquals(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 268
    invoke-static {v8, v5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->keyFor(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object v9

    invoke-virtual {p0, v9, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->getResult(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    invoke-direct {p0, v9, v7}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->assertEquals(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 271
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$TestProvider;->clean()V

    .line 272
    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->mKnownBiggestSize:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 275
    invoke-static {v8, v5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->keyFor(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object v9

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->getTestResult(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;

    move-result-object v10

    invoke-virtual {p0, v9, v10, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->putResult(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;)V

    .line 276
    iget-object v9, v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$TestProvider;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v9, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->assertEquals(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 278
    invoke-static {v8, v5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->keyFor(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object v9

    invoke-virtual {p0, v9, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->getResult(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    invoke-direct {p0, v9, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->assertEquals(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 280
    invoke-static {v8, v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->keyFor(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object v9

    invoke-virtual {p0, v9, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->getResult(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    invoke-direct {p0, v9, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->assertEquals(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 282
    invoke-static {v8, v6}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->keyFor(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object v9

    invoke-virtual {p0, v9, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->getResult(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    invoke-direct {p0, v9, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->assertEquals(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 285
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$TestProvider;->clean()V

    .line 286
    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->mKnownBiggestSize:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 288
    invoke-static {v8, v6}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->keyFor(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object v9

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->getTestResult(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;

    move-result-object v10

    invoke-virtual {p0, v9, v10, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->putResult(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;)V

    .line 290
    invoke-static {v8, v6}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->keyFor(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object v9

    invoke-virtual {p0, v9, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->getResult(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    invoke-direct {p0, v9, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->assertEquals(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 292
    invoke-static {v8, v5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->keyFor(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object v9

    invoke-virtual {p0, v9, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->getResult(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    invoke-direct {p0, v9, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->assertEquals(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 294
    invoke-static {v8, v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->keyFor(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object v9

    invoke-virtual {p0, v9, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->getResult(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    invoke-direct {p0, v9, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->assertEquals(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 297
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$TestProvider;->clean()V

    .line 298
    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->mKnownBiggestSize:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 300
    invoke-static {v8, v5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->keyFor(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object v9

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->getTestResult(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;

    move-result-object v10

    invoke-virtual {p0, v9, v10, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->putResult(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;)V

    .line 301
    iget-object v9, v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$TestProvider;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v9, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->assertEquals(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 303
    invoke-static {v8, v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->keyFor(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object v9

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->getTestResult(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;

    move-result-object v10

    invoke-virtual {p0, v9, v10, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->putResult(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;)V

    .line 305
    invoke-static {v8, v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->keyFor(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object v9

    invoke-virtual {p0, v9, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->getResult(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    invoke-direct {p0, v9, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->assertEquals(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 307
    invoke-static {v8, v5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->keyFor(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object v9

    invoke-virtual {p0, v9, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->getResult(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    invoke-direct {p0, v9, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->assertEquals(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 308
    return-void
.end method

.method private updateSupportedSizes()V
    .locals 15

    .prologue
    const/4 v11, 0x0

    .line 198
    new-instance v6, Ljava/util/HashSet;

    iget-object v10, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->mSupportedDimensions:[I

    array-length v10, v10

    invoke-direct {v6, v10}, Ljava/util/HashSet;-><init>(I)V

    .line 199
    .local v6, "setOfSizes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->getCache()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 200
    .local v4, "res":Landroid/content/res/Resources;
    iget-object v12, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->mSupportedDimensions:[I

    array-length v13, v12

    move v10, v11

    :goto_0
    if-ge v10, v13, :cond_0

    aget v0, v12, v10

    .line 202
    .local v0, "dimension":I
    :try_start_0
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 203
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 209
    .end local v0    # "dimension":I
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v10

    new-array v9, v10, [I

    .line 210
    .local v9, "supportedSizes":[I
    const/4 v2, 0x0

    .line 211
    .local v2, "index":I
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 212
    .local v7, "size":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .local v3, "index":I
    aput v7, v9, v2

    move v2, v3

    .line 213
    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_2

    .line 215
    .end local v7    # "size":I
    :cond_1
    invoke-static {v9}, Ljava/util/Arrays;->sort([I)V

    .line 216
    array-length v10, v9

    add-int/lit8 v10, v10, -0x1

    aget v10, v9, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->mDefaultBiggestSize:Ljava/lang/Integer;

    .line 217
    iput-object v9, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->mSupportedSizes:[I

    .line 218
    sget-boolean v10, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->DEBUG:Z

    if-eqz v10, :cond_3

    .line 219
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .local v8, "str":Ljava/lang/StringBuilder;
    iget-object v12, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->mSupportedSizes:[I

    array-length v13, v12

    move v10, v11

    :goto_3
    if-ge v10, v13, :cond_2

    aget v5, v12, v10

    .line 221
    .local v5, "s":I
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    const-string v11, ", "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 224
    .end local v5    # "s":I
    :cond_2
    const-string v10, "ArtWorkResizeStrategy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "update supported sizes to: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .end local v8    # "str":Ljava/lang/StringBuilder;
    :cond_3
    return-void
.end method


# virtual methods
.method public getBiggestSize()I
    .locals 2

    .prologue
    .line 56
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->mSupportedSizes:[I

    if-nez v1, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->updateSupportedSizes()V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->mSupportedSizes:[I

    .line 60
    .local v0, "supportedSizes":[I
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v1, v0, v1

    return v1
.end method

.method public getBiggestSize(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Ljava/lang/Integer;
    .locals 2
    .param p1, "key"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->mKnownBiggestSize:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getResult(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;)Ljava/lang/Object;
    .locals 8
    .param p1, "key"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Result:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider",
            "<TResult;>;)TResult;"
        }
    .end annotation

    .prologue
    .line 78
    .local p2, "provider":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;, "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider<TResult;>;"
    iget v7, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mSize:I

    invoke-direct {p0, v7}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->checkSupportedSize(I)V

    .line 80
    invoke-interface {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;->getResultWithKey(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Ljava/lang/Object;

    move-result-object v3

    .line 81
    .local v3, "result":Ljava/lang/Object;, "TResult;"
    if-eqz v3, :cond_0

    move-object v7, v3

    .line 120
    :goto_0
    return-object v7

    .line 84
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->getBiggestSize(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Ljava/lang/Integer;

    move-result-object v0

    .line 85
    .local v0, "biggestSize":Ljava/lang/Integer;
    if-nez v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->mDefaultBiggestSize:Ljava/lang/Integer;

    .line 92
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->mSupportedSizes:[I

    .line 93
    .local v6, "supportedSizes":[I
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->getInsertIndex(I)I

    move-result v4

    .line 94
    .local v4, "startIndex":I
    iget v7, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mSize:I

    invoke-direct {p0, v7}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->getInsertIndex(I)I

    move-result v1

    .line 96
    .local v1, "endIndex":I
    if-le v1, v4, :cond_2

    .line 102
    aget v7, v6, v4

    .line 103
    invoke-static {p1, v7}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->copyOtherSize(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object v7

    invoke-interface {p2, v7}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;->getResultWithKey(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_0

    .line 105
    :cond_2
    move v2, v4

    .local v2, "i":I
    :goto_1
    if-lt v2, v1, :cond_5

    .line 106
    aget v5, v6, v2

    .line 107
    .local v5, "supportedBitmapSize":I
    iget v7, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mSize:I

    if-ne v5, v7, :cond_4

    .line 105
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 111
    :cond_4
    invoke-static {p1, v5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->copyOtherSize(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object v7

    invoke-interface {p2, v7}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;->getResultWithKey(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;)Ljava/lang/Object;

    move-result-object v3

    .line 112
    if-eqz v3, :cond_3

    move-object v7, v3

    .line 117
    goto :goto_0

    .line 120
    .end local v5    # "supportedBitmapSize":I
    :cond_5
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public putResult(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;)V
    .locals 8
    .param p1, "key"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;
    .param p2, "result"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;
    .param p3, "provider"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;

    .prologue
    .line 125
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 131
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget v5, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mSize:I

    invoke-direct {p0, v5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->checkSupportedSize(I)V

    .line 136
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->isRemote()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->isMultiResolution()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 137
    iget v2, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mSize:I

    .line 141
    .local v2, "insertIndexSize":I
    :goto_0
    iget v5, p2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;->maxWidth:I

    iget v6, p2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;->maxHeight:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 142
    .local v3, "resultSize":I
    if-lez v3, :cond_0

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->mKnownBiggestSize:Ljava/util/HashMap;

    iget-object v6, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 148
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->mKnownBiggestSize:Ljava/util/HashMap;

    iget-object v6, p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->mBaseUri:Landroid/net/Uri;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->mSupportedSizes:[I

    .line 151
    .local v4, "supportedSizes":[I
    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy;->getInsertIndex(I)I

    move-result v1

    .line 156
    .local v1, "insertIndex":I
    aget v5, v4, v1

    invoke-static {p1, v5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;->copyOtherSize(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;

    move-result-object v5

    invoke-interface {p3, v5, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ResizeStrategy$ResultProvider;->putResultWithKey(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkKey;Landroid/graphics/Bitmap;)V

    .line 158
    return-void

    .line 139
    .end local v1    # "insertIndex":I
    .end local v2    # "insertIndexSize":I
    .end local v3    # "resultSize":I
    .end local v4    # "supportedSizes":[I
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .restart local v2    # "insertIndexSize":I
    goto :goto_0
.end method
