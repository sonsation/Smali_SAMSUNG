.class Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService$1;
.super Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService$Stub;
.source "ArtworkLoaderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mLoader:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/IArtworkLoaderService$Stub;-><init>()V

    .line 14
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService$1;->mLoader:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;

    return-void
.end method


# virtual methods
.method public addToDiskCache(Landroid/net/Uri;ILjava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "size"    # I
    .param p3, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService$1;->mLoader:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->serviceAddToDiskCache(Landroid/net/Uri;ILjava/io/File;)V

    .line 25
    return-void
.end method

.method public clearDiskCache()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService$1;->mLoader:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->serviceClearDiskCache(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public loadArtwork(Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService$1;->mLoader:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService;

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->serviceLoadArtwork(Landroid/content/Context;Landroid/net/Uri;I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ServiceArtworkLoadingResult;

    move-result-object v0

    return-object v0
.end method

.method public removeFromDiskCache(Landroid/net/Uri;I)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService$1;->mLoader:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/ArtworkLoaderService;

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/service/SyncServiceArtworkLoader;->serviceRemoveFromDiskCache(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 35
    return-void
.end method
