.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;
.super Ljava/lang/Object;
.source "SyncArtworkLoader.java"


# annotations
.annotation build Landroid/support/annotation/WorkerThread;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$SyncArtworkLoaderHolder;,
        Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field private static final DEBUG_WATERMARK:Z = false

.field private static final FULL_TAG:Ljava/lang/String;

.field private static final MAX_HEIGHT:I = 0x7fffffff

.field public static final TAG:Ljava/lang/String;

.field public static final TSP:Ljava/lang/String; = "TSP: "

.field public static final sEmptyResult:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;

.field private static sMaxHeight:I

.field private static final sNoRetry:[J


# instance fields
.field private mApplication:Landroid/app/Application;

.field private final mRetries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;",
            "[J>;"
        }
    .end annotation
.end field

.field private mUriDispatcher:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;

.field private mWatermarkPaints:[Landroid/graphics/Paint;

.field private textBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 48
    new-array v0, v1, [J

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->sNoRetry:[J

    .line 128
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;

    invoke-direct {v0, v2, v1, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;-><init>(Landroid/graphics/Bitmap;IILcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$1;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->sEmptyResult:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ArtWork"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->TAG:Ljava/lang/String;

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->FULL_TAG:Ljava/lang/String;

    .line 139
    const v0, 0x7fffffff

    sput v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->sMaxHeight:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->mRetries:Ljava/util/Map;

    return-void
.end method

.method private applyWatermark(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;ILandroid/net/Uri;)V
    .locals 13
    .param p1, "res"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;
    .param p2, "size"    # I
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 193
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 194
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 217
    :goto_0
    return-void

    .line 197
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x1

    invoke-virtual {v6, v0, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 198
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 199
    .local v2, "canvas":Landroid/graphics/Canvas;
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->mWatermarkPaints:[Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 200
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->mWatermarkPaints:[Landroid/graphics/Paint;

    .line 201
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->textBounds:Landroid/graphics/Rect;

    .line 203
    const/4 v0, 0x3

    new-array v8, v0, [I

    fill-array-data v8, :array_0

    .line 204
    .local v8, "colors":[I
    const/4 v9, 0x0

    .line 205
    .local v9, "index":I
    array-length v4, v8

    const/4 v0, 0x0

    move v10, v9

    .end local v9    # "index":I
    .local v10, "index":I
    :goto_1
    if-ge v0, v4, :cond_1

    aget v7, v8, v0

    .line 206
    .local v7, "color":I
    iget-object v11, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->mWatermarkPaints:[Landroid/graphics/Paint;

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "index":I
    .restart local v9    # "index":I
    invoke-direct {p0, v7}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->createWatermarkPaint(I)Landroid/graphics/Paint;

    move-result-object v12

    aput-object v12, v11, v10

    .line 205
    add-int/lit8 v0, v0, 0x1

    move v10, v9

    .end local v9    # "index":I
    .restart local v10    # "index":I
    goto :goto_1

    .line 209
    .end local v7    # "color":I
    .end local v8    # "colors":[I
    .end local v10    # "index":I
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bitmap: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 210
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " Size: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " id: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 211
    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, "watermarkText":Ljava/lang/String;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 213
    .local v1, "bitmapSize":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->mWatermarkPaints:[Landroid/graphics/Paint;

    array-length v0, v0

    if-ge v5, v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->mWatermarkPaints:[Landroid/graphics/Paint;

    aget-object v4, v0, v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->drawCenteredText(ILandroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint;I)V

    .line 213
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 216
    :cond_2
    invoke-virtual {p1, v6}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 203
    :array_0
    .array-data 4
        -0x1
        -0x10000
        -0x1000000
    .end array-data
.end method

.method public static artworkLoadingResult(Landroid/graphics/Bitmap;II)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "maxWidth"    # I
    .param p2, "maxHeight"    # I

    .prologue
    .line 80
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;-><init>(Landroid/graphics/Bitmap;IILcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$1;)V

    return-object v0
.end method

.method private createWatermarkPaint(I)Landroid/graphics/Paint;
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 228
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 229
    .local v0, "p":Landroid/graphics/Paint;
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 230
    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 231
    return-object v0
.end method

.method private doInit(Landroid/app/Application;)V
    .locals 3
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 452
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->mApplication:Landroid/app/Application;

    .line 453
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceLocalLoader;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceLocalLoader;-><init>()V

    .line 454
    .local v0, "defaultLoader":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;-><init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->mUriDispatcher:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;

    .line 455
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->mRetries:Ljava/util/Map;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->sNoRetry:[J

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    return-void
.end method

.method private drawCenteredText(ILandroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Paint;I)V
    .locals 5
    .param p1, "size"    # I
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "paint"    # Landroid/graphics/Paint;
    .param p5, "lineIndex"    # I

    .prologue
    .line 221
    const/4 v1, 0x0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->textBounds:Landroid/graphics/Rect;

    invoke-virtual {p4, p3, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 222
    div-int/lit8 v0, p1, 0x2

    .line 223
    .local v0, "hs":I
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->textBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->textBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int v2, v0, v2

    add-int/lit8 v3, p5, -0x1

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->textBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 224
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->textBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->textBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    invoke-virtual {p2, p3, v1, v2, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 225
    return-void
.end method

.method private static getHeightStr(I)Ljava/lang/String;
    .locals 1
    .param p0, "maxHeight"    # I

    .prologue
    .line 467
    const v0, 0x7fffffff

    if-ne p0, v0, :cond_0

    .line 468
    const-string v0, "UNSPECIFIED"

    .line 470
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;
    .locals 1

    .prologue
    .line 293
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$SyncArtworkLoaderHolder;->sInstance:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;

    return-object v0
.end method

.method private getLoader(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 460
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->mUriDispatcher:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->getLoader(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalBitmapFromFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "size"    # I

    .prologue
    const/4 v2, 0x0

    .line 363
    if-nez p0, :cond_0

    .line 364
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->TAG:Ljava/lang/String;

    const-string v4, "getLocalBitmapFromFileDescriptor() : file does not exist"

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    :goto_0
    return-object v2

    .line 368
    :cond_0
    const/4 v1, 0x0

    .line 369
    .local v1, "w":I
    const/4 v0, 0x0

    .line 374
    .local v0, "h":I
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 375
    const/4 v2, 0x0

    invoke-static {p0, v2, p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 377
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 378
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 380
    iget v2, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {p2, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->getSampleSize(III)I

    move-result v2

    iput v2, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 381
    const/4 v2, 0x0

    iput-boolean v2, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 382
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 384
    :catchall_0
    move-exception v2

    throw v2
.end method

.method public static getOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 2

    .prologue
    .line 304
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 305
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 306
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 307
    return-object v0
.end method

.method private static getSampleSize(III)I
    .locals 4
    .param p0, "targetSize"    # I
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 395
    const/4 v2, 0x1

    .line 397
    .local v2, "sampleSize":I
    if-gt p2, p0, :cond_0

    if-le p1, p0, :cond_1

    .line 399
    :cond_0
    div-int/lit8 v0, p2, 0x2

    .line 400
    .local v0, "halfHeight":I
    div-int/lit8 v1, p1, 0x2

    .line 407
    .local v1, "halfWidth":I
    :goto_0
    div-int v3, v0, v2

    if-lt v3, p0, :cond_1

    div-int v3, v1, v2

    if-lt v3, p0, :cond_1

    .line 409
    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 415
    .end local v0    # "halfHeight":I
    .end local v1    # "halfWidth":I
    :cond_1
    return v2
.end method

.method public static init(Landroid/app/Application;)V
    .locals 4
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 283
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 284
    .local v0, "m":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sput v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->sMaxHeight:I

    .line 285
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAutoMaxHeight res: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->sMaxHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;

    move-result-object v1

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->doInit(Landroid/app/Application;)V

    .line 287
    return-void
.end method

.method public static resizeIfNeed(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "size"    # I
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 317
    if-nez p1, :cond_1

    .line 318
    const/4 p1, 0x0

    .line 351
    .end local p1    # "b":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p1

    .line 320
    .restart local p1    # "b":Landroid/graphics/Bitmap;
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->updateSize(I)I

    move-result p0

    .line 321
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 322
    .local v1, "bitmapSize":I
    if-le v1, p0, :cond_0

    .line 325
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 326
    .local v2, "bitmapWidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 328
    .local v0, "bitmapHeight":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 329
    move v5, p0

    .line 330
    .local v5, "width":I
    move v3, p0

    .line 346
    .local v3, "height":I
    :goto_1
    const/4 v6, 0x1

    invoke-static {p1, v5, v3, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    goto :goto_0

    .line 332
    .end local v3    # "height":I
    .end local v5    # "width":I
    :cond_2
    int-to-float v6, v2

    int-to-float v7, v0

    div-float v4, v6, v7

    .line 333
    .local v4, "ratio":F
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v4, v6

    if-lez v6, :cond_3

    .line 334
    move v5, p0

    .line 335
    .restart local v5    # "width":I
    int-to-float v6, p0

    div-float/2addr v6, v4

    float-to-int v3, v6

    .restart local v3    # "height":I
    goto :goto_1

    .line 337
    .end local v3    # "height":I
    .end local v5    # "width":I
    :cond_3
    int-to-float v6, p0

    mul-float/2addr v6, v4

    float-to-int v5, v6

    .line 338
    .restart local v5    # "width":I
    move v3, p0

    .restart local v3    # "height":I
    goto :goto_1

    .line 353
    .end local v0    # "bitmapHeight":I
    .end local v1    # "bitmapSize":I
    .end local v2    # "bitmapWidth":I
    .end local v3    # "height":I
    .end local v4    # "ratio":F
    .end local v5    # "width":I
    :catchall_0
    move-exception v6

    throw v6
.end method

.method public static unknownMaxSizeResult(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 66
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v2, v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;-><init>(Landroid/graphics/Bitmap;IILcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$1;)V

    return-object v0
.end method

.method private static updateSize(I)I
    .locals 2
    .param p0, "size"    # I

    .prologue
    .line 439
    move v0, p0

    .line 440
    .local v0, "origHeight":I
    if-ltz p0, :cond_0

    sget v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->sMaxHeight:I

    if-le p0, v1, :cond_1

    .line 441
    :cond_0
    sget p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->sMaxHeight:I

    .line 448
    :cond_1
    return p0
.end method


# virtual methods
.method public addToDiskCache(Landroid/content/Context;Landroid/net/Uri;ILjava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "size"    # I
    .param p4, "fileName"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->addToDiskCache(Landroid/content/Context;Landroid/net/Uri;ILjava/lang/String;)V

    .line 85
    return-void
.end method

.method public clearDiskCache(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->clearDiskCache(Landroid/content/Context;)V

    .line 89
    return-void
.end method

.method public getMaxRequestDuration(Landroid/net/Uri;)J
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->getLoader(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    move-result-object v2

    .line 267
    .local v2, "loader":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->mRetries:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    .line 268
    .local v3, "retries":[J
    array-length v6, v3

    if-lez v6, :cond_1

    .line 269
    const-wide/16 v4, 0x0

    .line 270
    .local v4, "retriesSum":J
    array-length v7, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_0

    aget-wide v0, v3, v6

    .line 271
    .local v0, "c":J
    add-long/2addr v4, v0

    .line 270
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 274
    .end local v0    # "c":J
    :cond_0
    invoke-interface {v2, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;->getMaxRequestDuration(Landroid/net/Uri;)J

    move-result-wide v6

    array-length v8, v3

    int-to-long v8, v8

    mul-long/2addr v6, v8

    add-long/2addr v6, v4

    .line 276
    .end local v4    # "retriesSum":J
    :goto_1
    return-wide v6

    :cond_1
    invoke-interface {v2, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;->getMaxRequestDuration(Landroid/net/Uri;)J

    move-result-wide v6

    goto :goto_1
.end method

.method public isDiskCacheUri(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->getLoader(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;->isDiskCached(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public isMultiResolution(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->getLoader(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;->isMultiResolution(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public isRemoteUri(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->getLoader(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;->isRemote(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public loadArtwork(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "size"    # I
    .param p4, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 159
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->loadArtworkResult(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceConnectionTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 163
    :goto_0
    return-object v1

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->FULL_TAG:Ljava/lang/String;

    const-string v2, "LoadArtwork"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    const/4 v1, 0x0

    goto :goto_0

    .line 160
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public loadArtworkResult(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "size"    # I
    .param p4, "options"    # Landroid/graphics/BitmapFactory$Options;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 174
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->mApplication:Landroid/app/Application;

    .line 175
    invoke-static {v2, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->loadArtwork(Landroid/content/Context;Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    move-result-object v1

    .line 176
    .local v1, "serviceResult":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->hasImage()Z

    move-result v2

    if-nez v2, :cond_0

    .line 177
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->sEmptyResult:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;

    .line 185
    :goto_0
    return-object v0

    .line 180
    :cond_0
    invoke-virtual {v1, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->getMaxSize()I

    move-result v3

    .line 181
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->getMaxSize()I

    move-result v4

    .line 180
    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->artworkLoadingResult(Landroid/graphics/Bitmap;II)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;

    move-result-object v0

    .line 185
    .local v0, "result":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader$ArtworkLoadingResult;
    goto :goto_0
.end method

.method public registerArtworkLoader(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;)V
    .locals 1
    .param p1, "serviceArtworkLoader"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 420
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->sNoRetry:[J

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->registerArtworkLoader(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;[J)V

    .line 421
    return-void
.end method

.method public registerArtworkLoader(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;[J)V
    .locals 1
    .param p1, "serviceArtworkLoader"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "retryDelay"    # [J
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 431
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->mUriDispatcher:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->registerLoader(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;)V

    .line 432
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->mRetries:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;

    move-result-object v0

    .line 435
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->registerArtworkLoader(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;[J)V

    .line 436
    return-void
.end method

.method public removeFromDiskCache(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "size"    # I

    .prologue
    .line 92
    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->removeFromDiskCache(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 93
    return-void
.end method
