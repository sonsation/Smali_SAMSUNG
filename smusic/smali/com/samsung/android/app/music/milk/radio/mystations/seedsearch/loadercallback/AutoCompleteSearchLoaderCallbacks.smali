.class public Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/AutoCompleteSearchLoaderCallbacks;
.super Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback;
.source "AutoCompleteSearchLoaderCallbacks.java"


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
.field private static final LOG_TAG:Ljava/lang/String; = "AutoCompleteSearchLoaderCallbacks"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHelper:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

.field private mLoader:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/SeedSearchAutocompleteLoader;

.field private mSearchType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/ICallbackSearchLoader;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/ICallbackSearchLoader;

    .prologue
    .line 33
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback;-><init>(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/ICallbackSearchLoader;)V

    .line 34
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/AutoCompleteSearchLoaderCallbacks;->mContext:Landroid/content/Context;

    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/AutoCompleteSearchLoaderCallbacks;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/AutoCompleteSearchLoaderCallbacks;->mHelper:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    .line 36
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
    .line 46
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/milk/radio/mystations/editstation/common/SearchResultWrapper;>;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/AutoCompleteSearchLoaderCallbacks;->mFacCallback:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/ICallbackSearchLoader;

    iget v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/AutoCompleteSearchLoaderCallbacks;->mLoaderID:I

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/ICallbackSearchLoader;->attachServerData(ILjava/util/List;)V

    .line 47
    return-void
.end method

.method protected createLoader(ILjava/lang/String;)Landroid/content/Loader;
    .locals 4
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
    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/AutoCompleteSearchLoaderCallbacks;->mLoader:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/SeedSearchAutocompleteLoader;

    if-eqz v0, :cond_0

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/AutoCompleteSearchLoaderCallbacks;->mLoader:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/SeedSearchAutocompleteLoader;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/SeedSearchAutocompleteLoader;->cancelLoad()Z

    .line 58
    :cond_0
    :goto_0
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/SeedSearchAutocompleteLoader;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/AutoCompleteSearchLoaderCallbacks;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/AutoCompleteSearchLoaderCallbacks;->mHelper:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/AutoCompleteSearchLoaderCallbacks;->mSearchType:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/SeedSearchAutocompleteLoader;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/AutoCompleteSearchLoaderCallbacks;->mLoader:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/SeedSearchAutocompleteLoader;

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/AutoCompleteSearchLoaderCallbacks;->mLoader:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/SeedSearchAutocompleteLoader;

    return-object v0

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/AutoCompleteSearchLoaderCallbacks;->mLoader:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/SeedSearchAutocompleteLoader;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/SeedSearchAutocompleteLoader;->cancelLoadInBackground()V

    goto :goto_0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string v0, "AutoCompleteSearchLoaderCallbacks"

    return-object v0
.end method

.method protected getSearchKeyWord(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    .line 75
    const-string v0, "SEARCH_TERM_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isLoderID(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 65
    const v0, 0x7f120031

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
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
    .line 40
    const-string v0, "SEARCH_TYPE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/AutoCompleteSearchLoaderCallbacks;->mSearchType:Ljava/lang/String;

    .line 41
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method
