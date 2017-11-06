.class public Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteMilkMagazineRequest;
.super Ljava/lang/Object;
.source "AddFavoriteMilkMagazineRequest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AddFavoriteMilkMagazineRequest"


# instance fields
.field private pickList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;",
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
            "Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p2, "playlistRequests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteMilkMagazineRequest;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteMilkMagazineRequest;->pickList:Ljava/util/ArrayList;

    .line 14
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteMilkMagazineRequest;->type:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/samsung/android/app/music/common/model/milkfavorite/AddFavoriteMilkMagazineRequest;->pickList:Ljava/util/ArrayList;

    .line 16
    return-void
.end method
