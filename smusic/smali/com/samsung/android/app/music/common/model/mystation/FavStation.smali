.class public Lcom/samsung/android/app/music/common/model/mystation/FavStation;
.super Ljava/lang/Object;
.source "FavStation.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FavStation"


# instance fields
.field private banSongList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/BanSong;",
            ">;"
        }
    .end annotation
.end field

.field private providerType:Ljava/lang/String;

.field private stationId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "pStationID"    # Ljava/lang/String;
    .param p2, "pProviderType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/BanSong;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p3, "pBanSongList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/BanSong;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/FavStation;->banSongList:Ljava/util/ArrayList;

    .line 15
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/mystation/FavStation;->stationId:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/samsung/android/app/music/common/model/mystation/FavStation;->providerType:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/samsung/android/app/music/common/model/mystation/FavStation;->banSongList:Ljava/util/ArrayList;

    .line 18
    return-void
.end method
