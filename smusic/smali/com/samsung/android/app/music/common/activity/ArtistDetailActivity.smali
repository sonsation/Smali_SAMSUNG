.class public Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;
.source "ArtistDetailActivity.java"

# interfaces
.implements Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;
.implements Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$AlbumArtistPagerTitleQueryArgs;,
        Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$ArtistPagerTitleQueryArgs;,
        Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$ArtistDetailViewPagerAdapter;,
        Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$TabId;
    }
.end annotation


# static fields
.field private static final ARTIST_DETAIL_LOADER_ID:I = 0x3039

.field private static final KEY_TAB_ID:Ljava/lang/String; = "key_tab_id"


# instance fields
.field private mArtistDetailViewPager:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

.field private mGroupType:I

.field private mKeyWord:Ljava/lang/String;

.field private mLaunchSearchEnabled:Z

.field private mLocalTracksCountObservable:Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

.field private final mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private final mPagerCountCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mSlidingTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

.field private mTabIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;-><init>()V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mLaunchSearchEnabled:Z

    .line 283
    new-instance v0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$2;-><init>(Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 356
    new-instance v0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$3;-><init>(Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mPagerCountCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;)Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mSlidingTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mTabIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;

    .prologue
    .line 48
    iget v0, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mGroupType:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mKeyWord:Ljava/lang/String;

    return-object v0
.end method

.method private setSlidingTabEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 406
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mSlidingTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mArtistDetailViewPager:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mSlidingTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setEnabled(Z)V

    .line 408
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mArtistDetailViewPager:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setSwipeEnabled(Z)V

    .line 410
    :cond_0
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "keyWord"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->startActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    .line 77
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "keyWord"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .prologue
    .line 80
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0, p3}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->startActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 81
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;IZI)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "keyWord"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "groupType"    # I
    .param p4, "searchEnabled"    # Z
    .param p5, "flags"    # I

    .prologue
    .line 101
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {v0, p5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 103
    const-string v1, "extra_key_word"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v1, "extra_title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v1, "extra_group_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    const-string v1, "key_search_enabled"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 108
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "keyWord"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "searchEnabled"    # Z

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->startActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 86
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "keyWord"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "searchEnabled"    # Z
    .param p4, "flags"    # I

    .prologue
    .line 90
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {v0, p4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 92
    const-string v1, "extra_key_word"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string v1, "extra_title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v1, "extra_group_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    const-string v1, "key_search_enabled"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 97
    return-void
.end method


# virtual methods
.method public getLocalTracksCount()I
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mLocalTracksCountObservable:Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;->getLocalTracksCount()I

    move-result v0

    return v0
.end method

.method public isLaunchSearchEnabled()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mLaunchSearchEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->getLocalTracksCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchSearch()V
    .locals 3

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "SECH"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 200
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/common/activity/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 202
    return-void
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v0, 0x1

    .line 192
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 193
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->setFullPlayerEnterEnabled(Z)V

    .line 194
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->setSlidingTabEnabled(Z)V

    .line 195
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v0, 0x0

    .line 185
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 186
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->setFullPlayerEnterEnabled(Z)V

    .line 187
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->setSlidingTabEnabled(Z)V

    .line 188
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v9, 0x0

    .line 122
    if-eqz p1, :cond_1

    .line 123
    const-string v1, "extra_key_word"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mKeyWord:Ljava/lang/String;

    .line 124
    const-string v1, "extra_title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mTitle:Ljava/lang/String;

    .line 125
    const-string v1, "extra_group_type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mGroupType:I

    .line 126
    const-string v1, "key_tab_id"

    invoke-virtual {p1, v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 127
    .local v8, "mTabId":I
    const-string v1, "key_search_enabled"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->setLaunchSearchEnabled(Z)V

    .line 136
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->onCreate(Landroid/os/Bundle;)V

    .line 138
    const v1, 0x7f040026

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->setContentView(I)V

    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->initMiniPlayer()V

    .line 140
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mTitle:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->transUnknownString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 142
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mTabIds:Ljava/util/ArrayList;

    .line 143
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 144
    .local v6, "config":Landroid/content/res/Configuration;
    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 145
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mTabIds:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 148
    :cond_0
    const v1, 0x7f120055

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    iput-object v1, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mArtistDetailViewPager:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    .line 149
    new-instance v0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$ArtistDetailViewPagerAdapter;

    .line 150
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mKeyWord:Ljava/lang/String;

    iget v5, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mGroupType:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$ArtistDetailViewPagerAdapter;-><init>(Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;Landroid/content/Context;Landroid/app/FragmentManager;Ljava/lang/String;I)V

    .line 152
    .local v0, "artistDetailViewPagerAdapter":Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$ArtistDetailViewPagerAdapter;
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mArtistDetailViewPager:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 153
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mArtistDetailViewPager:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 155
    const v1, 0x7f120049

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    iput-object v1, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mSlidingTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    .line 156
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mSlidingTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-virtual {v1, v9}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setTabMode(I)V

    .line 157
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mSlidingTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mArtistDetailViewPager:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 158
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mSlidingTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-virtual {v1, v9}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setLayoutDirection(I)V

    .line 159
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mSlidingTabLayout:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mTabIds:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2, v9}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->setTabSelected(IZ)V

    .line 161
    new-instance v1, Lcom/samsung/android/app/music/common/activity/LocalTracksCountObservableImpl;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/activity/LocalTracksCountObservableImpl;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mLocalTracksCountObservable:Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/16 v2, 0x3039

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mPagerCountCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 165
    new-instance v1, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$1;-><init>(Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->addPrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V

    .line 171
    return-void

    .line 129
    .end local v0    # "artistDetailViewPagerAdapter":Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity$ArtistDetailViewPagerAdapter;
    .end local v6    # "config":Landroid/content/res/Configuration;
    .end local v8    # "mTabId":I
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 130
    .local v7, "data":Landroid/os/Bundle;
    const-string v1, "extra_key_word"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mKeyWord:Ljava/lang/String;

    .line 131
    const-string v1, "extra_title"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mTitle:Ljava/lang/String;

    .line 132
    const-string v1, "extra_group_type"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mGroupType:I

    .line 133
    const/4 v8, 0x0

    .line 134
    .restart local v8    # "mTabId":I
    const-string v1, "key_search_enabled"

    invoke-virtual {v7, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->setLaunchSearchEnabled(Z)V

    goto/16 :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 175
    const-string v0, "extra_key_word"

    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mKeyWord:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v0, "extra_title"

    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v0, "extra_group_type"

    iget v1, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mGroupType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 178
    const-string v0, "key_search_enabled"

    iget-boolean v1, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mLaunchSearchEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 179
    const-string v1, "key_tab_id"

    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mTabIds:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mArtistDetailViewPager:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 180
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 181
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->onStart()V

    .line 113
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/PermissionCheckUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->finish()V

    .line 117
    :cond_0
    return-void
.end method

.method public setLaunchSearchEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mLaunchSearchEnabled:Z

    .line 207
    return-void
.end method

.method public setOnLocalTracksCountChangedListener(Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mLocalTracksCountObservable:Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;->setOnLocalTracksCountChangedListener(Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;)V

    .line 227
    return-void
.end method

.method public updateLocalTrackCount()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/ArtistDetailActivity;->mLocalTracksCountObservable:Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;->updateLocalTrackCount()V

    .line 222
    return-void
.end method
