.class public Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteTrackRequest;
.super Ljava/lang/Object;
.source "AddFavoriteTrackRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AddFavoriteTrackRequest"


# instance fields
.field private trackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p2, "trackRequest":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteTrackRequest;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteTrackRequest;->type:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteTrackRequest;->trackList:Ljava/util/ArrayList;

    .line 15
    return-void
.end method
