.class public Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;
.super Ljava/lang/Object;
.source "SmartStationSeed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed$SeedBelongs;
    }
.end annotation


# static fields
.field public static final SEED_VALID_DAY_MOD:I = 0xf

.field public static final SEED_VALID_DAY_RADIO:I = 0x1e

.field public static final SEED_VALID_DAY_SEARCH:I = 0x7


# instance fields
.field private addedDate:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
        serialize = false
    .end annotation
.end field

.field private addedTime:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
        serialize = false
    .end annotation
.end field

.field private albumTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "albumTitle"
    .end annotation
.end field

.field private artistName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "artistName"
    .end annotation
.end field

.field private count:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "count"
    .end annotation
.end field

.field private seedBelong:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
        serialize = false
    .end annotation
.end field

.field private trackId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trackId"
    .end annotation
.end field

.field private trackTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trackTitle"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "seedId"    # Ljava/lang/String;
    .param p2, "seedTitle"    # Ljava/lang/String;
    .param p3, "belong"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    .line 54
    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-wide v10, v8

    invoke-direct/range {v1 .. v11}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJ)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "seedId"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "album"    # Ljava/lang/String;
    .param p4, "artist"    # Ljava/lang/String;
    .param p5, "belong"    # Ljava/lang/String;

    .prologue
    .line 58
    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p5

    move-object v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v11}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJ)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJ)V
    .locals 1
    .param p1, "seedId"    # Ljava/lang/String;
    .param p2, "seedTitle"    # Ljava/lang/String;
    .param p3, "belong"    # Ljava/lang/String;
    .param p4, "albumTitle"    # Ljava/lang/String;
    .param p5, "artistName"    # Ljava/lang/String;
    .param p6, "count"    # I
    .param p7, "addedTime"    # J
    .param p9, "addedDate"    # J

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->trackId:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->trackTitle:Ljava/lang/String;

    .line 64
    iput p6, p0, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->count:I

    .line 65
    iput-object p3, p0, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->seedBelong:Ljava/lang/String;

    .line 66
    iput-wide p7, p0, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->addedTime:J

    .line 67
    iput-object p4, p0, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->albumTitle:Ljava/lang/String;

    .line 68
    iput-object p5, p0, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->artistName:Ljava/lang/String;

    .line 69
    iput-wide p9, p0, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->addedDate:J

    .line 70
    return-void
.end method

.method public static varargs canUseAsSeed([Ljava/lang/String;)Z
    .locals 5
    .param p0, "metadataList"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 157
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 165
    :cond_0
    :goto_0
    return v1

    .line 160
    :cond_1
    array-length v3, p0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v0, p0, v2

    .line 161
    .local v0, "metadata":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->canUseAsSeedInternal(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 160
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 165
    .end local v0    # "metadata":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static canUseAsSeedInternal(Ljava/lang/String;)Z
    .locals 1
    .param p0, "metadata"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "<unknown>"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fromTrack(Lcom/samsung/android/app/music/common/model/SimpleTrack;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;
    .locals 3
    .param p0, "track"    # Lcom/samsung/android/app/music/common/model/SimpleTrack;
    .param p1, "belong"    # Ljava/lang/String;

    .prologue
    .line 153
    new-instance v0, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackTitle()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getValidInterval(Ljava/lang/String;)I
    .locals 1
    .param p0, "belong"    # Ljava/lang/String;

    .prologue
    .line 124
    const-string v0, "mod"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "local"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    :cond_0
    const/16 v0, 0xf

    .line 129
    :goto_0
    return v0

    .line 126
    :cond_1
    const-string/jumbo v0, "search"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    const/4 v0, 0x7

    goto :goto_0

    .line 129
    :cond_2
    const/16 v0, 0x1e

    goto :goto_0
.end method

.method public static isAvailableDeadline(IILjava/lang/String;)Z
    .locals 2
    .param p0, "today"    # I
    .param p1, "deadline"    # I
    .param p2, "belong"    # Ljava/lang/String;

    .prologue
    .line 133
    if-lez p1, :cond_0

    sub-int v0, p0, p1

    invoke-static {p2}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getValidInterval(Ljava/lang/String;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cleanupFieldForRestApi()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 143
    const-string v0, "local"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getBelongTo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iput-object v2, p0, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->trackId:Ljava/lang/String;

    .line 149
    :goto_0
    return-void

    .line 146
    :cond_0
    iput-object v2, p0, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->artistName:Ljava/lang/String;

    .line 147
    iput-object v2, p0, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->albumTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public getAddedDate()J
    .locals 4

    .prologue
    .line 112
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->addedDate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 113
    invoke-static {}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->getTodayTime()I

    move-result v0

    int-to-long v0, v0

    .line 115
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->addedDate:J

    goto :goto_0
.end method

.method public getAddedTime()J
    .locals 4

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->addedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 108
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->addedTime:J

    goto :goto_0
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->albumTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->artistName:Ljava/lang/String;

    return-object v0
.end method

.method public getBelongTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->seedBelong:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->count:I

    return v0
.end method

.method public getSeedId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->trackId:Ljava/lang/String;

    return-object v0
.end method

.method public getSeedTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->trackTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSeedType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "02"

    return-object v0
.end method

.method public setAddedTime(J)V
    .locals 1
    .param p1, "addedTime"    # J

    .prologue
    .line 119
    iput-wide p1, p0, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->addedTime:J

    .line 120
    return-void
.end method

.method public setCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->count:I

    .line 94
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Seed["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getSeedId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getSeedTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getArtistName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getAlbumTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getBelongTo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getAddedTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
