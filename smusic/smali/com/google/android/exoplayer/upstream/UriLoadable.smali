.class public final Lcom/google/android/exoplayer/upstream/UriLoadable;
.super Ljava/lang/Object;
.source "UriLoadable.java"

# interfaces
.implements Lcom/google/android/exoplayer/upstream/Loader$Loadable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplayer/upstream/Loader$Loadable;"
    }
.end annotation


# instance fields
.field private final dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

.field private volatile isCanceled:Z

.field private final parser:Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer/upstream/UriLoadable$Parser",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final uriDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer/upstream/UriDataSource;Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "uriDataSource"    # Lcom/google/android/exoplayer/upstream/UriDataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer/upstream/UriDataSource;",
            "Lcom/google/android/exoplayer/upstream/UriLoadable$Parser",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lcom/google/android/exoplayer/upstream/UriLoadable;, "Lcom/google/android/exoplayer/upstream/UriLoadable<TT;>;"
    .local p3, "parser":Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;, "Lcom/google/android/exoplayer/upstream/UriLoadable$Parser<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p2, p0, Lcom/google/android/exoplayer/upstream/UriLoadable;->uriDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    .line 65
    iput-object p3, p0, Lcom/google/android/exoplayer/upstream/UriLoadable;->parser:Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;

    .line 66
    new-instance v0, Lcom/google/android/exoplayer/upstream/DataSpec;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;I)V

    iput-object v0, p0, Lcom/google/android/exoplayer/upstream/UriLoadable;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    .line 67
    return-void
.end method


# virtual methods
.method public final cancelLoad()V
    .locals 1

    .prologue
    .line 80
    .local p0, "this":Lcom/google/android/exoplayer/upstream/UriLoadable;, "Lcom/google/android/exoplayer/upstream/UriLoadable<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer/upstream/UriLoadable;->isCanceled:Z

    .line 81
    return-void
.end method

.method public final getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcom/google/android/exoplayer/upstream/UriLoadable;, "Lcom/google/android/exoplayer/upstream/UriLoadable<TT;>;"
    iget-object v0, p0, Lcom/google/android/exoplayer/upstream/UriLoadable;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public final isLoadCanceled()Z
    .locals 1

    .prologue
    .line 85
    .local p0, "this":Lcom/google/android/exoplayer/upstream/UriLoadable;, "Lcom/google/android/exoplayer/upstream/UriLoadable<TT;>;"
    iget-boolean v0, p0, Lcom/google/android/exoplayer/upstream/UriLoadable;->isCanceled:Z

    return v0
.end method

.method public final load()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lcom/google/android/exoplayer/upstream/UriLoadable;, "Lcom/google/android/exoplayer/upstream/UriLoadable<TT;>;"
    new-instance v0, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;

    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/UriLoadable;->uriDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/UriLoadable;->dataSpec:Lcom/google/android/exoplayer/upstream/DataSpec;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;-><init>(Lcom/google/android/exoplayer/upstream/DataSource;Lcom/google/android/exoplayer/upstream/DataSpec;)V

    .line 92
    .local v0, "inputStream":Lcom/google/android/exoplayer/upstream/DataSourceInputStream;
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->open()V

    .line 93
    iget-object v1, p0, Lcom/google/android/exoplayer/upstream/UriLoadable;->parser:Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;

    iget-object v2, p0, Lcom/google/android/exoplayer/upstream/UriLoadable;->uriDataSource:Lcom/google/android/exoplayer/upstream/UriDataSource;

    invoke-interface {v2}, Lcom/google/android/exoplayer/upstream/UriDataSource;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/google/android/exoplayer/upstream/UriLoadable$Parser;->parse(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer/upstream/UriLoadable;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->close()V

    .line 97
    return-void

    .line 95
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/google/android/exoplayer/upstream/DataSourceInputStream;->close()V

    throw v1
.end method
