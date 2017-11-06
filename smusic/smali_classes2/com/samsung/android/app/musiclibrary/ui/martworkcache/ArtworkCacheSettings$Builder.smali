.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;
.super Ljava/lang/Object;
.source "ArtworkCacheSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field static final DEFAULT_COMPRESS_QUALITY:I = 0x64

.field static final DEFAULT_LOCAL_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

.field private static final DEFAULT_LOCAL_DISK_CACHE_SIZE:I = 0x12c00000

.field private static final DEFAULT_REMOTE_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

.field private static final DEFAULT_REMOTE_DISK_CACHE_SIZE:I = 0x6400000


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLocalDiskCacheSettings:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

.field private mMemCacheSize:I

.field private mRemoteDiskCacheSettings:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

.field private final mSupportedDimensions:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->DEFAULT_LOCAL_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    .line 46
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->DEFAULT_REMOTE_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "supportedDimensions"    # [I

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->CacheDisabledSettings:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->mLocalDiskCacheSettings:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    .line 61
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->CacheDisabledSettings:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->mRemoteDiskCacheSettings:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->mSupportedDimensions:[I

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->enableMemCache(Z)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;

    .line 67
    return-void
.end method

.method private getMaxMemSizePercentage(F)I
    .locals 6
    .param p1, "percentage"    # F

    .prologue
    .line 109
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    long-to-float v1, v2

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 110
    .local v0, "cacheSize":I
    const-string v1, "ArtWork"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maxMem : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 111
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") => mem for artwork "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return v0
.end method


# virtual methods
.method public build()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;
    .locals 6

    .prologue
    .line 117
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->mSupportedDimensions:[I

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->mMemCacheSize:I

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->mLocalDiskCacheSettings:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->mRemoteDiskCacheSettings:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;-><init>([IILcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$1;)V

    return-object v0
.end method

.method public enableDiskCache(Z)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    const/16 v4, 0x64

    .line 79
    if-eqz p1, :cond_0

    .line 80
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->mContext:Landroid/content/Context;

    const-string v2, "albums"

    .line 81
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x12c00000

    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->DEFAULT_LOCAL_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;-><init>(Ljava/lang/String;ILandroid/graphics/Bitmap$CompressFormat;I)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->mLocalDiskCacheSettings:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    .line 84
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "remote-albums"

    .line 85
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/utils/DiskUtils;->getCachePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x6400000

    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->DEFAULT_REMOTE_COMPRESS_FORMAT:Landroid/graphics/Bitmap$CompressFormat;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;-><init>(Ljava/lang/String;ILandroid/graphics/Bitmap$CompressFormat;I)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->mRemoteDiskCacheSettings:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    .line 92
    :goto_0
    return-object p0

    .line 89
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->CacheDisabledSettings:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->mLocalDiskCacheSettings:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    .line 90
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache;->CacheDisabledSettings:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->mRemoteDiskCacheSettings:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/cache/mdiskcache/MDiskCache$Settings;

    goto :goto_0
.end method

.method public enableMemCache(Z)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 70
    if-eqz p1, :cond_0

    .line 71
    const v0, 0x3e4ccccd    # 0.2f

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->getMaxMemSizePercentage(F)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->mMemCacheSize:I

    .line 75
    :goto_0
    return-object p0

    .line 73
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings$Builder;->mMemCacheSize:I

    goto :goto_0
.end method
