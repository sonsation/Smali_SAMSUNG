.class public Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/SeedSearchLoaderCallback;
.super Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback;
.source "SeedSearchLoaderCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback",
        "<",
        "Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SeedSearchLoaderCallback"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHelper:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

.field private mLoader:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/SeedSearchLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/ICallbackSearchLoader;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/ICallbackSearchLoader;

    .prologue
    .line 30
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/ICallbackSearchLoader;)V

    .line 31
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/SeedSearchLoaderCallback;->mContext:Landroid/content/Context;

    .line 32
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/SeedSearchLoaderCallback;->mHelper:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    .line 33
    return-void
.end method


# virtual methods
.method protected attachSearchDataFromServer(Ljava/util/List;)V
    .locals 2
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
    .line 37
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/SeedSearchLoaderCallback;->mFacCallback:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/ICallbackSearchLoader;

    iget v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/SeedSearchLoaderCallback;->mLoaderID:I

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/ICallbackSearchLoader;->attachServerData(ILjava/util/List;)V

    .line 38
    return-void
.end method

.method protected createLoader(ILjava/lang/String;)Landroid/content/Loader;
    .locals 3
    .param p1, "id"    # I
    .param p2, "searchWord"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/SeedSearchLoaderCallback;->mLoader:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/SeedSearchLoader;

    if-eqz v0, :cond_0

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/SeedSearchLoaderCallback;->mLoader:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/SeedSearchLoader;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/SeedSearchLoader;->cancelLoad()Z

    .line 49
    :cond_0
    :goto_0
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/SeedSearchLoader;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/SeedSearchLoaderCallback;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/SeedSearchLoaderCallback;->mHelper:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/SeedSearchLoader;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/SeedSearchLoaderCallback;->mLoader:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/SeedSearchLoader;

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/SeedSearchLoaderCallback;->mLoader:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/SeedSearchLoader;

    return-object v0

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/SeedSearchLoaderCallback;->mLoader:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/SeedSearchLoader;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/SeedSearchLoader;->cancelLoadInBackground()V

    goto :goto_0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string v0, "SeedSearchLoaderCallback"

    return-object v0
.end method

.method protected getSearchKeyWord(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 67
    const-string v0, "SEARCH_TERM_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isLoderID(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 56
    const v0, 0x7f120032

    if-eq p1, v0, :cond_0

    const v0, 0x7f120033

    if-eq p1, v0, :cond_0

    const v0, 0x7f120038

    if-eq p1, v0, :cond_0

    const v0, 0x7f120039

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
