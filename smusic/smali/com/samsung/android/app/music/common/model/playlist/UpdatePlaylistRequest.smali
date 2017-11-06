.class public Lcom/samsung/android/app/music/common/model/playlist/UpdatePlaylistRequest;
.super Ljava/lang/Object;
.source "UpdatePlaylistRequest.java"


# instance fields
.field private updPlaylist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public addUpdPlaylist(Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/UpdatePlaylistRequest;->updPlaylist:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/UpdatePlaylistRequest;->updPlaylist:Ljava/util/ArrayList;

    .line 23
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;->getReorderingPlaylist()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;->getReorderingPlaylist()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 25
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/common/model/playlist/PlaylistRequest;->setReorderingPlaylist(Ljava/util/ArrayList;)V

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/playlist/UpdatePlaylistRequest;->updPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method
