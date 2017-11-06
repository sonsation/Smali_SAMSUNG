.class public Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;
.super Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;
.source "MusicCategoryDetailChartsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailChartsView;
.implements Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;
.implements Lcom/samsung/android/app/music/milk/store/widget/TabPageChange;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment$ActionModeOptionsMenu;
    }
.end annotation


# static fields
.field private static final KEY_AUTO_REFRESH:Ljava/lang/String; = "autoRefresh"


# instance fields
.field private mAutoRefresh:Z

.field private mCategoryId:Ljava/lang/String;

.field private mCategoryType:I

.field protected mContent:Landroid/view/View;

.field protected mHeaderContainer:Landroid/view/View;

.field private mInitSpinnerIndex:I

.field private mIsLoadFinished:Z

.field protected mListView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

.field private mLoadFinishedCallback:Lcom/samsung/android/app/music/milk/store/ILoadFinished;

.field protected mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

.field protected mPlay:Landroid/widget/TextView;

.field private mPlayAllContainer:Landroid/widget/FrameLayout;

.field private mPresenter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;

.field protected mProgress:Landroid/view/View;

.field protected mSelect:Landroid/widget/TextView;

.field private mSelectAllContainer:Landroid/widget/FrameLayout;

.field private mSpinner:Landroid/widget/Spinner;

.field private mTrackAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsAdapter;

.field private mYearId:Ljava/lang/String;

.field private mYearList:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mIsLoadFinished:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mYearId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsAdapter;

    return-object v0
.end method

.method public static newInstance(ILjava/lang/String;Z[Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;
    .locals 3
    .param p0, "categoryType"    # I
    .param p1, "categoryId"    # Ljava/lang/String;
    .param p2, "autoRefresh"    # Z
    .param p3, "yearList"    # [Ljava/lang/String;
    .param p4, "yearId"    # Ljava/lang/String;

    .prologue
    .line 84
    new-instance v1, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;-><init>()V

    .line 85
    .local v1, "fragment":Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 86
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "key_category_type"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    const-string v2, "key_category_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v2, "key_category_year_list"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 89
    const-string v2, "key_category_year_id"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v2, "autoRefresh"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 91
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 92
    return-object v1
.end method

.method private setLoadFinish(Z)V
    .locals 1
    .param p1, "isSuccess"    # Z

    .prologue
    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mIsLoadFinished:Z

    .line 337
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mLoadFinishedCallback:Lcom/samsung/android/app/music/milk/store/ILoadFinished;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mLoadFinishedCallback:Lcom/samsung/android/app/music/milk/store/ILoadFinished;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/ILoadFinished;->loadFinished()V

    .line 340
    :cond_0
    return-void
.end method


# virtual methods
.method protected buttonEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 353
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mSelectAllContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 354
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mPlayAllContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 355
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mSelect:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 356
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mPlay:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 357
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->isSupportSorting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 360
    :cond_0
    return-void
.end method

.method public getCategoryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mCategoryId:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryType()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mCategoryType:I

    return v0
.end method

.method protected getPlayRequestType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    const-string v0, "0"

    return-object v0
.end method

.method public isLoadFinished()Z
    .locals 3

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLoadFinished : mIsLoadFinished : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mIsLoadFinished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mIsLoadFinished:Z

    return v0
.end method

.method protected isSelectedAll()Z
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsAdapter;->isSelectedAll()Z

    move-result v0

    return v0
.end method

.method protected isSupportSorting()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 309
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mCategoryType:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 315
    :cond_0
    :goto_0
    return v0

    .line 311
    :cond_1
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mCategoryType:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 312
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 394
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 403
    :goto_0
    :pswitch_0
    return-void

    .line 396
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->selectAll()V

    .line 397
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "988"

    const-string v2, "1542"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 400
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->playAll()V

    goto :goto_0

    .line 394
    nop

    :pswitch_data_0
    .packed-switch 0x7f1202d4
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0xb

    .line 97
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 99
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 100
    const-string v2, "key_category_type"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mCategoryType:I

    .line 101
    const-string v2, "key_category_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mCategoryId:Ljava/lang/String;

    .line 102
    const-string v2, "autoRefresh"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mAutoRefresh:Z

    .line 103
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mCategoryType:I

    if-ne v2, v5, :cond_0

    .line 104
    const-string v2, "key_category_year_list"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mYearList:[Ljava/lang/String;

    .line 106
    const-string v2, "key_category_year_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mYearId:Ljava/lang/String;

    .line 108
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mYearList:[Ljava/lang/String;

    sget-object v3, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 109
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mYearList:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 110
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mYearId:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mInitSpinnerIndex:I

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate : list.size() - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 112
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", list.indexOf(mYearId) - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mYearId:Ljava/lang/String;

    .line 113
    invoke-interface {v1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 115
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mYearList:[Ljava/lang/String;

    .line 119
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate : type - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mCategoryType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mCategoryId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mCategoryType:I

    if-ne v2, v5, :cond_1

    .line 122
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    const-string v3, "988"

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 124
    :cond_1
    new-instance v2, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsAdapter;

    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v2, v3, v4, p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsAdapter;

    .line 127
    new-instance v2, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mCategoryId:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;

    .line 129
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->getLogTag()Ljava/lang/String;

    move-result-object v2

    const-string v4, "onCreateView : "

    invoke-static {v2, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iput-boolean v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mIsLoadFinished:Z

    .line 137
    const v2, 0x7f0400f4

    invoke-virtual {p1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 138
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f12027c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mListView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    .line 139
    const v2, 0x7f12027e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mProgress:Landroid/view/View;

    .line 140
    const v2, 0x7f1202d2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mHeaderContainer:Landroid/view/View;

    .line 141
    const v2, 0x7f1202d4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mSelect:Landroid/widget/TextView;

    .line 142
    const v2, 0x7f1202d6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mPlay:Landroid/widget/TextView;

    .line 143
    const v2, 0x7f1202b5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    .line 144
    const v2, 0x7f1202cc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mContent:Landroid/view/View;

    .line 145
    const v2, 0x7f1202d3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mSelectAllContainer:Landroid/widget/FrameLayout;

    .line 146
    const v2, 0x7f1202d5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mPlayAllContainer:Landroid/widget/FrameLayout;

    .line 148
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mContent:Landroid/view/View;

    invoke-virtual {v4, v2, p0, v5, v3}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->initialize(Lcom/samsung/android/app/music/network/NetworkManager;Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$RetryListener;Landroid/view/View;Z)V

    .line 150
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mListView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsAdapter;

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerListView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 151
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsAdapter;

    invoke-virtual {v2, p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsAdapter;->setSelectableCallback(Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;)V

    .line 153
    const v2, 0x7f12038f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mSpinner:Landroid/widget/Spinner;

    .line 154
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->isSupportSorting()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->isSupportSorting()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->getLogTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onCreateView : isSupportSorting"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance v0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailSortSpinnerAdapter;

    .line 160
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mYearList:[Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailSortSpinnerAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 162
    .local v0, "spinAdapter":Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 163
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mSpinner:Landroid/widget/Spinner;

    iget v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mInitSpinnerIndex:I

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 164
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mSpinner:Landroid/widget/Spinner;

    new-instance v3, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 195
    .end local v0    # "spinAdapter":Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mSelect:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 196
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mSelect:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mPlay:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 200
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mPlay:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;

    invoke-virtual {v2, p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->attachView(Lcom/samsung/android/app/music/milk/store/musiccategory/IMusicCategoryDetailChartsView;)V

    .line 205
    new-instance v2, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment$ActionModeOptionsMenu;

    invoke-direct {v2, p0, v6}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment$1;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mActionModeMenu:Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$AbsActionModeOptionsMenu;

    .line 206
    return-object v1

    .line 154
    :cond_3
    const/16 v2, 0x8

    goto :goto_0
.end method

.method protected onDeselectAll()V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsAdapter;->deselectAll()V

    .line 375
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 216
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->onDestroyView()V

    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->detachView()V

    .line 218
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->destroy()V

    .line 219
    return-void
.end method

.method protected onMilkServiceConnected()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 233
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->onMilkServiceConnected()V

    .line 234
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mCategoryType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 235
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->loadTopChartTracks(I)V

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mCategoryType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mYearId:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->loadTopChartTracksWithSort(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 228
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->onPause()V

    .line 229
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 223
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->onResume()V

    .line 224
    return-void
.end method

.method public onRetry()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 281
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->hide()V

    .line 282
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mCategoryType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 283
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->loadTopChartTracks(I)V

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mCategoryType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 285
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mPresenter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mYearId:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsPresenter;->loadTopChartTracksWithSort(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected onSelectAll()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsAdapter;->selectAll()V

    .line 370
    return-void
.end method

.method public onSelected()V
    .locals 3

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSelected : "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mCategoryType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 294
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "988"

    const-string v2, "9871"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_0
    return-void
.end method

.method public onUnSelected()V
    .locals 2

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onUnSelected : "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsAdapter;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsAdapter;->isSelectMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 306
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 211
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 212
    return-void
.end method

.method public playAll()V
    .locals 8

    .prologue
    .line 319
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsAdapter;

    if-nez v2, :cond_0

    .line 332
    :goto_0
    return-void

    .line 322
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v0, "playList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsAdapter;->getItemList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 324
    .local v1, "simpleTrack":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->isPlayable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 325
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 329
    .end local v1    # "simpleTrack":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    :cond_2
    const/4 v2, -0x1

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->addPlayQueue(Ljava/util/List;I)V

    .line 331
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    const-string v3, "988"

    const-string v4, "1543"

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public primaryColorChanged(I)V
    .locals 1
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 243
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsAdapter;->updatePrimaryColor(I)V

    .line 244
    return-void
.end method

.method public selectAll()V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsAdapter;->setSelectMode(Z)V

    .line 407
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsAdapter;->selectAll()V

    .line 408
    return-void
.end method

.method protected sendSASelectionModeOn()V
    .locals 0

    .prologue
    .line 390
    return-void
.end method

.method protected setAdapterSelectMode(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 364
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsAdapter;->setSelectMode(Z)V

    .line 365
    return-void
.end method

.method public setLoadFinished(Lcom/samsung/android/app/music/milk/store/ILoadFinished;)V
    .locals 0
    .param p1, "finished"    # Lcom/samsung/android/app/music/milk/store/ILoadFinished;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mLoadFinishedCallback:Lcom/samsung/android/app/music/milk/store/ILoadFinished;

    .line 349
    return-void
.end method

.method public showError(IILjava/lang/String;)V
    .locals 1
    .param p1, "rspType"    # I
    .param p2, "errorCode"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->show(II)V

    .line 268
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->setLoadFinish(Z)V

    .line 269
    return-void
.end method

.method public showLoading(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 259
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mProgress:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showLoading : show - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mProgress:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 263
    :cond_0
    return-void

    .line 261
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showTrackInfo(Ljava/util/List;)V
    .locals 5
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
    .local p1, "tracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    const/4 v1, 0x0

    .line 248
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 249
    .local v0, "size":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showTrackInfo : size - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", track - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mTrackAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsAdapter;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsAdapter;->swapArray(Ljava/util/List;)V

    .line 251
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mNoNetworkLayout:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;

    sget-object v3, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;->CACHED:Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout;->switchMode(Lcom/samsung/android/app/music/milk/store/widget/NoNetworkLayout$NoNetworkMode;)V

    .line 252
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->mContent:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 254
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->setLoadFinish(Z)V

    .line 255
    return-void

    .end local v0    # "size":I
    :cond_0
    move v0, v1

    .line 248
    goto :goto_0
.end method
