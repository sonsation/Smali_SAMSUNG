.class public Lcom/mezzo/common/network/data/DataNTMovie;
.super Ljava/lang/Object;
.source "DataNTMovie.java"

# interfaces
.implements Lcom/mezzo/common/network/data/IData;


# instance fields
.field private adList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mezzo/common/network/data/DataMovieAD;",
            ">;"
        }
    .end annotation
.end field

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mezzo/common/network/data/DataNTMovie;->adList:Ljava/util/ArrayList;

    .line 14
    return-void
.end method


# virtual methods
.method public adListSize()I
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataNTMovie;->getAdList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public addAdList(Lcom/mezzo/common/network/data/DataMovieAD;)I
    .locals 1
    .param p1, "data"    # Lcom/mezzo/common/network/data/DataMovieAD;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataNTMovie;->getAdList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataNTMovie;->adListSize()I

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 53
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/mezzo/common/network/data/DataNTMovie;->setVersion(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataNTMovie;->getAdList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 55
    return-void
.end method

.method public getAd(I)Lcom/mezzo/common/network/data/DataMovieAD;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataNTMovie;->getAdList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mezzo/common/network/data/DataMovieAD;

    return-object v0
.end method

.method public getAdList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mezzo/common/network/data/DataMovieAD;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTMovie;->adList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mezzo/common/network/data/DataNTMovie;->version:Ljava/lang/String;

    return-object v0
.end method

.method public removeAdList(I)Lcom/mezzo/common/network/data/DataMovieAD;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataNTMovie;->getAdList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mezzo/common/network/data/DataMovieAD;

    return-object v0
.end method

.method public setAdList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mezzo/common/network/data/DataMovieAD;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "adList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mezzo/common/network/data/DataMovieAD;>;"
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataNTMovie;->adList:Ljava/util/ArrayList;

    .line 63
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/mezzo/common/network/data/DataNTMovie;->version:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "DataNTMovie {\n"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "version : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mezzo/common/network/data/DataNTMovie;->version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-object v3, p0, Lcom/mezzo/common/network/data/DataNTMovie;->adList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 21
    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataNTMovie;->adListSize()I

    move-result v3

    if-lez v3, :cond_0

    .line 22
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/mezzo/common/network/data/DataNTMovie;->adListSize()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 30
    .end local v2    # "i":I
    :cond_0
    const-string/jumbo v3, "}\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 23
    .restart local v2    # "i":I
    :cond_1
    invoke-virtual {p0, v2}, Lcom/mezzo/common/network/data/DataNTMovie;->getAd(I)Lcom/mezzo/common/network/data/DataMovieAD;

    move-result-object v1

    .line 24
    .local v1, "dataTracking":Lcom/mezzo/common/network/data/DataMovieAD;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataMovieAD;->toString()Ljava/lang/String;

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

    .line 22
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
