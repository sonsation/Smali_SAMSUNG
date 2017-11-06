.class public final Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;
.super Ljava/lang/Object;
.source "TintColorCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfoRequest;,
        Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;,
        Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;,
        Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintColorCacheHolder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_TSP:Z = true

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final mValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDefaultBitmapColors:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/DebugCompat;->isProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->DEBUG:Z

    .line 29
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->LOG_TAG:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->mValues:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->mUiHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;)Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->mDefaultBitmapColors:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;)Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;
    .param p1, "x1"    # Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->mDefaultBitmapColors:Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->getGradientColorResult(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/Map;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->mValues:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getGradientColorResult(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/16 v8, 0xa

    .line 160
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 162
    .local v4, "start":J
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 165
    .local v0, "bitmapSize":I
    if-le v0, v8, :cond_0

    .line 166
    const/4 v6, 0x0

    invoke-static {p1, v8, v8, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 169
    :cond_0
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    const/16 v6, 0xb

    const/4 v7, 0x1

    invoke-static {p1, v6, v7}, Lcom/sec/android/gradient_color_extractor/MusicGradient;->getGradientColorFromBitmap(Landroid/graphics/Bitmap;II)Lcom/sec/android/gradient_color_extractor/MusicGradient$GradientColorResult;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v1, v6, v7}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;-><init>(Lcom/sec/android/gradient_color_extractor/MusicGradient$GradientColorResult;Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$1;)V

    .line 171
    .local v1, "res":Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v6, v4

    .line 172
    .local v2, "elapsed":J
    sget-object v6, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getGradientColorResult() takes: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-object v1
.end method

.method public static getInstance()Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintColorCacheHolder;->access$000()Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getColor(Landroid/content/Context;Landroid/net/Uri;JILcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseUri"    # Landroid/net/Uri;
    .param p3, "albumId"    # J
    .param p5, "sizeResId"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param
    .param p6, "l"    # Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;

    .prologue
    .line 106
    sget-boolean v4, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 107
    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getColor() called with: baseUri = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], albumId = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], l = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_0
    new-instance v7, Landroid/util/Pair;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-direct {v7, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    .local v7, "searchKey":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/net/Uri;Ljava/lang/Long;>;"
    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->mValues:Ljava/util/Map;

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    .line 113
    .local v12, "res":Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;
    if-eqz v12, :cond_1

    .line 114
    move-object/from16 v0, p6

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    invoke-interface {v0, v1, v2, v3, v12}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;->onGetTintInfo(Landroid/net/Uri;JLcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;)V

    .line 154
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 118
    .local v13, "uri":Landroid/net/Uri;
    invoke-static/range {p5 .. p5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withFullUri(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v14

    new-instance v4, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$2;

    move-object v5, p0

    move-object/from16 v6, p1

    move-object/from16 v8, p6

    move-object/from16 v9, p2

    move-wide/from16 v10, p3

    invoke-direct/range {v4 .. v11}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;Landroid/content/Context;Landroid/util/Pair;Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$OnGetTintInfo;Landroid/net/Uri;J)V

    .line 119
    invoke-virtual {v14, v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->loadToPublisher(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V

    goto :goto_0
.end method
