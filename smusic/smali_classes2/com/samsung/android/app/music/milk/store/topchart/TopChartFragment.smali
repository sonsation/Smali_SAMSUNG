.class public Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;
.super Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;
.source "TopChartFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/samsung/android/app/music/milk/executorinterface/ITopChartExecutor;
.implements Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;
.implements Lcom/samsung/android/app/music/milk/store/widget/TabPageChange;
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment$ActionModeOptionsMenu;
    }
.end annotation


# static fields
.field private static final EXTRA_SAVED_SELECTED_TRACK_IDS:Ljava/lang/String; = "saved_selected_track_ids"

.field private static final EXTRA_SAVED_SELECT_MODE:Ljava/lang/String; = "saved_select_mode"

.field private static final EXTRA_SAVED_TRACKS:Ljava/lang/String; = "saved_tracks"

.field private static final KEY_AUTO_REFRESH:Ljava/lang/String; = "autoRefresh"

.field private static final KEY_DISPLAY_ID:Ljava/lang/String; = "displayId"

.field private static final KEY_DISPLAY_TYPE:Ljava/lang/String; = "displayType"


# instance fields
.field private mAutoRefresh:Z

.field protected mContent:Landroid/view/View;

.field private mDisplayId:Ljava/lang/String;

.field private mDisplayType:Ljava/lang/String;

.field private mIsLoadFinished:Z

.field protected mListView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

.field private mLoadFinishedCallback:Lcom/samsung/android/app/music/milk/store/ILoadFinished;

.field protected mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

.field private mPlayAll:Landroid/widget/TextView;

.field private mPlayAllContainer:Landroid/widget/FrameLayout;

.field protected mProgress:Landroid/view/View;

.field protected mRefreshLayout:Lcom/dinuscxj/refresh/RecyclerRefreshLayout;

.field private mSelectAll:Landroid/widget/TextView;

.field private mSelectAllContainer:Landroid/widget/FrameLayout;

.field private mTrackAdapter:Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;

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

.field private shouldShowLoading:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mTrackList:Ljava/util/ArrayList;

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->shouldShowLoading:Z

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;)Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;
    .locals 3
    .param p0, "displayId"    # Ljava/lang/String;
    .param p1, "displayType"    # Ljava/lang/String;
    .param p2, "autoRefresh"    # Z

    .prologue
    .line 100
    new-instance v1, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;-><init>()V

    .line 101
    .local v1, "fragment":Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 102
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "displayType"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v2, "displayId"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v2, "autoRefresh"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 105
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->setArguments(Landroid/os/Bundle;)V

    .line 106
    return-object v1
.end method

.method private setIsLoadFinished(Z)V
    .locals 1
    .param p1, "isSuccess"    # Z

    .prologue
    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mIsLoadFinished:Z

    .line 322
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mLoadFinishedCallback:Lcom/samsung/android/app/music/milk/store/ILoadFinished;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mLoadFinishedCallback:Lcom/samsung/android/app/music/milk/store/ILoadFinished;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/ILoadFinished;->loadFinished()V

    .line 325
    :cond_0
    return-void
.end method


# virtual methods
.method public addPlaylist()V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->getSelectedTracks()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->addToPlaylist(Ljava/util/List;)V

    .line 457
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 460
    :cond_0
    return-void
.end method

.method protected buttonEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 397
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mSelectAllContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 398
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mPlayAllContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 399
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mSelectAll:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 400
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mPlayAll:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 401
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mRefreshLayout:Lcom/dinuscxj/refresh/RecyclerRefreshLayout;

    invoke-virtual {v0, p1}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->setEnabled(Z)V

    .line 402
    return-void
.end method

.method public downloadTracks()V
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->getSelectedTracks()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->download(Ljava/util/List;)V

    .line 465
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 468
    :cond_0
    return-void
.end method

.method public getDisplayId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mDisplayId:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mDisplayType:Ljava/lang/String;

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->getLogTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mDisplayType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPlayRequestType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 426
    const-string v0, "0"

    .line 427
    .local v0, "reqType":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mDisplayType:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 428
    const-string v0, "1"

    .line 434
    :cond_0
    :goto_0
    return-object v0

    .line 429
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mDisplayType:Ljava/lang/String;

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 430
    const-string v0, "2"

    goto :goto_0

    .line 431
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mDisplayType:Ljava/lang/String;

    const-string v2, "4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    const-string v0, "3"

    goto :goto_0
.end method

.method public isLoadFinished()Z
    .locals 3

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLoadFinished : mIsLoadFinished : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mIsLoadFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mIsLoadFinished:Z

    return v0
.end method

.method protected isSelectedAll()Z
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->isSelectedAll()Z

    move-result v0

    return v0
.end method

.method public loadTopChartTracks(Z)V
    .locals 6
    .param p1, "showLoading"    # Z

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadTopChartTracks. showLoading - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->shouldShowLoading:Z

    .line 391
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mDisplayId:Ljava/lang/String;

    const/4 v3, 0x1

    const-string v4, "2"

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mDisplayType:Ljava/lang/String;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getStoreDisplayDetailPage(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    .line 393
    return-void
.end method

.method public onApiCalled(II)V
    .locals 1
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->shouldShowLoading:Z

    if-eqz v0, :cond_0

    .line 339
    const/16 v0, 0x2778

    if-ne p2, v0, :cond_0

    .line 340
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->showLoading(Z)V

    .line 343
    :cond_0
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 9
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 349
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V

    .line 351
    packed-switch p2, :pswitch_data_0

    .line 386
    .end local p4    # "rspData":Ljava/lang/Object;
    :goto_0
    return-void

    .line 353
    .restart local p4    # "rspData":Ljava/lang/Object;
    :pswitch_0
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->showLoading(Z)V

    .line 354
    packed-switch p3, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    :pswitch_2
    move-object v2, p4

    .line 356
    check-cast v2, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;

    .line 358
    .local v2, "response":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mTrackList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 360
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;->getDisplayList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;

    .line 361
    .local v1, "group":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    const-string v6, "10"

    .line 362
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getDisplayType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 363
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;->getContentList()Ljava/util/List;

    move-result-object v4

    .line 364
    .local v4, "topCharts":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;>;"
    if-eqz v4, :cond_0

    .line 365
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;

    .line 366
    .local v3, "topChartTrack":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mTrackList:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->from(Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;)Lcom/samsung/android/app/music/common/model/SimpleTrack;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 372
    .end local v1    # "group":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainGroup;
    .end local v3    # "topChartTrack":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;
    .end local v4    # "topCharts":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/milkstore/StoreMainContent;>;"
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mTrackList:Ljava/util/ArrayList;

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->showTrackInfo(Ljava/util/List;)V

    goto :goto_0

    .line 377
    .end local v2    # "response":Lcom/samsung/android/app/music/common/model/milkstore/StoreMainResponseModel;
    :pswitch_3
    const/4 v0, -0x1

    .line 378
    .local v0, "errorCode":I
    instance-of v5, p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    if-eqz v5, :cond_2

    .line 379
    check-cast p4, Lcom/samsung/android/app/music/common/model/ResponseModel;

    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/ResponseModel;->getResultCode()I

    move-result v0

    .line 381
    :cond_2
    const/4 v5, 0x0

    invoke-virtual {p0, p3, v0, v5}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->showError(IILjava/lang/String;)V

    goto :goto_0

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x2778
        :pswitch_0
    .end packed-switch

    .line 354
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 329
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f1202d3

    if-ne v0, v1, :cond_1

    .line 330
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->selectAll()V

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f1202d5

    if-ne v0, v1, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->playAll()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 120
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 122
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 123
    const-string v2, "displayId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mDisplayId:Ljava/lang/String;

    .line 124
    const-string v2, "displayType"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mDisplayType:Ljava/lang/String;

    .line 125
    const-string v2, "autoRefresh"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mAutoRefresh:Z

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate : id - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mDisplayId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mDisplayType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    new-instance v2, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mDisplayType:Ljava/lang/String;

    .line 130
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v3, p0, v4, v5}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;-><init>(Ljava/util/List;Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;

    .line 132
    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->setRetainInstance(Z)V

    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v1

    .line 135
    .local v1, "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    if-eqz v1, :cond_1

    .line 136
    const-string v2, "TopCharts"

    const/4 v3, 0x4

    new-array v3, v3, [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    new-instance v4, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartPlayExecutor;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mDisplayType:Ljava/lang/String;

    invoke-direct {v4, v1, v5, p0}, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartPlayExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Ljava/lang/String;Lcom/samsung/android/app/music/milk/executorinterface/ITopChartExecutor;)V

    aput-object v4, v3, v6

    const/4 v4, 0x1

    new-instance v5, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartSelectAllExecutor;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mDisplayType:Ljava/lang/String;

    invoke-direct {v5, v1, v6, p0}, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartSelectAllExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Ljava/lang/String;Lcom/samsung/android/app/music/milk/executorinterface/ITopChartExecutor;)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartAddToPlaylistExecutor;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mDisplayType:Ljava/lang/String;

    invoke-direct {v5, v1, v6, p0}, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartAddToPlaylistExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Ljava/lang/String;Lcom/samsung/android/app/music/milk/executorinterface/ITopChartExecutor;)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartDownloadBasketExecutor;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mDisplayType:Ljava/lang/String;

    invoke-direct {v5, v1, v6, p0}, Lcom/samsung/android/app/music/bixby/executor/store/topcharts/TopChartDownloadBasketExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Ljava/lang/String;Lcom/samsung/android/app/music/milk/executorinterface/ITopChartExecutor;)V

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V

    .line 142
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 147
    const v4, 0x7f04014b

    invoke-virtual {p1, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 148
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->getLogTag()Ljava/lang/String;

    move-result-object v4

    const-string v6, "onCreateView : "

    invoke-static {v4, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iput-boolean v5, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mIsLoadFinished:Z

    .line 152
    const v4, 0x7f1203e8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mRefreshLayout:Lcom/dinuscxj/refresh/RecyclerRefreshLayout;

    .line 153
    const v4, 0x7f12027c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mListView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    .line 154
    const v4, 0x7f12027e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mProgress:Landroid/view/View;

    .line 155
    const v4, 0x7f1202b5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    .line 156
    const v4, 0x7f1202cc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mContent:Landroid/view/View;

    .line 158
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mContent:Landroid/view/View;

    invoke-virtual {v6, v4, p0, v7, v5}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->initialize(Lcom/samsung/android/app/music/network/NetworkManager;Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;Landroid/view/View;Z)V

    .line 160
    const v4, 0x7f1202d3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mSelectAllContainer:Landroid/widget/FrameLayout;

    .line 161
    const v4, 0x7f1202d5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mPlayAllContainer:Landroid/widget/FrameLayout;

    .line 163
    const v4, 0x7f1202d4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mSelectAll:Landroid/widget/TextView;

    .line 164
    const v4, 0x7f1202d6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mPlayAll:Landroid/widget/TextView;

    .line 166
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mSelectAllContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mPlayAllContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mListView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;

    invoke-virtual {v4, v6}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 171
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mRefreshLayout:Lcom/dinuscxj/refresh/RecyclerRefreshLayout;

    new-instance v6, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;)V

    invoke-virtual {v4, v6}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->setOnRefreshListener(Lcom/dinuscxj/refresh/RecyclerRefreshLayout$OnRefreshListener;)V

    .line 178
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;

    invoke-virtual {v4, p0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->setSelectableCallback(Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;)V

    .line 180
    new-instance v4, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment$ActionModeOptionsMenu;

    invoke-direct {v4, p0, v8}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment$1;)V

    iput-object v4, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mActionModeMenu:Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$AbsActionModeOptionsMenu;

    .line 182
    if-eqz p3, :cond_0

    .line 183
    const-string/jumbo v4, "saved_tracks"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 184
    .local v2, "tracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->showTrackInfo(Ljava/util/List;)V

    .line 185
    if-eqz v2, :cond_0

    .line 186
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;

    const-string/jumbo v6, "saved_select_mode"

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->setSelectMode(Z)V

    .line 187
    const-string/jumbo v4, "saved_selected_track_ids"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 188
    .local v1, "selectedIds":[I
    if-eqz v1, :cond_0

    array-length v4, v1

    if-lez v4, :cond_0

    .line 189
    array-length v6, v1

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget v0, v1, v4

    .line 190
    .local v0, "id":I
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;

    const/4 v7, 0x1

    invoke-virtual {v5, v0, v7}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->selectItem(IZ)V

    .line 189
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 196
    .end local v0    # "id":I
    .end local v1    # "selectedIds":[I
    .end local v2    # "tracks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    :cond_0
    return-object v3
.end method

.method protected onDeselectAll()V
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->deselectAll()V

    .line 417
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 212
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->onDestroyView()V

    .line 213
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->destroy()V

    .line 214
    return-void
.end method

.method protected onMilkServiceConnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 228
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->onMilkServiceConnected(Landroid/content/ComponentName;)V

    .line 229
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.app.music.service.milk.MilkService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 231
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->loadTopChartTracks(Z)V

    .line 234
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 223
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->onPause()V

    .line 224
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 218
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->onResume()V

    .line 219
    return-void
.end method

.method public onRetry()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->hide()V

    .line 272
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 201
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;

    if-nez v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 205
    :cond_0
    const-string/jumbo v0, "saved_tracks"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->getItemList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 206
    const-string/jumbo v0, "saved_selected_track_ids"

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->getSelectedIds()[I

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 207
    const-string/jumbo v0, "saved_select_mode"

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->isSelectMode()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected onSelectAll()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->selectAll()V

    .line 412
    return-void
.end method

.method public onSelected()V
    .locals 3

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSelected : "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v0, "2"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->getDisplayType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "982"

    const-string v2, "9822"

    .line 290
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    const-string v0, "3"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->getDisplayType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "982"

    const-string v2, "9823"

    .line 293
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 294
    :cond_2
    const-string v0, "4"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->getDisplayType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "982"

    const-string v2, "9824"

    .line 296
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUnSelected()V
    .locals 2

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onUnSelected : "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->isSelectMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 282
    :cond_0
    return-void
.end method

.method public playAll()V
    .locals 4

    .prologue
    .line 444
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .local v0, "playList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->getItemList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 446
    .local v1, "simpleTrack":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->isPlayable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 447
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 451
    .end local v1    # "simpleTrack":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    :cond_1
    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->addPlayQueue(Ljava/util/List;I)V

    .line 452
    return-void
.end method

.method public primaryColorChanged(I)V
    .locals 1
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 238
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->updatePrimaryColor(I)V

    .line 239
    return-void
.end method

.method public selectAll()V
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->setSelectMode(Z)V

    .line 473
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->selectAll()V

    .line 474
    return-void
.end method

.method protected sendSASelectionModeOn()V
    .locals 0

    .prologue
    .line 440
    return-void
.end method

.method protected setAdapterSelectMode(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 406
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->setSelectMode(Z)V

    .line 407
    return-void
.end method

.method public setLoadFinished(Lcom/samsung/android/app/music/milk/store/ILoadFinished;)V
    .locals 0
    .param p1, "finished"    # Lcom/samsung/android/app/music/milk/store/ILoadFinished;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mLoadFinishedCallback:Lcom/samsung/android/app/music/milk/store/ILoadFinished;

    .line 312
    return-void
.end method

.method public setLoadFinished(Z)V
    .locals 0
    .param p1, "loadFinished"    # Z

    .prologue
    .line 303
    return-void
.end method

.method public setLoadFinishedCallback(Lcom/samsung/android/app/music/milk/store/ILoadFinished;)V
    .locals 0
    .param p1, "loadFinishedCallback"    # Lcom/samsung/android/app/music/milk/store/ILoadFinished;

    .prologue
    .line 317
    return-void
.end method

.method public setPlayResult(Lcom/samsung/android/app/music/milk/executorinterface/IPlayResult;)V
    .locals 0
    .param p1, "playResultCallback"    # Lcom/samsung/android/app/music/milk/executorinterface/IPlayResult;

    .prologue
    .line 478
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->setPlayResultCallback(Lcom/samsung/android/app/music/milk/executorinterface/IPlayResult;)V

    .line 479
    return-void
.end method

.method public showError(IILjava/lang/String;)V
    .locals 1
    .param p1, "rspType"    # I
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 261
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->show(II)V

    .line 262
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->setIsLoadFinished(Z)V

    .line 263
    return-void
.end method

.method public showLoading(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/4 v1, 0x0

    .line 251
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mProgress:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showLoading : show - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mProgress:Landroid/view/View;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 254
    if-nez p1, :cond_0

    .line 255
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mRefreshLayout:Lcom/dinuscxj/refresh/RecyclerRefreshLayout;

    invoke-virtual {v0, v1}, Lcom/dinuscxj/refresh/RecyclerRefreshLayout;->setRefreshing(Z)V

    .line 258
    :cond_0
    return-void

    .line 253
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showTrackInfo(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "showTrackInfo : "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->swapArray(Ljava/util/List;)V

    .line 244
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    sget-object v1, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->CACHED:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->switchMode(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;)V

    .line 245
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 247
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->setIsLoadFinished(Z)V

    .line 248
    return-void
.end method
