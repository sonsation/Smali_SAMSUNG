.class Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$1;
.super Ljava/lang/Object;
.source "ServiceMediaChangeCenter.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkHandler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onArtworkDecoded(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "artworkUri"    # Landroid/net/Uri;
    .param p2, "artwork"    # Landroid/graphics/Bitmap;

    .prologue
    .line 94
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    monitor-enter v7

    .line 100
    if-eqz p2, :cond_0

    .line 101
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/IMediaDataCenter;

    move-result-object v6

    invoke-interface {v6}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/IMediaDataCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v3

    .line 102
    .local v3, "metadata":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    const-string v6, "com.samsung.android.app.music.metadata.ALBUM_ID"

    invoke-virtual {v3, v6}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 103
    .local v0, "albumId":J
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 104
    .local v4, "decodedAlbumId":J
    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    .line 106
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v6

    invoke-static {v6, p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->addArtworkToMetadata(Landroid/media/MediaMetadata;Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v3

    .line 107
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/IMediaDataCenter;

    move-result-object v6

    invoke-interface {v6, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/IMediaDataCenter;->setMetadata(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 111
    .end local v0    # "albumId":J
    .end local v3    # "metadata":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .end local v4    # "decodedAlbumId":J
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 112
    .local v2, "b":Landroid/os/Bundle;
    const-string v6, "artwork"

    invoke-virtual {v2, v6, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 113
    const-string v6, "artwork_uri"

    invoke-virtual {v2, v6, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 118
    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;

    move-result-object v6

    const-string v8, "com.samsung.android.app.music.core.state.ARTWORK_UPDATED"

    .line 119
    invoke-virtual {v6, v8, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 120
    monitor-exit v7

    .line 121
    return-void

    .line 120
    .end local v2    # "b":Landroid/os/Bundle;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public onBlurArtworkDecoded(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "artworkUri"    # Landroid/net/Uri;
    .param p2, "blurArtwork"    # Landroid/graphics/Bitmap;

    .prologue
    .line 125
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    monitor-enter v2

    .line 131
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 132
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "artwork_blurred"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 133
    const-string v1, "artwork_uri"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 135
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/IMediaDataCenter;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/IMediaDataCenter;->setMusicExtras(Landroid/os/Bundle;)V

    .line 136
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;

    move-result-object v1

    const-string v3, "com.samsung.android.app.music.core.state.BLUR_ARTWORK_UPDATED"

    .line 137
    invoke-virtual {v1, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 143
    monitor-exit v2

    .line 144
    return-void

    .line 143
    .end local v0    # "b":Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
