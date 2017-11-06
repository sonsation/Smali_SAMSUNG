.class Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$ViewUpdateHandler;
.super Landroid/os/Handler;
.source "AlbumCoverView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewUpdateHandler"
.end annotation


# instance fields
.field private final mAlbumCoverViewWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;)V
    .locals 1
    .param p1, "albumCoverView"    # Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    .prologue
    .line 1088
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1089
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$ViewUpdateHandler;->mAlbumCoverViewWeakReference:Ljava/lang/ref/WeakReference;

    .line 1090
    return-void
.end method

.method private isValidArtwork(Landroid/os/Message;)Z
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1093
    const-wide/16 v0, -0x1

    .line 1094
    .local v0, "albumId":J
    invoke-static {p1}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$2800(Landroid/os/Message;)Landroid/net/Uri;

    move-result-object v5

    .line 1095
    .local v5, "loadedUri":Landroid/net/Uri;
    if-eqz v5, :cond_0

    .line 1097
    :try_start_0
    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1103
    :cond_0
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v6

    .line 1104
    .local v6, "meta":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    const-string v7, "com.samsung.android.app.music.metadata.ALBUM_ID"

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1105
    .local v2, "currentAlbumId":J
    const-wide/16 v8, -0x1

    cmp-long v7, v0, v8

    if-eqz v7, :cond_1

    cmp-long v7, v0, v2

    if-nez v7, :cond_2

    :cond_1
    const/4 v7, 0x1

    :goto_1
    return v7

    .line 1098
    .end local v2    # "currentAlbumId":J
    .end local v6    # "meta":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    :catch_0
    move-exception v4

    .line 1099
    .local v4, "e":Ljava/lang/NumberFormatException;
    const-string v7, "UiPlayer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to determine loaded AlbumId loadedUr i: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1105
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "currentAlbumId":J
    .restart local v6    # "meta":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 1110
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$ViewUpdateHandler;->mAlbumCoverViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;

    .line 1111
    .local v0, "v":Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;
    if-nez v0, :cond_1

    .line 1133
    :cond_0
    :goto_0
    return-void

    .line 1114
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1116
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$ViewUpdateHandler;->isValidArtwork(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1117
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$2900(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1121
    :pswitch_1
    invoke-static {p1}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$100(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$ViewUpdateHandler;->isValidArtwork(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1122
    invoke-static {v0, v2}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$2900(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1126
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView$ViewUpdateHandler;->isValidArtwork(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1127
    invoke-static {v0, v2}, Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;->access$2900(Lcom/samsung/android/app/music/common/player/fullplayer/AlbumCoverView;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1114
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
