.class public Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/SeedSearchAutocompleteLoader;
.super Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;
.source "SeedSearchAutocompleteLoader.java"


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
.field private static final LOG_TAG:Ljava/lang/String; = "SeedSearchAutocompleteLoader"


# instance fields
.field private mKeyword:Ljava/lang/String;

.field private mSeedType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "milkServiceHelper"    # Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    .param p3, "seedType"    # Ljava/lang/String;
    .param p4, "keyword"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/BaseLoader;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;)V

    .line 33
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/SeedSearchAutocompleteLoader;->mKeyword:Ljava/lang/String;

    .line 34
    const-string v0, "01"

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/SeedSearchAutocompleteLoader;->mSeedType:Ljava/lang/String;

    .line 35
    sget-object v0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;->SONG:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/constant/SearchSeedConst$SearchResultType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const-string v0, "02"

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/SeedSearchAutocompleteLoader;->mSeedType:Ljava/lang/String;

    .line 39
    :cond_0
    const-string v0, "SeedSearchAutocompleteLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeedSearchAutocompleteLoader : Autocomplte Search Type => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected assertResult(IILjava/lang/Object;)Z
    .locals 1
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspData"    # Ljava/lang/Object;

    .prologue
    .line 44
    const/16 v0, 0x12e

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
    .line 23
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/SeedSearchAutocompleteLoader;->clear(Ljava/util/List;)V

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
    .line 54
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 55
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 57
    :cond_0
    return-void
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "SeedSearchAutocompleteLoader"

    return-object v0
.end method

.method protected bridge synthetic getResponseData(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/SeedSearchAutocompleteLoader;->getResponseData(Ljava/lang/Object;)Ljava/util/List;

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
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;>;"
    if-eqz p1, :cond_1

    instance-of v6, p1, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeed;

    if-eqz v6, :cond_1

    move-object v6, p1

    .line 69
    check-cast v6, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeed;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeed;->getSeedList()Ljava/util/List;

    move-result-object v3

    .line 70
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

    .line 71
    .local v1, "seed":Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;
    new-instance v2, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;

    invoke-direct {v2, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;-><init>(Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;)V

    .line 72
    .local v2, "seedWrapper":Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    .end local v1    # "seed":Lcom/samsung/android/app/music/common/model/milksearch/SearchSeedResult;
    .end local v2    # "seedWrapper":Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;
    :cond_0
    check-cast p1, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeed;

    .end local p1    # "rspData":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milksearch/SearchSeed;->getStationList()Ljava/util/List;

    move-result-object v5

    .line 75
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

    .line 76
    .local v4, "station":Lcom/samsung/android/app/music/common/model/milksearch/SearchStation;
    new-instance v2, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;

    invoke-direct {v2, v4}, Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;-><init>(Lcom/samsung/android/app/music/common/model/milksearch/SearchStation;)V

    .line 77
    .restart local v2    # "seedWrapper":Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 81
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
    .line 61
    const-string v0, "SeedSearchAutocompleteLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "request : Autocomplte Search Type => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/SeedSearchAutocompleteLoader;->mSeedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/SeedSearchAutocompleteLoader;->mMilkServiceHelper:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/SeedSearchAutocompleteLoader;->mKeyword:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/SeedSearchAutocompleteLoader;->mSeedType:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->searchSeedAutoCompleted(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
