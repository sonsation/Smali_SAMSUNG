.class public Lcom/mezzo/common/network/data/DataMovieAD;
.super Ljava/lang/Object;
.source "DataMovieAD.java"

# interfaces
.implements Lcom/mezzo/common/network/data/IData;


# instance fields
.field private adsystem_version:Ljava/lang/String;

.field private adtitle:Ljava/lang/String;

.field private bitrate:Ljava/lang/String;

.field private clickthrough:Ljava/lang/String;

.field private clicktracking:Ljava/lang/String;

.field private creative_id:Ljava/lang/String;

.field private creative_sequence:Ljava/lang/String;

.field private delivery:Ljava/lang/String;

.field private duration:Ljava/lang/String;

.field private error:Ljava/lang/String;

.field private height:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private impression:Ljava/lang/String;

.field private mediafile_src:Ljava/lang/String;

.field private offset:Ljava/lang/String;

.field private requestid:Ljava/lang/String;

.field private sequence:Ljava/lang/String;

.field private skipoffset:Ljava/lang/String;

.field private trackingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mezzo/common/network/data/DataTracking;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/String;

.field private width:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mezzo/common/network/data/DataMovieAD;->trackingList:Ljava/util/ArrayList;

    .line 36
    return-void
.end method


# virtual methods
.method public addTrack(Lcom/mezzo/common/network/data/DataTracking;)I
    .locals 1
    .param p1, "data"    # Lcom/mezzo/common/network/data/DataTracking;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataMovieAD;->trackingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataMovieAD;->trackingSize()I

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 76
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataMovieAD;->setId(Ljava/lang/String;)V

    .line 77
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataMovieAD;->setSequence(Ljava/lang/String;)V

    .line 78
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataMovieAD;->setAdsystem_version(Ljava/lang/String;)V

    .line 79
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataMovieAD;->setAdtitle(Ljava/lang/String;)V

    .line 80
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataMovieAD;->setRequestid(Ljava/lang/String;)V

    .line 81
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataMovieAD;->setError(Ljava/lang/String;)V

    .line 82
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataMovieAD;->setImpression(Ljava/lang/String;)V

    .line 83
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataMovieAD;->setOffset(Ljava/lang/String;)V

    .line 84
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataMovieAD;->setCreative_id(Ljava/lang/String;)V

    .line 85
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataMovieAD;->setCreative_sequence(Ljava/lang/String;)V

    .line 86
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataMovieAD;->setSkipoffset(Ljava/lang/String;)V

    .line 87
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataMovieAD;->setDuration(Ljava/lang/String;)V

    .line 88
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataMovieAD;->setClickthrough(Ljava/lang/String;)V

    .line 89
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataMovieAD;->setClicktracking(Ljava/lang/String;)V

    .line 90
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataMovieAD;->setOffset(Ljava/lang/String;)V

    .line 91
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataMovieAD;->setDelivery(Ljava/lang/String;)V

    .line 92
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataMovieAD;->setType(Ljava/lang/String;)V

    .line 93
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataMovieAD;->setWidth(Ljava/lang/String;)V

    .line 94
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataMovieAD;->setHeight(Ljava/lang/String;)V

    .line 95
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataMovieAD;->setBitrate(Ljava/lang/String;)V

    .line 96
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataMovieAD;->setMediafile_src(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataMovieAD;->trackingSize()I

    move-result v0

    if-lez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataMovieAD;->trackingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 100
    :cond_0
    return-void
.end method

.method public getAdsystem_version()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataMovieAD;->adsystem_version:Ljava/lang/String;

    return-object v0
.end method

.method public getAdtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataMovieAD;->adtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getBitrate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataMovieAD;->bitrate:Ljava/lang/String;

    return-object v0
.end method

.method public getClickthrough()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataMovieAD;->clickthrough:Ljava/lang/String;

    return-object v0
.end method

.method public getClicktracking()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataMovieAD;->clicktracking:Ljava/lang/String;

    return-object v0
.end method

.method public getCreative_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataMovieAD;->creative_id:Ljava/lang/String;

    return-object v0
.end method

.method public getCreative_sequence()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataMovieAD;->creative_sequence:Ljava/lang/String;

    return-object v0
.end method

.method public getDelivery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataMovieAD;->delivery:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataMovieAD;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataMovieAD;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataMovieAD;->height:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataMovieAD;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImpression()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataMovieAD;->impression:Ljava/lang/String;

    return-object v0
.end method

.method public getMediafile_src()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataMovieAD;->mediafile_src:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataMovieAD;->offset:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataMovieAD;->requestid:Ljava/lang/String;

    return-object v0
.end method

.method public getSequence()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataMovieAD;->sequence:Ljava/lang/String;

    return-object v0
.end method

.method public getSkipoffset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataMovieAD;->skipoffset:Ljava/lang/String;

    return-object v0
.end method

.method public getTrack(I)Lcom/mezzo/common/network/data/DataTracking;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataMovieAD;->trackingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mezzo/common/network/data/DataTracking;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataMovieAD;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataMovieAD;->width:Ljava/lang/String;

    return-object v0
.end method

.method public removeTrack(I)Lcom/mezzo/common/network/data/DataTracking;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataMovieAD;->trackingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mezzo/common/network/data/DataTracking;

    return-object v0
.end method

.method public setAdsystem_version(Ljava/lang/String;)V
    .locals 0
    .param p1, "adsystem_version"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataMovieAD;->adsystem_version:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setAdtitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "adtitle"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataMovieAD;->adtitle:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setBitrate(Ljava/lang/String;)V
    .locals 0
    .param p1, "bitrate"    # Ljava/lang/String;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataMovieAD;->bitrate:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public setClickthrough(Ljava/lang/String;)V
    .locals 0
    .param p1, "clickthrough"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataMovieAD;->clickthrough:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setClicktracking(Ljava/lang/String;)V
    .locals 0
    .param p1, "clicktracking"    # Ljava/lang/String;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataMovieAD;->clicktracking:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setCreative_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "creative_id"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataMovieAD;->creative_id:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setCreative_sequence(Ljava/lang/String;)V
    .locals 0
    .param p1, "creative_sequence"    # Ljava/lang/String;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataMovieAD;->creative_sequence:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setDelivery(Ljava/lang/String;)V
    .locals 0
    .param p1, "delivery"    # Ljava/lang/String;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataMovieAD;->delivery:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0
    .param p1, "duration"    # Ljava/lang/String;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataMovieAD;->duration:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataMovieAD;->error:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setHeight(Ljava/lang/String;)V
    .locals 0
    .param p1, "height"    # Ljava/lang/String;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataMovieAD;->height:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataMovieAD;->id:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setImpression(Ljava/lang/String;)V
    .locals 0
    .param p1, "impression"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataMovieAD;->impression:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setMediafile_src(Ljava/lang/String;)V
    .locals 0
    .param p1, "mediafile_src"    # Ljava/lang/String;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataMovieAD;->mediafile_src:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public setOffset(Ljava/lang/String;)V
    .locals 0
    .param p1, "offset"    # Ljava/lang/String;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataMovieAD;->offset:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public setRequestid(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestid"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataMovieAD;->requestid:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setSequence(Ljava/lang/String;)V
    .locals 0
    .param p1, "sequence"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataMovieAD;->sequence:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setSkipoffset(Ljava/lang/String;)V
    .locals 0
    .param p1, "skipoffset"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataMovieAD;->skipoffset:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataMovieAD;->type:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public setWidth(Ljava/lang/String;)V
    .locals 0
    .param p1, "width"    # Ljava/lang/String;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataMovieAD;->width:Ljava/lang/String;

    .line 253
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "DataMovieAD {\n"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "id : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mezzo/common/network/data/DataMovieAD;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sequence : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mezzo/common/network/data/DataMovieAD;->sequence:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "adsystem_version : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mezzo/common/network/data/DataMovieAD;->adsystem_version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "adtitle : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mezzo/common/network/data/DataMovieAD;->adtitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "requestid : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mezzo/common/network/data/DataMovieAD;->requestid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mezzo/common/network/data/DataMovieAD;->error:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "impression : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mezzo/common/network/data/DataMovieAD;->impression:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "creative_id : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mezzo/common/network/data/DataMovieAD;->creative_id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "creative_sequence : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mezzo/common/network/data/DataMovieAD;->creative_sequence:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "skipoffset : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mezzo/common/network/data/DataMovieAD;->skipoffset:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "duration : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mezzo/common/network/data/DataMovieAD;->duration:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "clickthrough : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mezzo/common/network/data/DataMovieAD;->clickthrough:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "clicktracking : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mezzo/common/network/data/DataMovieAD;->clicktracking:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "offset : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mezzo/common/network/data/DataMovieAD;->offset:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "delivery : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mezzo/common/network/data/DataMovieAD;->delivery:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "type : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mezzo/common/network/data/DataMovieAD;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "width : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mezzo/common/network/data/DataMovieAD;->width:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "height : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mezzo/common/network/data/DataMovieAD;->height:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bitrate : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mezzo/common/network/data/DataMovieAD;->bitrate:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mediafile_src : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mezzo/common/network/data/DataMovieAD;->mediafile_src:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v3, p0, Lcom/mezzo/common/network/data/DataMovieAD;->trackingList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataMovieAD;->trackingSize()I

    move-result v3

    if-lez v3, :cond_0

    .line 63
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataMovieAD;->trackingSize()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 70
    .end local v2    # "i":I
    :cond_0
    const-string/jumbo v3, "}\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 64
    .restart local v2    # "i":I
    :cond_1
    invoke-virtual {p0, v2}, Lcom/mezzo/common/network/data/DataMovieAD;->getTrack(I)Lcom/mezzo/common/network/data/DataTracking;

    move-result-object v1

    .line 65
    .local v1, "dataTracking":Lcom/mezzo/common/network/data/DataTracking;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataTracking;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public trackingSize()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataMovieAD;->trackingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
