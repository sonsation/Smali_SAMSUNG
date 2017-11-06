.class public Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;
.super Ljava/lang/Object;
.source "MusicCategoryDetailAlbumsPresenter.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MusicCategoryDetailAlbumsPresenter"


# instance fields
.field private mAlbumList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;",
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

.field private mView:Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailAlbumsView;


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

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->mAlbumList:Ljava/util/ArrayList;

    .line 32
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->mCategoryId:Ljava/lang/String;

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->mCategoryPage:I

    .line 34
    const-string v0, "00"

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->mCategoryGroup:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    .line 36
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public attachView(Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailAlbumsView;)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailAlbumsView;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->mView:Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailAlbumsView;

    .line 44
    return-void
.end method

.method public detachView()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->mView:Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailAlbumsView;

    .line 48
    return-void
.end method

.method public getCountryGroup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->mCategoryGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    return-object v0
.end method

.method public getView()Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailAlbumsView;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->mView:Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailAlbumsView;

    return-object v0
.end method

.method public isViewAttached()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->mView:Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailAlbumsView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAlbums()V
    .locals 4

    .prologue
    .line 59
    const-string v0, "MusicCategoryDetailAlbumsPresenter"

    const-string v1, "loadAlbums"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->getService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->mCategoryId:Ljava/lang/String;

    const-string v2, "02"

    iget v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->mCategoryPage:I

    .line 61
    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getGenreAlbumsInfo(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;I)I

    .line 63
    return-void
.end method

.method public loadAlbumsWithSort(Ljava/lang/String;)V
    .locals 6
    .param p1, "sort"    # Ljava/lang/String;

    .prologue
    .line 66
    const-string v0, "MusicCategoryDetailAlbumsPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAlbumsWithSort : sort - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->mCategoryGroup:Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->getService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->mCategoryId:Ljava/lang/String;

    const-string v3, "02"

    iget v5, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->mCategoryPage:I

    move-object v1, p0

    move-object v4, p1

    .line 69
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getPeriodAlbumsInfo(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    .line 71
    return-void
.end method

.method public onApiCalled(II)V
    .locals 2
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->getView()Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailAlbumsView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailAlbumsView;->showLoading(Z)V

    .line 78
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

    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->isViewAttached()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->getView()Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailAlbumsView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailAlbumsView;->showLoading(Z)V

    .line 85
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 142
    .end local p4    # "rspData":Ljava/lang/Object;
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 87
    .restart local p4    # "rspData":Ljava/lang/Object;
    :pswitch_1
    packed-switch p3, :pswitch_data_1

    :pswitch_2
    goto :goto_0

    .line 89
    :pswitch_3
    const-string v3, "MusicCategoryDetailAlbumsPresenter"

    const-string v4, "onApiHandled : MUSIC_CATEGORY_GENRE_ALBUMS "

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p4

    .line 90
    check-cast v2, Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailAlbumResponseModel;

    .line 92
    .local v2, "response":Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailAlbumResponseModel;
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailAlbumResponseModel;->getContentList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;

    .line 93
    .local v0, "content":Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->mAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 95
    .end local v0    # "content":Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->isViewAttached()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->getView()Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailAlbumsView;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->mAlbumList:Ljava/util/ArrayList;

    invoke-interface {v3, v4}, Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailAlbumsView;->showAlbums(Ljava/util/List;)V

    goto :goto_0

    .line 102
    .end local v2    # "response":Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailAlbumResponseModel;
    :pswitch_4
    const/4 v1, -0x1

    .line 103
    .local v1, "errorCode":I
    instance-of v3, p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    if-eqz v3, :cond_3

    .line 104
    check-cast p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/ResponseModel;->getResultCode()I

    move-result v1

    .line 106
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->isViewAttached()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->getView()Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailAlbumsView;

    move-result-object v3

    invoke-interface {v3, p3, v1, v5}, Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailAlbumsView;->showError(IILjava/lang/String;)V

    goto :goto_0

    .line 113
    .end local v1    # "errorCode":I
    .restart local p4    # "rspData":Ljava/lang/Object;
    :pswitch_5
    packed-switch p3, :pswitch_data_2

    :pswitch_6
    goto :goto_0

    .line 115
    :pswitch_7
    const-string v3, "MusicCategoryDetailAlbumsPresenter"

    const-string v4, "onApiHandled : MUSIC_CATEGORY_PERIOD_ALBUMS "

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->mAlbumList:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->mAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 117
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->requestListClear()V

    :cond_4
    move-object v2, p4

    .line 119
    check-cast v2, Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailAlbumResponseModel;

    .line 121
    .restart local v2    # "response":Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailAlbumResponseModel;
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailAlbumResponseModel;->getContentList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;

    .line 122
    .restart local v0    # "content":Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->mAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 124
    .end local v0    # "content":Lcom/samsung/android/app/music/common/model/musiccategory/CategoryDetailAlbumInfo;
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->isViewAttached()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->getView()Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailAlbumsView;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->mAlbumList:Ljava/util/ArrayList;

    invoke-interface {v3, v4}, Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailAlbumsView;->showAlbums(Ljava/util/List;)V

    goto/16 :goto_0

    .line 131
    .end local v2    # "response":Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailAlbumResponseModel;
    :pswitch_8
    const/4 v1, -0x1

    .line 132
    .restart local v1    # "errorCode":I
    instance-of v3, p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    if-eqz v3, :cond_6

    .line 133
    check-cast p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/ResponseModel;->getResultCode()I

    move-result v1

    .line 135
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->isViewAttached()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->getView()Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailAlbumsView;

    move-result-object v3

    invoke-interface {v3, p3, v1, v5}, Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailAlbumsView;->showError(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x2c27
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 87
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_4
    .end packed-switch

    .line 113
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_8
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public requestListClear()V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->mCategoryPage:I

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsPresenter;->mAlbumList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 147
    return-void
.end method
