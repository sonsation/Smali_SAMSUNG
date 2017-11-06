.class public Lcom/samsung/android/app/music/common/model/mystation/UpdateFavStationRequest;
.super Ljava/lang/Object;
.source "UpdateFavStationRequest.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "UpdateFavStationRequest"


# instance fields
.field private updStationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/mystation/FavStation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/mystation/FavStation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 9
    .local p1, "updatedStationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/mystation/FavStation;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdateFavStationRequest;->updStationList:Ljava/util/ArrayList;

    .line 10
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/mystation/UpdateFavStationRequest;->updStationList:Ljava/util/ArrayList;

    .line 11
    return-void
.end method
