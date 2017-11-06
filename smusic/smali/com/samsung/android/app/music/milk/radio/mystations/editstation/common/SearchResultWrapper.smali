.class public Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;
.super Ljava/lang/Object;
.source "SearchResultWrapper.java"


# instance fields
.field private mResultSeed:Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;

.field private mResultStation:Lcom/samsung/android/app/music/common/model/milksearch/SearchStation;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;)V
    .locals 0
    .param p1, "seed"    # Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->mResultSeed:Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/common/model/milksearch/SearchStation;)V
    .locals 0
    .param p1, "station"    # Lcom/samsung/android/app/music/common/model/milksearch/SearchStation;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->mResultStation:Lcom/samsung/android/app/music/common/model/milksearch/SearchStation;

    .line 27
    return-void
.end method


# virtual methods
.method public getArtistList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/artist/Artist;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->mResultSeed:Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;

    if-eqz v1, :cond_0

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    new-instance v1, Lcom/samsung/android/app/music/common/model/artist/Artist;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->mResultSeed:Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->getArtistId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->mResultSeed:Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->getArtistName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/music/common/model/artist/Artist;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    .end local v0    # "ret":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/artist/Artist;>;"
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCoverArtUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->mResultSeed:Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->mResultSeed:Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->getCoverArtUrl()Ljava/lang/String;

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSeedId()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 70
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->mResultStation:Lcom/samsung/android/app/music/common/model/milksearch/SearchStation;

    if-eqz v1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-object v0

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->mResultSeed:Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;

    if-eqz v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->mResultSeed:Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->getSeedType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "01"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->mResultSeed:Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->getArtistId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->mResultSeed:Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->getTrackId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSeedResultName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->mResultStation:Lcom/samsung/android/app/music/common/model/milksearch/SearchStation;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->mResultStation:Lcom/samsung/android/app/music/common/model/milksearch/SearchStation;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milksearch/SearchStation;->getStationTitle()Ljava/lang/String;

    move-result-object v0

    .line 50
    :goto_0
    return-object v0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->mResultSeed:Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;

    if-eqz v0, :cond_2

    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->mResultSeed:Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->getSeedType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "01"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->mResultSeed:Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->getArtistName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->mResultSeed:Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->getTrackName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 50
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSeedResultSubName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->mResultStation:Lcom/samsung/android/app/music/common/model/milksearch/SearchStation;

    if-eqz v0, :cond_0

    .line 55
    const-string v0, ""

    .line 66
    :goto_0
    return-object v0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->mResultSeed:Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;

    if-eqz v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->mResultSeed:Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->getSeedType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "01"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    const-string v0, ""

    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->mResultSeed:Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->getArtistName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 66
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSeedType()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 86
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->mResultStation:Lcom/samsung/android/app/music/common/model/milksearch/SearchStation;

    if-eqz v1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-object v0

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->mResultSeed:Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;

    if-eqz v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->mResultSeed:Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->getSeedType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTrackTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->mResultSeed:Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->mResultSeed:Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->getTrackName()Ljava/lang/String;

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExplicit()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->mResultSeed:Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->mResultSeed:Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;->isExplicity()Z

    move-result v0

    .line 110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSeedResultType()Z
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->mResultSeed:Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStationResultType()Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;->mResultStation:Lcom/samsung/android/app/music/common/model/milksearch/SearchStation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
