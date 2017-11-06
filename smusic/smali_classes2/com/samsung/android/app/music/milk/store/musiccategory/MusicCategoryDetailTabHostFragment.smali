.class public Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;
.super Lcom/samsung/android/app/music/milk/store/topchart/TabHostViewPagerFragment;
.source "MusicCategoryDetailTabHostFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/executorinterface/IMusicCategoryDetailTabExecutor;
.implements Lcom/samsung/android/app/musiclibrary/ui/TabControllable;


# static fields
.field public static final TAG:Ljava/lang/String; = "MusicCategoryDetailTabHostFragment"


# instance fields
.field private albumsFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;

.field private artistFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;

.field private chartsFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;

.field private mCategoryId:Ljava/lang/String;

.field private mCategoryType:I

.field private mTabTitleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mYearId:Ljava/lang/String;

.field private mYearList:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostViewPagerFragment;-><init>()V

    return-void
.end method

.method public static newInstance(ILjava/lang/String;Ljava/util/ArrayList;[Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;
    .locals 3
    .param p0, "categoryType"    # I
    .param p1, "categoryId"    # Ljava/lang/String;
    .param p3, "yearList"    # [Ljava/lang/String;
    .param p4, "yearId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "tabTitleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;-><init>()V

    .line 40
    .local v1, "fragment":Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "key_category_type"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 42
    const-string v2, "key_category_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v2, "key_tab_title_list"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 45
    const-string v2, "key_category_year_list"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 46
    const-string v2, "key_category_year_id"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->setArguments(Landroid/os/Bundle;)V

    .line 48
    return-object v1
.end method


# virtual methods
.method protected dispatchTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 2
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    const/4 v1, 0x2

    .line 85
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostViewPagerFragment;->dispatchTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 86
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 89
    :cond_0
    return-void
.end method

.method public getCategoryType()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->mCategoryType:I

    return v0
.end method

.method public getSelectedTabId()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public isLoadFinished(I)Z
    .locals 1
    .param p1, "pageNum"    # I

    .prologue
    .line 102
    if-nez p1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->chartsFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->isLoadFinished()Z

    move-result v0

    .line 105
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostViewPagerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 55
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 56
    const-string v1, "key_category_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->mCategoryType:I

    .line 57
    const-string v1, "key_category_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->mCategoryId:Ljava/lang/String;

    .line 58
    const-string v1, "key_tab_title_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->mTabTitleList:Ljava/util/ArrayList;

    .line 60
    const-string v1, "key_category_year_list"

    .line 61
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->mYearList:[Ljava/lang/String;

    .line 62
    const-string v1, "key_category_year_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->mYearId:Ljava/lang/String;

    .line 65
    :cond_0
    const-string v1, "MusicCategoryDetailTabHostFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate : mCategoryType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->mCategoryType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v1, "MusicCategoryDetailTabHostFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate : mCategoryId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->mCategoryId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v1, "MusicCategoryDetailTabHostFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate : mYearId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->mYearId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 98
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostViewPagerFragment;->onDestroyView()V

    .line 99
    return-void
.end method

.method public playAll()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->chartsFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->playAll()V

    .line 136
    return-void
.end method

.method public selectTab(II)V
    .locals 2
    .param p1, "tabGroupId"    # I
    .param p2, "tabId"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 117
    return-void
.end method

.method public setLoadFinished(Lcom/samsung/android/app/music/milk/store/ILoadFinished;)V
    .locals 1
    .param p1, "loadFinished"    # Lcom/samsung/android/app/music/milk/store/ILoadFinished;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->chartsFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->setLoadFinished(Lcom/samsung/android/app/music/milk/store/ILoadFinished;)V

    .line 121
    return-void
.end method

.method public setPlayResult(Lcom/samsung/android/app/music/milk/executorinterface/IPlayResult;)V
    .locals 1
    .param p1, "playResultCallback"    # Lcom/samsung/android/app/music/milk/executorinterface/IPlayResult;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->chartsFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->setPlayResultCallback(Lcom/samsung/android/app/music/milk/executorinterface/IPlayResult;)V

    .line 141
    return-void
.end method

.method public setTabEnabled(IZ)V
    .locals 0
    .param p1, "tabGroupId"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 112
    return-void
.end method

.method protected setupTabs(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 72
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->mCategoryType:I

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->mCategoryId:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->mYearList:[Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->mYearId:Ljava/lang/String;

    .line 73
    invoke-static {v0, v1, v4, v2, v3}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->newInstance(ILjava/lang/String;Z[Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->chartsFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->mTabTitleList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->chartsFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->addTab(Ljava/lang/String;Landroid/app/Fragment;Landroid/app/FragmentManager;)V

    .line 76
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->mCategoryType:I

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->mCategoryId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;->newInstance(ILjava/lang/String;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->albumsFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->mTabTitleList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->albumsFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailAlbumsFragment;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->addTab(Ljava/lang/String;Landroid/app/Fragment;Landroid/app/FragmentManager;)V

    .line 79
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->mCategoryType:I

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->mCategoryId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;->newInstance(ILjava/lang/String;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->artistFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->mTabTitleList:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->artistFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailArtistFragment;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailTabHostFragment;->addTab(Ljava/lang/String;Landroid/app/Fragment;Landroid/app/FragmentManager;)V

    .line 81
    return-void
.end method

.method protected setupViews(Landroid/view/View;)V
    .locals 0
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostViewPagerFragment;->setupViews(Landroid/view/View;)V

    .line 94
    return-void
.end method
