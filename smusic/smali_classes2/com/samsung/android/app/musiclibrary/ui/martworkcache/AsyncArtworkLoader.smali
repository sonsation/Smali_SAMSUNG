.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;
.super Ljava/lang/Object;
.source "AsyncArtworkLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;,
        Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;,
        Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$ParamsSize;
    }
.end annotation


# static fields
.field private static sContext:Landroid/content/Context;

.field private static final sParams:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$ParamsSize;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$1;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->sParams:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static clearCache()V
    .locals 1

    .prologue
    .line 55
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->getCache()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->clear()V

    .line 56
    return-void
.end method

.method public static clearDiskCache()V
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->getCache()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->clearDiskCache()V

    .line 60
    return-void
.end method

.method public static initCache(Landroid/app/Application;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;)V
    .locals 1
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "settings"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->sContext:Landroid/content/Context;

    .line 64
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->init(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/martworkcache/ArtworkCacheSettings;)V

    .line 65
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/SyncArtworkLoader;->init(Landroid/app/Application;)V

    .line 66
    return-void
.end method

.method public static withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;
    .locals 2
    .param p0, "dimension"    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .prologue
    .line 50
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->sParams:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$ParamsSize;

    .line 51
    .local v0, "params":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$ParamsSize;
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$ParamsSize;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v1

    return-object v1
.end method
