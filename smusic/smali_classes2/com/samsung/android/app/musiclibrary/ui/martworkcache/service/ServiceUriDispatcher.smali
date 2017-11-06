.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;
.super Ljava/lang/Object;
.source "ServiceUriDispatcher.java"


# static fields
.field private static final DEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mDefaultLoader:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

.field private final mLoaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoadersLock:Ljava/lang/Object;

.field private mPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ArtWork"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;

    .line 18
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->LOG_TAG:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;)V
    .locals 1
    .param p1, "defaultLoader"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->mLoaders:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->mLoadersLock:Ljava/lang/Object;

    .line 32
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->mDefaultLoader:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    .line 33
    return-void
.end method

.method private ensurePattern()V
    .locals 5

    .prologue
    .line 75
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->mPattern:Ljava/util/regex/Pattern;

    if-nez v3, :cond_1

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v2, "s":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->mLoaders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    .line 78
    .local v0, "l":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;
    const/16 v4, 0x28

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;->uriRegexp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const/16 v4, 0x29

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    const/16 v4, 0x7c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 84
    .end local v0    # "l":Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "pattern":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->mPattern:Ljava/util/regex/Pattern;

    .line 90
    .end local v1    # "pattern":Ljava/lang/String;
    .end local v2    # "s":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method


# virtual methods
.method public getLoader(Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 43
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->mLoadersLock:Ljava/lang/Object;

    monitor-enter v3

    .line 48
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->mLoaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 49
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->mDefaultLoader:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    monitor-exit v3

    .line 70
    :goto_0
    return-object v2

    .line 51
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->ensurePattern()V

    .line 52
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 53
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_1

    .line 57
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->mDefaultLoader:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    monitor-exit v3

    goto :goto_0

    .line 71
    .end local v1    # "m":Ljava/util/regex/Matcher;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 59
    .restart local v1    # "m":Ljava/util/regex/Matcher;
    :cond_1
    const/4 v0, 0x1

    .local v0, "index":I
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->mLoaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_3

    .line 60
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 64
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->mLoaders:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    monitor-exit v3

    goto :goto_0

    .line 59
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 70
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->mDefaultLoader:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public registerLoader(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;)V
    .locals 2
    .param p1, "loader"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader$ServiceArtworkLoader;

    .prologue
    .line 36
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->mLoadersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->mLoaders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceUriDispatcher;->mPattern:Ljava/util/regex/Pattern;

    .line 39
    monitor-exit v1

    .line 40
    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
