.class public Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;
.super Ljava/lang/Object;
.source "MusicCategoryDetailChartsPresenter.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MusicCategoryDetailChartsPresenter"


# instance fields
.field private autoRefresh:Z

.field private mCategoryId:Ljava/lang/String;

.field private mCategoryYear:Ljava/lang/String;

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

.field private mCurrentPage:I

.field private mLastUpdatedTime:J

.field private mTrackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailChartsView;

.field private shouldShowLoading:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "categoryId"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->mTrackList:Ljava/util/ArrayList;

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->mLastUpdatedTime:J

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->autoRefresh:Z

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->shouldShowLoading:Z

    .line 39
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->mCategoryId:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    .line 41
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public attachView(Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailChartsView;)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailChartsView;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->mView:Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailChartsView;

    .line 49
    return-void
.end method

.method public detachView()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->mView:Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailChartsView;

    .line 53
    return-void
.end method

.method public getService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    return-object v0
.end method

.method public getView()Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailChartsView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->mView:Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailChartsView;

    return-object v0
.end method

.method public getYear()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->mCategoryYear:Ljava/lang/String;

    return-object v0
.end method

.method public isViewAttached()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->mView:Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailChartsView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadNextTopChartTracks()V
    .locals 4

    .prologue
    .line 94
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->mCurrentPage:I

    .line 95
    const-string v0, "MusicCategoryDetailChartsPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadNextTopChartTracks : next page - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->mCurrentPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->getService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->mCategoryId:Ljava/lang/String;

    const-string v2, "01"

    iget v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->mCurrentPage:I

    .line 97
    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getGenreChartsInfo(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;I)I

    .line 99
    return-void
.end method

.method public loadNextTopChartTracksSort(Ljava/lang/String;)V
    .locals 3
    .param p1, "sort"    # Ljava/lang/String;

    .prologue
    .line 102
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->mCurrentPage:I

    .line 103
    const-string v0, "MusicCategoryDetailChartsPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadNextTopChartTracks : next page - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->mCurrentPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->getService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->mCategoryId:Ljava/lang/String;

    const-string v2, "01"

    .line 105
    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getPeriodChartsInfo(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method

.method public loadTopChartTracks(I)V
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->loadTopChartTracks(IZ)V

    .line 65
    return-void
.end method

.method public loadTopChartTracks(IZ)V
    .locals 4
    .param p1, "page"    # I
    .param p2, "showLoading"    # Z

    .prologue
    .line 72
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->mCurrentPage:I

    .line 73
    const-string v0, "MusicCategoryDetailChartsPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadTopChartTracks. page - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iput-boolean p2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->shouldShowLoading:Z

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->getService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->mCategoryId:Ljava/lang/String;

    const-string v2, "01"

    iget v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->mCurrentPage:I

    .line 77
    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getGenreChartsInfo(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;I)I

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->shouldShowLoading:Z

    .line 80
    return-void
.end method

.method public loadTopChartTracksWithSort(ILjava/lang/String;)V
    .locals 1
    .param p1, "page"    # I
    .param p2, "sort"    # Ljava/lang/String;

    .prologue
    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->loadTopChartTracksWithSort(IZLjava/lang/String;)V

    .line 69
    return-void
.end method

.method public loadTopChartTracksWithSort(IZLjava/lang/String;)V
    .locals 3
    .param p1, "page"    # I
    .param p2, "showLoading"    # Z
    .param p3, "sort"    # Ljava/lang/String;

    .prologue
    .line 83
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->mCurrentPage:I

    .line 84
    const-string v0, "MusicCategoryDetailChartsPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadTopChartTracksWithSort. page - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->mCategoryYear:Ljava/lang/String;

    .line 86
    iput-boolean p2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->shouldShowLoading:Z

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->getService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->mCategoryId:Ljava/lang/String;

    const-string v2, "01"

    .line 88
    invoke-virtual {v0, p0, v1, v2, p3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getPeriodChartsInfo(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->shouldShowLoading:Z

    .line 91
    return-void
.end method

.method public onApiCalled(II)V
    .locals 2
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->isViewAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->shouldShowLoading:Z

    if-eqz v0, :cond_0

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->shouldShowLoading:Z

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->getView()Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailChartsView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailChartsView;->showLoading(Z)V

    .line 118
    :cond_0
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 7
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 122
    const-string v3, "MusicCategoryDetailChartsPresenter"

    const-string v4, "onApiHandled : "

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->isViewAttached()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->getView()Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailChartsView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailChartsView;->showLoading(Z)V

    .line 126
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 202
    .end local p4    # "rspData":Ljava/lang/Object;
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 128
    .restart local p4    # "rspData":Ljava/lang/Object;
    :pswitch_1
    packed-switch p3, :pswitch_data_1

    :pswitch_2
    goto :goto_0

    .line 130
    :pswitch_3
    const-string v3, "MusicCategoryDetailChartsPresenter"

    const-string v4, "onApiHandled : CATEGORY_GENRE_TOP_CHART "

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p4

    .line 131
    check-cast v1, Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailTrackResponseModel;

    .line 136
    .local v1, "response":Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailTrackResponseModel;
    iget v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->mCurrentPage:I

    if-ne v3, v5, :cond_2

    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->requestListClear()V

    .line 139
    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailTrackResponseModel;->getContentList()Ljava/util/List;

    move-result-object v2

    .line 140
    .local v2, "topCharts":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    if-eqz v2, :cond_3

    .line 141
    const-string v3, "MusicCategoryDetailChartsPresenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onApiHandled : addTopChart. current - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->mTrackList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", added - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->mTrackList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 147
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->isViewAttached()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->getView()Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailChartsView;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->mTrackList:Ljava/util/ArrayList;

    invoke-interface {v3, v4}, Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailChartsView;->showTrackInfo(Ljava/util/List;)V

    goto :goto_0

    .line 144
    :cond_3
    const-string v3, "MusicCategoryDetailChartsPresenter"

    const-string v4, "onApiHandled : topCharts is null"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 155
    .end local v1    # "response":Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailTrackResponseModel;
    .end local v2    # "topCharts":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    :pswitch_4
    const/4 v0, -0x1

    .line 156
    .local v0, "errorCode":I
    instance-of v3, p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    if-eqz v3, :cond_4

    .line 157
    check-cast p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/ResponseModel;->getResultCode()I

    move-result v0

    .line 159
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->isViewAttached()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 160
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->getView()Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailChartsView;

    move-result-object v3

    invoke-interface {v3, p3, v0, v6}, Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailChartsView;->showError(IILjava/lang/String;)V

    goto :goto_0

    .line 166
    .end local v0    # "errorCode":I
    .restart local p4    # "rspData":Ljava/lang/Object;
    :pswitch_5
    packed-switch p3, :pswitch_data_2

    :pswitch_6
    goto/16 :goto_0

    .line 168
    :pswitch_7
    const-string v3, "MusicCategoryDetailChartsPresenter"

    const-string v4, "onApiHandled : CATEGORY_PERIOD_TOP_CHART "

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p4

    .line 169
    check-cast v1, Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailTrackResponseModel;

    .line 172
    .restart local v1    # "response":Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailTrackResponseModel;
    iget v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->mCurrentPage:I

    if-ne v3, v5, :cond_5

    .line 173
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->requestListClear()V

    .line 175
    :cond_5
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailTrackResponseModel;->getContentList()Ljava/util/List;

    move-result-object v2

    .line 176
    .restart local v2    # "topCharts":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    if-eqz v2, :cond_6

    .line 177
    const-string v3, "MusicCategoryDetailChartsPresenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onApiHandled : addTopChart. current - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->mTrackList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", added - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->mTrackList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 183
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->isViewAttached()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 184
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->getView()Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailChartsView;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->mTrackList:Ljava/util/ArrayList;

    invoke-interface {v3, v4}, Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailChartsView;->showTrackInfo(Ljava/util/List;)V

    goto/16 :goto_0

    .line 180
    :cond_6
    const-string v3, "MusicCategoryDetailChartsPresenter"

    const-string v4, "onApiHandled : topCharts is null"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 191
    .end local v1    # "response":Lcom/samsung/android/app/music/common/model/musiccategory/GenreDetailTrackResponseModel;
    .end local v2    # "topCharts":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    :pswitch_8
    const/4 v0, -0x1

    .line 192
    .restart local v0    # "errorCode":I
    instance-of v3, p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    if-eqz v3, :cond_7

    .line 193
    check-cast p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/ResponseModel;->getResultCode()I

    move-result v0

    .line 195
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->isViewAttached()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 196
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->getView()Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailChartsView;

    move-result-object v3

    invoke-interface {v3, p3, v0, v6}, Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailChartsView;->showError(IILjava/lang/String;)V

    goto/16 :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x2c26
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 128
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_4
    .end packed-switch

    .line 166
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
    .line 209
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->mCurrentPage:I

    .line 210
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->mTrackList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 211
    return-void
.end method
