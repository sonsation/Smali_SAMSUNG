.class public Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/SeedSearchLoader;
.super Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;
.source "SeedSearchLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SeedSearchLoader"


# instance fields
.field private mKeyword:Ljava/lang/String;

.field private mLoaderID:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;ILjava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "milkServiceHelper"    # Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    .param p3, "id"    # I
    .param p4, "keyword"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;)V

    .line 28
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/SeedSearchLoader;->mKeyword:Ljava/lang/String;

    .line 29
    iput p3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/SeedSearchLoader;->mLoaderID:I

    .line 30
    return-void
.end method


# virtual methods
.method protected assertResult(IILjava/lang/Object;)Z
    .locals 1
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspData"    # Ljava/lang/Object;

    .prologue
    .line 34
    const/16 v0, 0x134

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic clear(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/SeedSearchLoader;->clear(Ljava/util/List;)V

    return-void
.end method

.method protected clear(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 45
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 47
    :cond_0
    return-void
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "SeedSearchLoader"

    return-object v0
.end method

.method protected bridge synthetic getResponseData(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/SeedSearchLoader;->getResponseData(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getResponseData(Ljava/lang/Object;)Ljava/util/List;
    .locals 8
    .param p1, "rspData"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;>;"
    if-eqz p1, :cond_1

    instance-of v6, p1, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeed;

    if-eqz v6, :cond_1

    move-object v6, p1

    .line 68
    check-cast v6, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeed;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeed;->getSeedList()Ljava/util/List;

    move-result-object v3

    .line 69
    .local v3, "seedlist":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;

    .line 70
    .local v1, "seed":Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;
    new-instance v2, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;

    invoke-direct {v2, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;-><init>(Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;)V

    .line 71
    .local v2, "seedWrapper":Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    .end local v1    # "seed":Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;
    .end local v2    # "seedWrapper":Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;
    :cond_0
    check-cast p1, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeed;

    .end local p1    # "rspData":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeed;->getStationList()Ljava/util/List;

    move-result-object v5

    .line 74
    .local v5, "stationlist":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milksearch/SearchStation;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/common/model/milksearch/SearchStation;

    .line 75
    .local v4, "station":Lcom/samsung/android/app/music/common/model/milksearch/SearchStation;
    new-instance v2, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;

    invoke-direct {v2, v4}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;-><init>(Lcom/samsung/android/app/music/common/model/milksearch/SearchStation;)V

    .line 76
    .restart local v2    # "seedWrapper":Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 80
    .end local v2    # "seedWrapper":Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;
    .end local v3    # "seedlist":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;>;"
    .end local v4    # "station":Lcom/samsung/android/app/music/common/model/milksearch/SearchStation;
    .end local v5    # "stationlist":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milksearch/SearchStation;>;"
    :cond_1
    return-object v0
.end method

.method protected request()I
    .locals 3

    .prologue
    .line 51
    const-string v0, "00"

    .line 53
    .local v0, "seedType":Ljava/lang/String;
    iget v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/SeedSearchLoader;->mLoaderID:I

    const v2, 0x7f120033

    if-ne v1, v2, :cond_1

    .line 54
    const-string v0, "01"

    .line 61
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/SeedSearchLoader;->mMilkServiceHelper:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/SeedSearchLoader;->mKeyword:Ljava/lang/String;

    invoke-virtual {v1, p0, v2, v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->searchSeed(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 55
    :cond_1
    iget v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/SeedSearchLoader;->mLoaderID:I

    const v2, 0x7f120038

    if-ne v1, v2, :cond_2

    .line 56
    const-string v0, "02"

    goto :goto_0

    .line 57
    :cond_2
    iget v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/SeedSearchLoader;->mLoaderID:I

    const v2, 0x7f120039

    if-ne v1, v2, :cond_0

    .line 58
    const-string v0, "03"

    goto :goto_0
.end method
