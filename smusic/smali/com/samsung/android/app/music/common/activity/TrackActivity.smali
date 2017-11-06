.class public Lcom/samsung/android/app/music/common/activity/TrackActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;
.source "TrackActivity.java"

# interfaces
.implements Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;
.implements Lcom/samsung/android/app/music/network/NetworkManager;
.implements Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationController;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentContent:Ljava/lang/Object;

.field private mEmptyViewAnimationController:Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationControllerImpl;

.field private mKeyWord:Ljava/lang/String;

.field private mLaunchSearchEnabled:Z

.field private mListType:I

.field private mLocalTracksCountObservable:Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

.field private mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/samsung/android/app/music/common/activity/TrackActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;-><init>()V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mLaunchSearchEnabled:Z

    return-void
.end method

.method private adjustTopMargins()V
    .locals 4

    .prologue
    .line 288
    const v3, 0x7f120011

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/common/activity/TrackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 289
    .local v0, "listContainer":Landroid/view/View;
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/UiUtils;->getActionBarHeight(Landroid/app/Activity;)I

    move-result v3

    neg-int v2, v3

    .line 290
    .local v2, "topMargin":I
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isShowingStatusBar(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 291
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/UiUtils;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 294
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 295
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 296
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    return-void
.end method

.method private getSaveTitle()Ljava/lang/String;
    .locals 4

    .prologue
    .line 246
    iget v2, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mListType:I

    const v3, 0x100004

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mListType:I

    const v3, 0x100005

    if-ne v2, v3, :cond_1

    .line 247
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mKeyWord:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 248
    .local v0, "playlistId":J
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/util/ListUtils;->isDefaultPlayList(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 249
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/TrackActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 252
    .end local v0    # "playlistId":J
    :goto_0
    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateActionBarTitle(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "listType"    # I
    .param p2, "keyWord"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    .line 236
    const v2, 0x100004

    if-ne p1, v2, :cond_0

    .line 237
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 238
    .local v0, "playlistId":J
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/util/ListUtils;->isDefaultPlayList(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 239
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/util/ListUtils;->getListItemTextResId(J)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/common/activity/TrackActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 242
    .end local v0    # "playlistId":J
    :cond_0
    invoke-static {p0, p3}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->transUnknownString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/common/activity/TrackActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 243
    return-void
.end method


# virtual methods
.method public addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 318
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 321
    :cond_0
    return-void
.end method

.method public getLocalTracksCount()I
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mLocalTracksCountObservable:Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;->getLocalTracksCount()I

    move-result v0

    return v0
.end method

.method public getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/network/NetworkInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/music/network/NetworkInfo;-><init>()V

    goto :goto_0
.end method

.method public isEmptyViewAnimationEnabled()Z
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mEmptyViewAnimationController:Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationControllerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationControllerImpl;->isEmptyViewAnimationEnabled()Z

    move-result v0

    return v0
.end method

.method public isLaunchSearchEnabled()Z
    .locals 1

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mLaunchSearchEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/TrackActivity;->getLocalTracksCount()I

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
    .line 272
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/TrackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "SECH"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 273
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/common/activity/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 274
    .local v0, "i":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/activity/TrackActivity;->startActivity(Landroid/content/Intent;)V

    .line 275
    return-void
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 226
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 227
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/activity/TrackActivity;->setFullPlayerEnterEnabled(Z)V

    .line 228
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 220
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 221
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/activity/TrackActivity;->setFullPlayerEnterEnabled(Z)V

    .line 222
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x100002

    const/4 v6, 0x1

    .line 124
    if-eqz p1, :cond_0

    .line 125
    const-string v5, "extra_list_type"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mListType:I

    .line 126
    const-string v5, "extra_key_word"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mKeyWord:Ljava/lang/String;

    .line 127
    const-string v5, "extra_title"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mTitle:Ljava/lang/String;

    .line 128
    const-string v5, "launch_search_enable"

    .line 129
    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 128
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/common/activity/TrackActivity;->setLaunchSearchEnabled(Z)V

    .line 139
    :goto_0
    iget v5, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mListType:I

    if-ne v5, v7, :cond_1

    .line 140
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "TrackActivity does not support ListType.ALBUM_TRACK. Try to use AlbumDetailsActivity instead."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/TrackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 132
    .local v1, "data":Landroid/os/Bundle;
    const-string v5, "extra_list_type"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mListType:I

    .line 133
    const-string v5, "extra_key_word"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mKeyWord:Ljava/lang/String;

    .line 134
    const-string v5, "extra_title"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mTitle:Ljava/lang/String;

    .line 135
    const-string v5, "launch_search_enable"

    .line 136
    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 135
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/common/activity/TrackActivity;->setLaunchSearchEnabled(Z)V

    goto :goto_0

    .line 144
    .end local v1    # "data":Landroid/os/Bundle;
    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->onCreate(Landroid/os/Bundle;)V

    .line 146
    invoke-virtual {p0, p0}, Lcom/samsung/android/app/music/common/activity/TrackActivity;->setSearchLaunchable(Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;)V

    .line 148
    new-instance v5, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationControllerImpl;

    invoke-direct {v5}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationControllerImpl;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mEmptyViewAnimationController:Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationControllerImpl;

    .line 149
    iget-object v5, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mEmptyViewAnimationController:Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationControllerImpl;

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/common/activity/TrackActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 151
    new-instance v5, Lcom/samsung/android/app/music/common/activity/LocalTracksCountObservableImpl;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/music/common/activity/LocalTracksCountObservableImpl;-><init>(Landroid/app/Activity;)V

    iput-object v5, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mLocalTracksCountObservable:Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

    .line 152
    const v5, 0x7f04025f

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/common/activity/TrackActivity;->setContentView(I)V

    .line 154
    iget v5, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mListType:I

    if-ne v5, v7, :cond_2

    .line 155
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/TrackActivity;->adjustTopMargins()V

    .line 156
    const v5, 0x7f1200e7

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/common/activity/TrackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v5, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mKeyWord:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/samsung/android/app/music/common/activity/TrackActivity;->setStaticThumbnailId(J)V

    .line 159
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/TrackActivity;->initMiniPlayer()V

    .line 160
    iget v5, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mListType:I

    iget-object v6, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mKeyWord:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mTitle:Ljava/lang/String;

    invoke-direct {p0, v5, v6, v7}, Lcom/samsung/android/app/music/common/activity/TrackActivity;->updateActionBarTitle(ILjava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/TrackActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/TrackActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    .line 164
    .local v3, "fm":Landroid/app/FragmentManager;
    iget v5, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mListType:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, "tag":Ljava/lang/String;
    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 166
    .local v2, "fg":Landroid/app/Fragment;
    if-nez v2, :cond_3

    .line 167
    iget v5, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mListType:I

    iget-object v6, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mKeyWord:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mTitle:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/samsung/android/app/music/list/common/ListFragmentFactory;->newInstance(ILjava/lang/String;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 168
    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    const v6, 0x7f1200fd

    invoke-virtual {v5, v6, v2, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commit()I

    .line 170
    :cond_3
    iput-object v2, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mCurrentContent:Ljava/lang/Object;

    .line 171
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/TrackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 172
    .local v0, "context":Landroid/content/Context;
    sget-boolean v5, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_BARGE_IN:Z

    if-eqz v5, :cond_4

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isKnoxModeOn(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 173
    new-instance v5, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;

    invoke-direct {v5, v0}, Lcom/samsung/android/app/music/common/legacy/bargein/BargeInManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/common/activity/TrackActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 175
    :cond_4
    sget-boolean v5, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v5, :cond_5

    .line 176
    new-instance v5, Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-direct {v5, v0}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    .line 177
    iget-object v5, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/common/activity/TrackActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 179
    :cond_5
    return-void
.end method

.method public onEmptyViewAnimated()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mEmptyViewAnimationController:Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationControllerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationControllerImpl;->onEmptyViewAnimated()V

    .line 302
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 257
    .line 266
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x0

    .line 78
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 80
    if-eqz p1, :cond_0

    .line 81
    const-string v9, "extra_list_type"

    iget v10, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mListType:I

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mListType:I

    .line 82
    const-string v9, "extra_key_word"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mKeyWord:Ljava/lang/String;

    .line 83
    const-string v9, "extra_title"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mTitle:Ljava/lang/String;

    .line 86
    :cond_0
    sget-object v9, Lcom/samsung/android/app/music/common/activity/TrackActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onNewIntent : ListType - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mListType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mKeyWord : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mTitle : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const v9, 0x7f120011

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/music/common/activity/TrackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 90
    .local v4, "listContainer":Landroid/view/View;
    const v9, 0x7f1200e7

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/music/common/activity/TrackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 92
    .local v0, "divider":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 94
    .local v5, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget v9, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mListType:I

    const v10, 0x100002

    if-ne v9, v10, :cond_1

    .line 95
    iput v12, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 96
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 110
    :goto_0
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    invoke-virtual {p0, p0}, Lcom/samsung/android/app/music/common/activity/TrackActivity;->setSearchLaunchable(Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;)V

    .line 113
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/TrackActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 114
    .local v2, "fm":Landroid/app/FragmentManager;
    iget v9, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mListType:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 115
    .local v8, "tag":Ljava/lang/String;
    iget v9, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mListType:I

    iget-object v10, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mKeyWord:Ljava/lang/String;

    iget-object v11, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mTitle:Ljava/lang/String;

    invoke-static {v9, v10, v11}, Lcom/samsung/android/app/music/list/common/ListFragmentFactory;->newInstance(ILjava/lang/String;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 116
    .local v1, "fg":Landroid/app/Fragment;
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 117
    .local v3, "ft":Landroid/app/FragmentTransaction;
    const v9, 0x7f1200fd

    invoke-virtual {v3, v9, v1, v8}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/FragmentTransaction;->commit()I

    .line 119
    iput-object v1, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mCurrentContent:Ljava/lang/Object;

    .line 120
    return-void

    .line 98
    .end local v1    # "fg":Landroid/app/Fragment;
    .end local v2    # "fm":Landroid/app/FragmentManager;
    .end local v3    # "ft":Landroid/app/FragmentTransaction;
    .end local v8    # "tag":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget v9, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mListType:I

    const v10, 0x100004

    if-ne v9, v10, :cond_2

    .line 101
    iget-object v9, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mKeyWord:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 102
    .local v6, "playlistId":J
    invoke-static {v6, v7}, Lcom/samsung/android/app/music/common/util/ListUtils;->isDefaultPlayList(J)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 103
    invoke-static {v6, v7}, Lcom/samsung/android/app/music/common/util/ListUtils;->getListItemTextResId(J)I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/music/common/activity/TrackActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mTitle:Ljava/lang/String;

    .line 107
    .end local v6    # "playlistId":J
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/TrackActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mTitle:Ljava/lang/String;

    invoke-static {p0, v10}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->transUnknownString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/TrackActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    goto :goto_0
.end method

.method public onQuickConnectSelected()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 192
    iget-object v3, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mCurrentContent:Ljava/lang/Object;

    instance-of v3, v3, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    if-eqz v3, :cond_0

    .line 193
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mCurrentContent:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    .line 194
    .local v0, "checkableList":Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;
    invoke-interface {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->getCheckedItemIds(I)[J

    move-result-object v1

    .line 195
    .local v1, "ids":[J
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    .line 196
    invoke-static {p0, v1}, Lcom/samsung/android/app/music/common/util/LaunchUtils;->launchSconnect(Landroid/app/Activity;[J)V

    .line 200
    .end local v0    # "checkableList":Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;
    .end local v1    # "ids":[J
    :goto_0
    return v2

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->onQuickConnectSelected()Z

    move-result v2

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    const-string v0, "extra_list_type"

    iget v1, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mListType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 70
    const-string v0, "extra_key_word"

    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mKeyWord:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v0, "extra_title"

    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/TrackActivity;->getSaveTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v0, "launch_search_enable"

    iget-boolean v1, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mLaunchSearchEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 73
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 74
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/TrackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/PermissionCheckUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/TrackActivity;->finish()V

    .line 187
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->onStart()V

    .line 188
    return-void
.end method

.method public removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 326
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mNetworkManagerImpl:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;->removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 329
    :cond_0
    return-void
.end method

.method public setLaunchSearchEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 279
    iput-boolean p1, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mLaunchSearchEnabled:Z

    .line 280
    return-void
.end method

.method public setOnLocalTracksCountChangedListener(Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mLocalTracksCountObservable:Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;->setOnLocalTracksCountChangedListener(Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;)V

    .line 216
    return-void
.end method

.method public updateLocalTrackCount()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/TrackActivity;->mLocalTracksCountObservable:Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;->updateLocalTrackCount()V

    .line 211
    return-void
.end method
