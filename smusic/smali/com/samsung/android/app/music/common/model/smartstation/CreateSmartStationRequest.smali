.class public Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;
.super Lcom/samsung/android/app/music/common/model/ResponseModel;
.source "CreateSmartStationRequest.java"


# instance fields
.field private localTrackList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "localTrackList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;",
            ">;"
        }
    .end annotation
.end field

.field private modSearchList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "modSearchList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;",
            ">;"
        }
    .end annotation
.end field

.field private modTrackList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "modTrackList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;",
            ">;"
        }
    .end annotation
.end field

.field private radioTrackList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "radioTrackList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "modSearchTrackList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;>;"
    .local p2, "modList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;>;"
    .local p3, "radioList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;>;"
    .local p4, "localTrackList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;>;"
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/model/ResponseModel;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;->modSearchList:Ljava/util/List;

    .line 22
    iput-object p2, p0, Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;->modTrackList:Ljava/util/List;

    .line 23
    iput-object p3, p0, Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;->radioTrackList:Ljava/util/List;

    .line 24
    iput-object p4, p0, Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;->localTrackList:Ljava/util/List;

    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;->modSearchList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;->cleanupField(Ljava/util/List;)V

    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;->modTrackList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;->cleanupField(Ljava/util/List;)V

    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;->radioTrackList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;->cleanupField(Ljava/util/List;)V

    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;->localTrackList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/model/smartstation/CreateSmartStationRequest;->cleanupField(Ljava/util/List;)V

    .line 30
    return-void
.end method

.method private cleanupField(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    :cond_0
    return-void

    .line 36
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;

    .line 37
    .local v0, "seed":Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->cleanupFieldForRestApi()V

    goto :goto_0
.end method
