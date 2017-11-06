.class public Lcom/samsung/android/app/music/service/ServiceUtils;
.super Ljava/lang/Object;
.source "ServiceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentUri()Ljava/lang/String;
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 33
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v0

    .line 35
    .local v0, "data":Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMusicExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "extra.uri_type"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 36
    .local v5, "uriType":I
    invoke-static {}, Lcom/samsung/android/app/music/service/metadata/LocalMusicContents;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    move-result-object v3

    .line 38
    .local v3, "musicContents":Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;
    invoke-interface {v3, v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;->getMatchedUri(I)Landroid/net/Uri;

    move-result-object v4

    .line 39
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v6

    const-string v7, "android.media.metadata.MEDIA_ID"

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    .local v2, "id":Ljava/lang/String;
    :try_start_0
    invoke-static {v4, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 43
    :goto_0
    return-object v6

    .line 42
    :catch_0
    move-exception v1

    .line 43
    .local v1, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    goto :goto_0
.end method
