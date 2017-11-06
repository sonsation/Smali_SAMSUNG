.class public Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;
.super Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;
.source "MusicCategoryYearFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/samsung/android/app/music/milk/store/widget/TabPageChange;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/samsung/android/app/music/milk/store/widget/TabPageChange;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicCategoryYearFragment"


# instance fields
.field private mAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter;

.field private mContext:Landroid/content/Context;

.field private mGridView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

.field private mLoadFinishedCallback:Lcom/samsung/android/app/music/milk/store/ILoadFinished;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter;

    return-object v0
.end method

.method public static newInstance()Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;
    .locals 3

    .prologue
    .line 53
    const-string v1, "MusicCategoryYearFragment"

    const-string v2, "newInstance : is called"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;-><init>()V

    .line 55
    .local v0, "fragment":Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;
    return-object v0
.end method


# virtual methods
.method public isLoadFinished()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 125
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter;

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter;->getItemCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 128
    :cond_0
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 60
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;->setRetainInstance(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v0

    .line 63
    .local v0, "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    if-eqz v0, :cond_0

    .line 64
    const-string v1, "MusicCategory"

    new-array v2, v2, [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    const/4 v3, 0x0

    new-instance v4, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/LaunchYearDetailExecutor;

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/samsung/android/app/music/bixby/executor/store/musiccategory/LaunchYearDetailExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/content/Context;)V

    aput-object v4, v2, v3

    .line 64
    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V

    .line 67
    :cond_0
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 145
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$MusicCategoryPeriod;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v6, "year_name DESC"

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .local v0, "loader":Landroid/content/CursorLoader;
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 73
    const-string v0, "MusicCategoryYearFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateView. savedInstanceState - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const v0, 0x7f0400f9

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;->mRootView:Landroid/view/View;

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;->mContext:Landroid/content/Context;

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f1202d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;->mGridView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    .line 80
    new-instance v0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter;

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;->mGridView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;->mGridView:Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/RecyclerGridView;->setOnItemClickListener(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$OnItemClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 4
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v0, "yearInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;>;"
    :cond_0
    invoke-static {p2}, Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;->createPeriodInfoFromDAOCusror(Landroid/database/Cursor;)Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    const-string v1, "MusicCategoryYearFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoadFinished. years - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter;->swapArray(Ljava/util/List;)V

    .line 159
    .end local v0    # "yearInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/musiccategory/YearInfo;>;"
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;->mLoadFinishedCallback:Lcom/samsung/android/app/music/milk/store/ILoadFinished;

    if-eqz v1, :cond_2

    .line 160
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;->mLoadFinishedCallback:Lcom/samsung/android/app/music/milk/store/ILoadFinished;

    invoke-interface {v1}, Lcom/samsung/android/app/music/milk/store/ILoadFinished;->loadFinished()V

    .line 162
    :cond_2
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 39
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onSelected()V
    .locals 3

    .prologue
    .line 120
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "987"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 121
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    const-string v1, "984"

    const-string v2, "9842"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public onUnSelected()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 109
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const v1, 0x7f120020

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 111
    return-void
.end method

.method public primaryColorChanged(I)V
    .locals 1
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;->mAdapter:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearAdapter;->updatePrimaryColor(I)V

    .line 137
    :cond_0
    return-void
.end method

.method public setLoadFinished(Lcom/samsung/android/app/music/milk/store/ILoadFinished;)V
    .locals 0
    .param p1, "finished"    # Lcom/samsung/android/app/music/milk/store/ILoadFinished;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;->mLoadFinishedCallback:Lcom/samsung/android/app/music/milk/store/ILoadFinished;

    .line 141
    return-void
.end method
