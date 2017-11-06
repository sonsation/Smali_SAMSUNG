.class public Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteArtistRequest;
.super Ljava/lang/Object;
.source "AddFavoriteArtistRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AddFavoriteArtistRequest"


# instance fields
.field private artistList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p2, "artistRequest":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteArtistRequest;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteArtistRequest;->artistList:Ljava/util/ArrayList;

    .line 13
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteArtistRequest;->type:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteArtistRequest;->artistList:Ljava/util/ArrayList;

    .line 15
    return-void
.end method
