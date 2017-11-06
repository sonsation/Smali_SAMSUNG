.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceLocalLoader;
.super Ljava/lang/Object;
.source "ServiceLocalLoader.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;


# static fields
.field private static final DEBUG:Z = false

.field private static final READ_EXTERNAL_STORAGE_PERMISSION:Ljava/lang/String; = "android.permission.READ_EXTERNAL_STORAGE"

.field private static final TAG:Ljava/lang/String;

.field private static final TSP:Ljava/lang/String; = "TSP: "


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceLocalLoader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method private noStoragePermission(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getMaxRequestDuration(Landroid/net/Uri;)J
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 82
    const-wide/16 v0, 0x7d0

    return-wide v0
.end method

.method public isDiskCached(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public isMultiResolution(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public isRemote(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public loadArtwork(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/BitmapFactory$Options;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "size"    # I
    .param p4, "options"    # Landroid/graphics/BitmapFactory$Options;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 50
    :try_start_0
    const-string v2, "r"

    invoke-static {p1, p2, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->openFileDescriptor(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 51
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_1

    .line 52
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/loaders/ServiceLocalLoader;->noStoragePermission(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "There is no: android.permission.READ_EXTERNAL_STORAGE"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->Empty:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_0
    return-object v2

    .line 55
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    :try_start_1
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->Empty:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    goto :goto_0

    .line 61
    :cond_1
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;->open(Landroid/os/ParcelFileDescriptor;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0
.end method

.method public uriRegexp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, ".+"

    return-object v0
.end method
