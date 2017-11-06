.class public Lcom/samsung/android/app/music/list/local/AlbumFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "AlbumFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumFilterableImpl;,
        Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumCheckableList;,
        Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumCardViewableImpl;,
        Lcom/samsung/android/app/music/list/local/AlbumFragment$ActionModeOptionsMenu;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment",
        "<",
        "Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final SPAN_COUNT_LANDSCAPE_PHONE:I = 0x5

.field private static final SPAN_COUNT_LANDSCAPE_SMALL_SCREEN_UI:I = 0x3

.field private static final SPAN_COUNT_LANDSCAPE_TABLET:I = 0x5

.field private static final SPAN_COUNT_PORT_PHONE:I = 0x3

.field private static final SPAN_COUNT_PORT_SMALL_SCREEN_UI:I = 0x2

.field private static final SPAN_COUNT_PORT_TABLET:I = 0x4


# instance fields
.field private mIsRunningActivityTransition:Z

.field private mListHeaderManager:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

.field private final mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    .line 329
    new-instance v0, Lcom/samsung/android/app/music/list/local/AlbumFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/AlbumFragment$2;-><init>(Lcom/samsung/android/app/music/list/local/AlbumFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/list/local/AlbumFragment;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/AlbumFragment;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->startTrackActivityWithTransitionFeature(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startTrackActivityWithTransitionFeature(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "album"    # Landroid/view/View;
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 351
    const-string v2, "UiList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " startTrackActivityWithTransitionFeature() album: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | keyword: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | title: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 355
    .local v0, "activity":Landroid/app/Activity;
    sget-boolean v2, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->ACTIVITY_ALBUM_TRACK_TRANSITION_ENABLED:Z

    if-eqz v2, :cond_1

    .line 356
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/TransitionUtils;->isActivityTransitionEnabled(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 357
    iget-boolean v2, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment;->mIsRunningActivityTransition:Z

    if-eqz v2, :cond_0

    .line 368
    :goto_0
    return-void

    .line 360
    :cond_0
    iput-boolean v5, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment;->mIsRunningActivityTransition:Z

    .line 361
    const-string/jumbo v2, "transition_name_album_details"

    new-array v3, v5, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 362
    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/music/common/util/TransitionUtils;->getTransitionBundle(Landroid/app/Activity;Ljava/lang/String;[Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v1

    .line 364
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0, v2, v3, p3, v1}, Lcom/samsung/android/app/music/list/local/AlbumDetailsActivity;->startActivity(Landroid/app/Activity;JLjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 366
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_1
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, p3, v4}, Lcom/samsung/android/app/music/list/local/AlbumDetailsActivity;->startActivity(Landroid/app/Activity;JLjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method public getKeyword()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 296
    const-string v0, "_id"

    return-object v0
.end method

.method public getListType()I
    .locals 1

    .prologue
    .line 290
    const v0, 0x10002

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 210
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 214
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onAttach(Landroid/app/Activity;)V

    .line 101
    const-string v0, "203"

    const-string v1, "204"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->setScreenId(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 116
    return-void
.end method

.method protected bridge synthetic onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;
    .locals 2

    .prologue
    .line 241
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;-><init>(Landroid/app/Fragment;)V

    const-string v1, "album"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;

    const-string v1, "artist"

    .line 242
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;

    const-string v1, "numsongs"

    .line 243
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;->setText3Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;

    const-string v1, "_id"

    .line 244
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;->setKeywordCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;

    const/4 v1, 0x0

    .line 245
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;->setLargerFontSizeEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;

    .line 246
    invoke-static {}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f04003b

    .line 245
    :goto_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;->setLayout(I)Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;

    .line 247
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;

    move-result-object v0

    return-object v0

    .line 246
    :cond_0
    const v1, 0x7f0401b3

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 324
    new-instance v0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    const v1, 0x7f130006

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;-><init>(Landroid/app/Fragment;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment;->mContextMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 325
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;->getText1(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 326
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 327
    return-void
.end method

.method protected onCreateLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .locals 7

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x3

    .line 252
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 253
    .local v0, "a":Landroid/app/Activity;
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isSmallScreenUiEnabled(Landroid/app/Activity;)Z

    move-result v3

    .line 254
    .local v3, "smallScreenUiEnabled":Z
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isPortrait(Landroid/app/Activity;)Z

    move-result v2

    .line 256
    .local v2, "isPortrait":Z
    if-eqz v3, :cond_1

    .line 257
    if-eqz v2, :cond_0

    const/4 v4, 0x2

    .line 265
    .local v4, "spanCount":I
    :cond_0
    :goto_0
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/widget/GridLayoutManager;

    .line 266
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5, v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 267
    .local v1, "gridLayoutManager":Lcom/samsung/android/app/musiclibrary/ui/widget/GridLayoutManager;
    new-instance v5, Lcom/samsung/android/app/music/list/local/AlbumFragment$1;

    invoke-direct {v5, p0, v1}, Lcom/samsung/android/app/music/list/local/AlbumFragment$1;-><init>(Lcom/samsung/android/app/music/list/local/AlbumFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/GridLayoutManager;)V

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/GridLayoutManager;->setSpanSizeLookup(Lcom/samsung/android/support/sesl/component/widget/SeslGridLayoutManager$SpanSizeLookup;)V

    .line 280
    return-object v1

    .line 259
    .end local v1    # "gridLayoutManager":Lcom/samsung/android/app/musiclibrary/ui/widget/GridLayoutManager;
    .end local v4    # "spanCount":I
    :cond_1
    iget v6, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment;->mUiType:I

    if-nez v6, :cond_3

    .line 260
    if-eqz v2, :cond_2

    .restart local v4    # "spanCount":I
    :goto_1
    goto :goto_0

    .end local v4    # "spanCount":I
    :cond_2
    move v4, v5

    goto :goto_1

    .line 262
    :cond_3
    if-eqz v2, :cond_4

    const/4 v4, 0x4

    .restart local v4    # "spanCount":I
    :goto_2
    goto :goto_0

    .end local v4    # "spanCount":I
    :cond_4
    move v4, v5

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 304
    new-instance v0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    const v1, 0x7f130015

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;-><init>(Landroid/app/Fragment;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment;->mMusicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 305
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 309
    return-void
.end method

.method protected onCreateQueryArgs(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 285
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumQueryArgs;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment;->mListHeaderManager:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->getFilterOption()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumQueryArgs;-><init>(I)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 124
    const v1, 0x7f0401f4

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 128
    .local v0, "v":Landroid/view/View;
    return-object v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 316
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 320
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 232
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onResume()V

    .line 233
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment;->mIsRunningActivityTransition:Z

    .line 237
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 221
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onStart()V

    .line 225
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 14
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 136
    invoke-super/range {p0 .. p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 140
    .local v0, "a":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v3

    .line 141
    .local v3, "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    if-eqz v3, :cond_0

    .line 142
    sget-boolean v10, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v10, :cond_5

    const-string v10, "Music"

    :goto_0
    const/4 v11, 0x2

    new-array v11, v11, [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    const/4 v12, 0x0

    new-instance v13, Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor;

    invoke-direct {v13, v3, v0, p0}, Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable;)V

    aput-object v13, v11, v12

    const/4 v12, 0x1

    new-instance v13, Lcom/samsung/android/app/music/bixby/executor/local/FinishActionModeExecutor;

    invoke-direct {v13, p0, p0}, Lcom/samsung/android/app/music/bixby/executor/local/FinishActionModeExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;)V

    aput-object v13, v11, v12

    invoke-interface {v3, v10, v11}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V

    .line 148
    :cond_0
    sget-boolean v10, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v10, :cond_1

    .line 149
    new-instance v10, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;

    invoke-direct {v10, p0}, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {p0, v10}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 152
    :cond_1
    iget-object v10, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    invoke-virtual {p0, v10}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V

    .line 153
    new-instance v10, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v12, 0x7f0a0181

    invoke-direct {v10, v11, v12}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {p0, v10}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->setSelectAll(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;)V

    .line 154
    const/4 v10, 0x3

    invoke-virtual {p0, v10}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->setChoiceMode(I)V

    .line 155
    new-instance v10, Lcom/samsung/android/app/music/list/local/AlbumFragment$ActionModeOptionsMenu;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/samsung/android/app/music/list/local/AlbumFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/list/local/AlbumFragment;Lcom/samsung/android/app/music/list/local/AlbumFragment$1;)V

    invoke-virtual {p0, v10}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->setActionModeMenu(Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;)V

    .line 157
    new-instance v10, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumCheckableList;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v11

    invoke-direct {v10, p0, v11}, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumCheckableList;-><init>(Lcom/samsung/android/app/music/list/local/AlbumFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    invoke-virtual {p0, v10}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->setCheckableList(Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;)V

    .line 158
    new-instance v10, Lcom/samsung/android/app/music/list/ListDeleteableImpl;

    const v11, 0x7f0c0009

    invoke-direct {v10, p0, v11}, Lcom/samsung/android/app/music/list/ListDeleteableImpl;-><init>(Landroid/app/Fragment;I)V

    invoke-virtual {p0, v10}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->setDeleteable(Lcom/samsung/android/app/musiclibrary/ui/Deleteable;)V

    .line 159
    new-instance v10, Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;

    invoke-direct {v10, p0}, Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {p0, v10}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->setSelectedItemPlayable(Lcom/samsung/android/app/musiclibrary/ui/list/SelectedItemPlayable;)V

    .line 160
    new-instance v10, Lcom/samsung/android/app/music/list/ListShareableImpl;

    invoke-direct {v10, p0}, Lcom/samsung/android/app/music/list/ListShareableImpl;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {p0, v10}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->setShareable(Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;)V

    .line 162
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 163
    .local v7, "res":Landroid/content/res/Resources;
    const v10, 0x7f0d0156

    .line 164
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 165
    .local v5, "listPaddingHorizontal":I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v6

    .line 166
    .local v6, "recyclerView":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6, v5, v10, v5, v11}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setPaddingRelative(IIII)V

    .line 167
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setClipToPadding(Z)V

    .line 169
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isPortrait(Landroid/app/Activity;)Z

    move-result v4

    .line 170
    .local v4, "isPortrait":Z
    iget v10, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment;->mUiType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    if-nez v4, :cond_2

    .line 171
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d02c9

    .line 172
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 173
    .local v9, "space":I
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p1, v9, v10, v9, v11}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 176
    .end local v9    # "space":I
    :cond_2
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isSmallScreenUiEnabled(Landroid/app/Activity;)Z

    move-result v8

    .line 178
    .local v8, "smallScreenUiEnabled":Z
    if-eqz v4, :cond_3

    if-nez v8, :cond_3

    .line 179
    new-instance v10, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumCardViewableImpl;

    invoke-direct {v10, p0}, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumCardViewableImpl;-><init>(Lcom/samsung/android/app/music/list/local/AlbumFragment;)V

    invoke-virtual {p0, v10}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->setCardViewable(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;)V

    .line 182
    :cond_3
    if-eqz v8, :cond_4

    .line 183
    const v10, 0x7f0d01be

    invoke-virtual {p0, v10}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->setListSpaceTop(I)Landroid/view/View;

    .line 186
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;

    .line 187
    .local v1, "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;
    new-instance v2, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    .line 188
    .local v2, "builder":Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;
    new-instance v10, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumFilterableImpl;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/samsung/android/app/music/list/local/AlbumFragment$AlbumFilterableImpl;-><init>(Lcom/samsung/android/app/music/list/local/AlbumFragment;Lcom/samsung/android/app/music/list/local/AlbumFragment$1;)V

    invoke-virtual {v2, v10}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->setFilterable(Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .line 189
    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->build()Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment;->mListHeaderManager:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    .line 190
    const/4 v10, -0x5

    iget-object v11, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment;->mListHeaderManager:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-virtual {v11}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->getView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;->addHeaderView(ILandroid/view/View;)V

    .line 191
    iget-object v10, p0, Lcom/samsung/android/app/music/list/local/AlbumFragment;->mListHeaderManager:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-virtual {v10}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->getView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;->addViewIgnoreParentPadding(Landroid/view/View;)V

    .line 193
    const v10, 0x7f040039

    const v11, 0x7f0a0128

    invoke-virtual {p0, v10, v11}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->setEmptyView(II)V

    .line 194
    new-instance v10, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;

    const v11, 0x7f0a0128

    const v12, 0x7f0a0132

    invoke-direct {v10, p0, v11, v12}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;-><init>(Landroid/app/Fragment;II)V

    invoke-virtual {p0, v10}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->setEmptyView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 197
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->setListShown(Z)V

    .line 199
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->getListType()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/samsung/android/app/music/list/local/AlbumFragment;->initListLoader(I)V

    .line 203
    return-void

    .line 142
    .end local v1    # "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/adapter/AlbumAdapter;
    .end local v2    # "builder":Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;
    .end local v4    # "isPortrait":Z
    .end local v5    # "listPaddingHorizontal":I
    .end local v6    # "recyclerView":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    .end local v7    # "res":Landroid/content/res/Resources;
    .end local v8    # "smallScreenUiEnabled":Z
    :cond_5
    const-string v10, "GlobalMusic"

    goto/16 :goto_0
.end method
