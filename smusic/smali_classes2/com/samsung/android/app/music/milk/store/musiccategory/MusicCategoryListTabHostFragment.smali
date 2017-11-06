.class public Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;
.super Lcom/samsung/android/app/music/milk/store/topchart/TabHostViewPagerFragment;
.source "MusicCategoryListTabHostFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/TabControllable;


# static fields
.field public static final TAG:Ljava/lang/String; = "MusicCategoryListTabHostFragment"


# instance fields
.field private genreFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;

.field private mDefaultGenreIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private yearFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostViewPagerFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/util/ArrayList;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "genreIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;-><init>()V

    .line 30
    .local v1, "fragment":Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 31
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 32
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "genreIdList"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 33
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;->setArguments(Landroid/os/Bundle;)V

    .line 36
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public isLoadFinished(I)Z
    .locals 1
    .param p1, "pageNum"    # I

    .prologue
    .line 76
    if-nez p1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;->genreFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->isLoadFinished()Z

    move-result v0

    .line 81
    :goto_0
    return v0

    .line 78
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;->yearFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;->isLoadFinished()Z

    move-result v0

    goto :goto_0

    .line 81
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;->genreFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->onBackPressed()Z

    move-result v0

    .line 88
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/topchart/TabHostViewPagerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;->setRetainInstance(Z)V

    .line 45
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 46
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 47
    const-string v1, "genreIdList"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;->mDefaultGenreIds:Ljava/util/ArrayList;

    .line 48
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;->mDefaultGenreIds:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 49
    const-string v1, "MusicCategoryListTabHostFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate : mDefaultGenreIds size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;->mDefaultGenreIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_0
    return-void
.end method

.method public selectTab(II)V
    .locals 2
    .param p1, "tabGroupId"    # I
    .param p2, "tabId"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 100
    return-void
.end method

.method public setLoadFinished(Lcom/samsung/android/app/music/milk/store/ILoadFinished;I)V
    .locals 1
    .param p1, "loadFinished"    # Lcom/samsung/android/app/music/milk/store/ILoadFinished;
    .param p2, "tabId"    # I

    .prologue
    .line 103
    if-nez p2, :cond_1

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;->genreFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->setLoadFinished(Lcom/samsung/android/app/music/milk/store/ILoadFinished;)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;->yearFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;->setLoadFinished(Lcom/samsung/android/app/music/milk/store/ILoadFinished;)V

    goto :goto_0
.end method

.method public setTabEnabled(IZ)V
    .locals 0
    .param p1, "tabGroupId"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 95
    return-void
.end method

.method protected setupTabs(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;->getTabAdapter()Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;

    move-result-object v0

    .line 57
    .local v0, "adapter":Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;
    if-eqz v0, :cond_0

    .line 58
    const-string v1, "genre"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;->genreFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;

    .line 59
    const-string/jumbo v1, "year"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/topchart/FragmentViewPagerAdapter;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;->yearFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;->genreFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;

    if-nez v1, :cond_1

    .line 63
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;->mDefaultGenreIds:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;->newInstance(Ljava/util/ArrayList;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;->genreFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;

    .line 64
    const v1, 0x7f0a03cc

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;->genreFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryGenreFragment;

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "genre"

    .line 64
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;->addTab(Ljava/lang/String;Landroid/app/Fragment;Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;->yearFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;

    if-nez v1, :cond_2

    .line 69
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;->newInstance()Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;->yearFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;

    .line 70
    const v1, 0x7f0a03d3

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;->yearFragment:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryYearFragment;

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, "year"

    .line 70
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryListTabHostFragment;->addTab(Ljava/lang/String;Landroid/app/Fragment;Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 73
    :cond_2
    return-void
.end method
