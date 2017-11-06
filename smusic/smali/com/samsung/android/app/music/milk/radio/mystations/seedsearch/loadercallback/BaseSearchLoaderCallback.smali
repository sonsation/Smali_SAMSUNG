.class public abstract Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback;
.super Ljava/lang/Object;
.source "BaseSearchLoaderCallback.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field protected mFacCallback:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/ICallbackSearchLoader;

.field protected mLoaderID:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/ICallbackSearchLoader;)V
    .locals 0
    .param p1, "callback"    # Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/ICallbackSearchLoader;

    .prologue
    .line 24
    .local p0, "this":Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback;, "Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback;->mFacCallback:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/ICallbackSearchLoader;

    .line 26
    return-void
.end method

.method private hasError(Landroid/content/Loader;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<TT;>;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback;, "Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback<TT;>;"
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<TT;>;>;"
    const/16 v6, -0x3e7

    .line 93
    const/4 v1, 0x0

    .line 95
    .local v1, "ret":Z
    instance-of v3, p1, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/ReturnLoaderCode;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 96
    check-cast v2, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/ReturnLoaderCode;

    .line 97
    .local v2, "retCode":Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/ReturnLoaderCode;
    invoke-interface {v2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/ReturnLoaderCode;->getRspType()I

    move-result v0

    .line 99
    .local v0, "code":I
    sparse-switch v0, :sswitch_data_0

    .line 127
    .end local v0    # "code":I
    .end local v2    # "retCode":Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/ReturnLoaderCode;
    :cond_0
    :goto_0
    :sswitch_0
    return v1

    .line 104
    .restart local v0    # "code":I
    .restart local v2    # "retCode":Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/ReturnLoaderCode;
    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback;->getLogTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onLoadFinished : loader callback encountered an error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback;->mFacCallback:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/ICallbackSearchLoader;

    const/16 v4, 0xbb8

    .line 108
    invoke-interface {v2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loader/ReturnLoaderCode;->getRspCode()I

    move-result v5

    const-string v6, ""

    .line 107
    invoke-interface {v3, v4, v0, v5, v6}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/ICallbackSearchLoader;->resultFromLoaderCallback(IIILjava/lang/String;)V

    .line 109
    const/4 v1, 0x1

    .line 110
    goto :goto_0

    .line 117
    :sswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback;->getLogTag()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "onLoadFinished : Internal Error"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback;->mFacCallback:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/ICallbackSearchLoader;

    const/16 v4, 0xfa0

    const-string v5, "Internal Error"

    invoke-interface {v3, v4, v6, v6, v5}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/ICallbackSearchLoader;->resultFromLoaderCallback(IIILjava/lang/String;)V

    .line 121
    const/4 v1, 0x1

    goto :goto_0

    .line 99
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3e7 -> :sswitch_2
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method protected abstract attachSearchDataFromServer(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method protected abstract createLoader(ILjava/lang/String;)Landroid/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end method

.method protected abstract getLogTag()Ljava/lang/String;
.end method

.method protected abstract getSearchKeyWord(Landroid/os/Bundle;)Ljava/lang/String;
.end method

.method protected abstract isLoderID(I)Z
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
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
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback;, "Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback<TT;>;"
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback;->isLoderID(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback;->getSearchKeyWord(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "keyWord":Ljava/lang/String;
    iput p1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback;->mLoaderID:I

    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCreateLoader : word => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback;->createLoader(ILjava/lang/String;)Landroid/content/Loader;

    move-result-object v1

    .line 37
    .end local v0    # "keyWord":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    .local p0, "this":Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback;, "Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback<TT;>;"
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<TT;>;>;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback;, "Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback<TT;>;"
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<TT;>;>;"
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v3, 0x0

    .line 42
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback;->hasError(Landroid/content/Loader;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback;->isLoderID(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 47
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    const v1, 0x7f120031

    if-ne v0, v1, :cond_2

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onLoadFinished : AutoComplete Search (Create Station)"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_1
    :goto_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback;->attachSearchDataFromServer(Ljava/util/List;)V

    .line 61
    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback;->mFacCallback:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/ICallbackSearchLoader;

    const-string v1, "Success"

    .line 63
    invoke-interface {v0, v3, v3, v3, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/ICallbackSearchLoader;->resultFromLoaderCallback(IIILjava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    const v1, 0x7f120033

    if-ne v0, v1, :cond_3

    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onLoadFinished : Search (Artist)"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 51
    :cond_3
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    const v1, 0x7f120032

    if-ne v0, v1, :cond_4

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onLoadFinished : Search (All)"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 53
    :cond_4
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    const v1, 0x7f120038

    if-ne v0, v1, :cond_5

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onLoadFinished : Search (Song)"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 55
    :cond_5
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    const v1, 0x7f120039

    if-ne v0, v1, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onLoadFinished : Search (Station)"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 66
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback;->mFacCallback:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/ICallbackSearchLoader;

    const/16 v1, 0x3e8

    const-string v2, "Empty List"

    invoke-interface {v0, v1, v3, v3, v2}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/ICallbackSearchLoader;->resultFromLoaderCallback(IIILjava/lang/String;)V

    goto/16 :goto_0

    .line 71
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLoadFinished : Not exited Loader ID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback;, "Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback<TT;>;"
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<TT;>;>;"
    const/4 v4, 0x0

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onLoaderReset : New AllShareLoader"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    .line 81
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback;->isLoderID(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback;->attachSearchDataFromServer(Ljava/util/List;)V

    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onLoadFinished : Internal Error"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/BaseSearchLoaderCallback;->mFacCallback:Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/ICallbackSearchLoader;

    const/16 v2, 0x7d0

    const-string v3, "Loader Reset"

    .line 85
    invoke-interface {v1, v2, v4, v4, v3}, Lcom/samsung/android/app/music/milk/radio/mystations/seedsearch/loadercallback/ICallbackSearchLoader;->resultFromLoaderCallback(IIILjava/lang/String;)V

    .line 90
    return-void

    .line 88
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loader id not recognized: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
