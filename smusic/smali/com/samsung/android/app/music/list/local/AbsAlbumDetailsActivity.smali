.class public abstract Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;
.source "AbsAlbumDetailsActivity.java"

# interfaces
.implements Lcom/samsung/android/app/music/list/parallax/ParallaxScrollable;
.implements Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity$AlbumInfoViewUpdater;
    }
.end annotation


# instance fields
.field private mAlbumId:J

.field private mParallaxScrollable:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollable;

.field private mSearchEnabled:Z

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;-><init>()V

    return-void
.end method

.method private adjustTopMargins()V
    .locals 4

    .prologue
    .line 137
    const v3, 0x7f120011

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 138
    .local v0, "listContainer":Landroid/view/View;
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/UiUtils;->getActionBarHeight(Landroid/app/Activity;)I

    move-result v3

    neg-int v2, v3

    .line 139
    .local v2, "topMargin":I
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isShowingStatusBar(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/UiUtils;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 142
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 143
    .local v1, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 144
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    return-void
.end method


# virtual methods
.method public varargs addMovableView([Landroid/view/View;)V
    .locals 1
    .param p1, "views"    # [Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity;->mParallaxScrollable:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollable;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity;->mParallaxScrollable:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollable;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollable;->addMovableView([Landroid/view/View;)V

    .line 160
    :cond_0
    return-void
.end method

.method protected abstract getAlbumDetailsFragment()Landroid/app/Fragment;
.end method

.method protected final getAlbumId()J
    .locals 2

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity;->mAlbumId:J

    return-wide v0
.end method

.method protected abstract getThumbnailBaseUri()Landroid/net/Uri;
.end method

.method public isLaunchSearchEnabled()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity;->mSearchEnabled:Z

    return v0
.end method

.method public launchSearch()V
    .locals 2

    .prologue
    .line 118
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/common/activity/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 120
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    .line 72
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    if-eqz p1, :cond_2

    .line 75
    const-string v6, "key_album_id"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity;->mAlbumId:J

    .line 76
    const-string v6, "key_title"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity;->mTitle:Ljava/lang/String;

    .line 77
    const-string v6, "key_search_enabled"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity;->mSearchEnabled:Z

    .line 85
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isPortrait(Landroid/app/Activity;)Z

    move-result v5

    .line 87
    .local v5, "parallaxUiEnabled":Z
    if-eqz v5, :cond_3

    .line 88
    const v4, 0x7f0401e2

    .line 93
    .local v4, "layoutId":I
    :goto_1
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity;->setContentView(I)V

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity;->initMiniPlayer()V

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity;->adjustTopMargins()V

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity;->getThumbnailBaseUri()Landroid/net/Uri;

    move-result-object v6

    iget-wide v8, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity;->mAlbumId:J

    invoke-virtual {p0, v6, v8, v9}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity;->setStaticThumbnailId(Landroid/net/Uri;J)V

    .line 99
    if-eqz v5, :cond_4

    .line 100
    new-instance v6, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;

    iget-object v7, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity;->mTitle:Ljava/lang/String;

    invoke-direct {v6, p0, v10, v7}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;-><init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity;->mParallaxScrollable:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollable;

    .line 108
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    .line 109
    .local v3, "fm":Landroid/app/FragmentManager;
    const-string v6, "TAG"

    invoke-virtual {v3, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 110
    .local v2, "fg":Landroid/app/Fragment;
    if-nez v2, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity;->getAlbumDetailsFragment()Landroid/app/Fragment;

    move-result-object v2

    .line 112
    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v6

    const v7, 0x7f1200fd

    const-string v8, "TAG"

    invoke-virtual {v6, v7, v2, v8}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentTransaction;->commit()I

    .line 114
    :cond_1
    return-void

    .line 79
    .end local v2    # "fg":Landroid/app/Fragment;
    .end local v3    # "fm":Landroid/app/FragmentManager;
    .end local v4    # "layoutId":I
    .end local v5    # "parallaxUiEnabled":Z
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 80
    .local v1, "extras":Landroid/os/Bundle;
    const-string v6, "key_album_id"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity;->mAlbumId:J

    .line 81
    const-string v6, "key_title"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity;->mTitle:Ljava/lang/String;

    .line 82
    const-string v6, "key_search_enabled"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity;->mSearchEnabled:Z

    goto :goto_0

    .line 90
    .end local v1    # "extras":Landroid/os/Bundle;
    .restart local v5    # "parallaxUiEnabled":Z
    :cond_3
    const v4, 0x7f04025f

    .restart local v4    # "layoutId":I
    goto :goto_1

    .line 102
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 103
    .local v0, "bar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 65
    const-string v0, "key_album_id"

    iget-wide v2, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity;->mAlbumId:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 66
    const-string v0, "key_title"

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v0, "key_search_enabled"

    iget-boolean v1, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity;->mSearchEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 68
    return-void
.end method

.method public setLaunchSearchEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity;->mSearchEnabled:Z

    .line 125
    return-void
.end method

.method public setParallaxHolder(ILcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Lcom/samsung/android/app/music/list/parallax/ParallaxHolder;)V
    .locals 1
    .param p1, "page"    # I
    .param p2, "recyclerView"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "parallaxHolder"    # Lcom/samsung/android/app/music/list/parallax/ParallaxHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 150
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity;->mParallaxScrollable:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollable;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AbsAlbumDetailsActivity;->mParallaxScrollable:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollable;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollable;->setParallaxHolder(ILcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Lcom/samsung/android/app/music/list/parallax/ParallaxHolder;)V

    .line 153
    :cond_0
    return-void
.end method
