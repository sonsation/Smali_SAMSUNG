.class public Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;
.super Ljava/lang/Object;
.source "MusicCategoryDetailArtistPresenter.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MusicCategoryDetailArtistPresenter"


# instance fields
.field private mArtistList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoryGroup:Ljava/lang/String;

.field private mCategoryId:Ljava/lang/String;

.field private mCategoryPage:I

.field private mContextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "categoryId"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->mArtistList:Ljava/util/ArrayList;

    .line 32
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->mCategoryId:Ljava/lang/String;

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->mCategoryPage:I

    .line 34
    const-string v0, "00"

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->mCategoryGroup:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    .line 36
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public attachView(Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->mView:Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;

    .line 44
    return-void
.end method

.method public detachView()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->mView:Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;

    .line 48
    return-void
.end method

.method public getCountryGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->mCategoryGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    return-object v0
.end method

.method public getView()Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->mView:Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;

    return-object v0
.end method

.method public isViewAttached()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->mView:Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadArtists()V
    .locals 4

    .prologue
    .line 59
    const-string v0, "MusicCategoryDetailArtistPresenter"

    const-string v1, "loadArtists"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->getService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->mCategoryId:Ljava/lang/String;

    const-string v2, "03"

    iget v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->mCategoryPage:I

    .line 61
    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getGenreArtistsInfo(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;I)I

    .line 63
    return-void
.end method

.method public loadArtistsWithSort(Ljava/lang/String;)V
    .locals 6
    .param p1, "sort"    # Ljava/lang/String;

    .prologue
    .line 66
    const-string v0, "MusicCategoryDetailArtistPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadArtistsWithSort : sort - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->mCategoryGroup:Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->getService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->mCategoryId:Ljava/lang/String;

    const-string v3, "03"

    iget v5, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->mCategoryPage:I

    move-object v1, p0

    move-object v4, p1

    .line 69
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getPeriodArtistsInfo(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 71
    return-void
.end method

.method public loadNextArtists()V
    .locals 4

    .prologue
    .line 74
    const-string v0, "MusicCategoryDetailArtistPresenter"

    const-string v1, "loadNextArtists"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->getService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->mCategoryId:Ljava/lang/String;

    const-string v2, "03"

    iget v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->mCategoryPage:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->mCategoryPage:I

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getGenreNextArtistsInfo(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;I)I

    .line 77
    return-void
.end method

.method public loadNextArtistsWithSort(Ljava/lang/String;)V
    .locals 6
    .param p1, "sort"    # Ljava/lang/String;

    .prologue
    .line 80
    const-string v0, "MusicCategoryDetailArtistPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadNextArtistsWithSort : sort - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->mCategoryGroup:Ljava/lang/String;

    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->getService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->mCategoryId:Ljava/lang/String;

    const-string v3, "03"

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->mCategoryPage:I

    add-int/lit8 v5, v1, 0x1

    iput v5, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->mCategoryPage:I

    move-object v1, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getPeriodNextArtistsInfo(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 84
    return-void
.end method

.method public onApiCalled(II)V
    .locals 2
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->getView()Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;->showLoading(Z)V

    .line 91
    :cond_0
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->isViewAttached()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->getView()Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;->showLoading(Z)V

    .line 98
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 233
    .end local p4    # "rspData":Ljava/lang/Object;
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 100
    .restart local p4    # "rspData":Ljava/lang/Object;
    :pswitch_1
    packed-switch p3, :pswitch_data_1

    :pswitch_2
    goto :goto_0

    .line 102
    :pswitch_3
    const-string v3, "MusicCategoryDetailArtistPresenter"

    const-string v4, "onApiHandled : MUSIC_CATEGORY_GENRE_ARTISTS "

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p4

    .line 104
    check-cast v2, Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailArtistResponseModel;

    .line 106
    .local v2, "response":Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailArtistResponseModel;
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailArtistResponseModel;->getArtistList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;

    .line 107
    .local v0, "content":Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->mArtistList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 109
    .end local v0    # "content":Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->isViewAttached()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->getView()Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->mArtistList:Ljava/util/ArrayList;

    invoke-interface {v3, v4}, Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;->showArtists(Ljava/util/List;)V

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->getView()Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailArtistResponseModel;->hasMoreContent()Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;->setHasMoreItem(Z)V

    .line 112
    const-string v3, "MusicCategoryDetailArtistPresenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onApiHandled : MUSIC_CATEGORY_GENRE_ARTISTS hasMore : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 114
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailArtistResponseModel;->hasMoreContent()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    .end local v2    # "response":Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailArtistResponseModel;
    :pswitch_4
    const/4 v1, -0x1

    .line 122
    .local v1, "errorCode":I
    instance-of v3, p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    if-eqz v3, :cond_3

    .line 123
    check-cast p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/ResponseModel;->getResultCode()I

    move-result v1

    .line 125
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->isViewAttached()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->getView()Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;

    move-result-object v3

    invoke-interface {v3, p3, v1, v5}, Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;->showError(IILjava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->getView()Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;->setHasMoreItem(Z)V

    goto :goto_0

    .line 133
    .end local v1    # "errorCode":I
    .restart local p4    # "rspData":Ljava/lang/Object;
    :pswitch_5
    packed-switch p3, :pswitch_data_2

    :pswitch_6
    goto/16 :goto_0

    .line 135
    :pswitch_7
    const-string v3, "MusicCategoryDetailArtistPresenter"

    const-string v4, "onApiHandled : MUSIC_CATEGORY_PERIOD_ARTISTS "

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p4

    .line 137
    check-cast v2, Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailArtistResponseModel;

    .line 139
    .restart local v2    # "response":Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailArtistResponseModel;
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailArtistResponseModel;->getArtistList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;

    .line 140
    .restart local v0    # "content":Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->mArtistList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 142
    .end local v0    # "content":Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->isViewAttached()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 143
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->getView()Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->mArtistList:Ljava/util/ArrayList;

    invoke-interface {v3, v4}, Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;->showArtists(Ljava/util/List;)V

    .line 144
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->getView()Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailArtistResponseModel;->hasMoreContent()Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;->setHasMoreItem(Z)V

    .line 145
    const-string v3, "MusicCategoryDetailArtistPresenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onApiHandled : MUSIC_CATEGORY_PERIOD_ARTISTS hasMore : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 147
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailArtistResponseModel;->hasMoreContent()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 145
    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 154
    .end local v2    # "response":Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailArtistResponseModel;
    :pswitch_8
    const/4 v1, -0x1

    .line 155
    .restart local v1    # "errorCode":I
    instance-of v3, p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    if-eqz v3, :cond_5

    .line 156
    check-cast p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/ResponseModel;->getResultCode()I

    move-result v1

    .line 158
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->isViewAttached()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->getView()Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;

    move-result-object v3

    invoke-interface {v3, p3, v1, v5}, Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;->showError(IILjava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->getView()Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;->setHasMoreItem(Z)V

    goto/16 :goto_0

    .line 167
    .end local v1    # "errorCode":I
    .restart local p4    # "rspData":Ljava/lang/Object;
    :pswitch_9
    packed-switch p3, :pswitch_data_3

    :pswitch_a
    goto/16 :goto_0

    .line 169
    :pswitch_b
    const-string v3, "MusicCategoryDetailArtistPresenter"

    const-string v4, "onApiHandled : MUSIC_CATEGORY_GENRE_NEXT_ARTISTS "

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p4

    .line 171
    check-cast v2, Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailArtistResponseModel;

    .line 173
    .restart local v2    # "response":Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailArtistResponseModel;
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailArtistResponseModel;->getArtistList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;

    .line 174
    .restart local v0    # "content":Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->mArtistList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 176
    .end local v0    # "content":Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->isViewAttached()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 177
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->getView()Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->mArtistList:Ljava/util/ArrayList;

    invoke-interface {v3, v4}, Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;->showArtists(Ljava/util/List;)V

    .line 178
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->getView()Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailArtistResponseModel;->hasMoreContent()Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;->setHasMoreItem(Z)V

    .line 179
    const-string v3, "MusicCategoryDetailArtistPresenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onApiHandled : MUSIC_CATEGORY_GENRE_NEXT_ARTISTS hasMore : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 181
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailArtistResponseModel;->hasMoreContent()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 179
    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 188
    .end local v2    # "response":Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailArtistResponseModel;
    :pswitch_c
    const/4 v1, -0x1

    .line 189
    .restart local v1    # "errorCode":I
    instance-of v3, p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    if-eqz v3, :cond_7

    .line 190
    check-cast p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/ResponseModel;->getResultCode()I

    move-result v1

    .line 192
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->isViewAttached()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->getView()Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;

    move-result-object v3

    invoke-interface {v3, p3, v1, v5}, Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;->showError(IILjava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->getView()Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;->setHasMoreItem(Z)V

    goto/16 :goto_0

    .line 200
    .end local v1    # "errorCode":I
    .restart local p4    # "rspData":Ljava/lang/Object;
    :pswitch_d
    packed-switch p3, :pswitch_data_4

    :pswitch_e
    goto/16 :goto_0

    .line 202
    :pswitch_f
    const-string v3, "MusicCategoryDetailArtistPresenter"

    const-string v4, "onApiHandled : MUSIC_CATEGORY_PERIOD_NEXT_ARTISTS "

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p4

    .line 204
    check-cast v2, Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailArtistResponseModel;

    .line 206
    .restart local v2    # "response":Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailArtistResponseModel;
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailArtistResponseModel;->getArtistList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;

    .line 207
    .restart local v0    # "content":Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->mArtistList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 209
    .end local v0    # "content":Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailArtistInfo;
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->isViewAttached()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 210
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->getView()Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->mArtistList:Ljava/util/ArrayList;

    invoke-interface {v3, v4}, Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;->showArtists(Ljava/util/List;)V

    .line 211
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->getView()Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailArtistResponseModel;->hasMoreContent()Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;->setHasMoreItem(Z)V

    .line 212
    const-string v3, "MusicCategoryDetailArtistPresenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onApiHandled : MUSIC_CATEGORY_PERIOD_NEXT_ARTISTS hasMore : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 214
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailArtistResponseModel;->hasMoreContent()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 212
    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 221
    .end local v2    # "response":Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailArtistResponseModel;
    :pswitch_10
    const/4 v1, -0x1

    .line 222
    .restart local v1    # "errorCode":I
    instance-of v3, p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    if-eqz v3, :cond_9

    .line 223
    check-cast p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/ResponseModel;->getResultCode()I

    move-result v1

    .line 225
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->isViewAttached()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 226
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->getView()Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;

    move-result-object v3

    invoke-interface {v3, p3, v1, v5}, Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;->showError(IILjava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->getView()Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailArtistsView;->setHasMoreItem(Z)V

    goto/16 :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x2c28
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_9
        :pswitch_d
    .end packed-switch

    .line 100
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_4
    .end packed-switch

    .line 133
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_8
        :pswitch_6
        :pswitch_8
    .end packed-switch

    .line 167
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_a
        :pswitch_c
        :pswitch_a
        :pswitch_c
    .end packed-switch

    .line 200
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_f
        :pswitch_10
        :pswitch_e
        :pswitch_10
        :pswitch_e
        :pswitch_10
    .end packed-switch
.end method

.method public requestListClear()V
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->mCategoryPage:I

    .line 237
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistPresenter;->mArtistList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 238
    return-void
.end method
