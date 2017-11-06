.class public Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteRequest;
.super Ljava/lang/Object;
.source "AddFavoriteRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AddFavoriteRequest"


# instance fields
.field private dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteRequest;->dataList:Ljava/util/List;

    .line 13
    return-void
.end method


# virtual methods
.method public addFavoriteAlbumRequest(Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteAlbumRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteAlbumRequest;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteRequest;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method

.method public addFavoriteArtistRequest(Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteArtistRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteArtistRequest;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteRequest;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.method public addFavoriteMilkMagazineRequest(Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteMilkMagazineRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteMilkMagazineRequest;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteRequest;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public addFavoriteRequest(Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteArtistRequest;Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteAlbumRequest;Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteTrackRequest;Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteMilkMagazineRequest;)V
    .locals 1
    .param p1, "trackRequest"    # Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteArtistRequest;
    .param p2, "albumRequest"    # Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteAlbumRequest;
    .param p3, "artistRequest"    # Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteTrackRequest;
    .param p4, "playlistRequests"    # Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteMilkMagazineRequest;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteRequest;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteRequest;->dataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteRequest;->dataList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteRequest;->dataList:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    return-void
.end method

.method public addFavoriteTrackRequest(Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteTrackRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteTrackRequest;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteRequest;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method
