.class public Lcom/samsung/android/app/music/list/local/AllTrackFragment;
.super Lcom/samsung/android/app/music/list/local/PlayableUiFragment;
.source "AllTrackFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/AllTrackFragment$AllTrackFilterableImpl;,
        Lcom/samsung/android/app/music/list/local/AllTrackFragment$AllTrackCardViewableImpl;,
        Lcom/samsung/android/app/music/list/local/AllTrackFragment$ActionModeOptionsMenu;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/list/local/PlayableUiFragment",
        "<",
        "Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private mListHeaderManager:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

.field private final mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;-><init>()V

    .line 244
    new-instance v0, Lcom/samsung/android/app/music/list/local/AllTrackFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/AllTrackFragment$1;-><init>(Lcom/samsung/android/app/music/list/local/AllTrackFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/AllTrackFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    return-void
.end method


# virtual methods
.method public getKeyword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListType()I
    .locals 1

    .prologue
    .line 213
    const v0, 0x110001

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 183
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 187
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onAttach(Landroid/app/Activity;)V

    .line 86
    const-string v0, "201"

    const-string v1, "202"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/list/local/AllTrackFragment;->setScreenId(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onCreate(Landroid/os/Bundle;)V

    .line 101
    return-void
.end method

.method protected onCreateAdapter()Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 223
    new-instance v1, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;-><init>(Landroid/app/Fragment;)V

    const-string/jumbo v2, "title"

    .line 224
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;

    const-string v2, "artist"

    .line 225
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;

    const-string v2, "album_id"

    .line 226
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;

    const-string v2, "_id"

    .line 227
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;->setAudioIdCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;->setPrivateIconEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;

    .line 228
    .local v0, "builder":Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v1, :cond_0

    .line 229
    invoke-static {v3}, Lcom/samsung/android/app/music/provider/DrmType;->getDisplayName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;->addDrmTag(ILjava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    .line 231
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;->build()Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AllTrackFragment;->onCreateAdapter()Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;

    move-result-object v0

    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 282
    new-instance v0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    const v1, 0x7f130008

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;-><init>(Landroid/app/Fragment;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/AllTrackFragment;->mContextMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 283
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AllTrackFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    check-cast v0, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/AllTrackFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;->getText1(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 284
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 285
    return-void
.end method

.method protected onCreateLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 236
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AllTrackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 262
    new-instance v0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    const v1, 0x7f130016

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;-><init>(Landroid/app/Fragment;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/AllTrackFragment;->mMusicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 263
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 267
    return-void
.end method

.method protected onCreateQueryArgs(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 241
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/AllTrackFragment;->mListHeaderManager:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->getFilterOption()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;-><init>(I)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 109
    const v1, 0x7f0401f4

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 113
    .local v0, "v":Landroid/view/View;
    return-object v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 274
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 278
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 205
    invoke-super {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onResume()V

    .line 209
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 194
    invoke-super {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onStart()V

    .line 198
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 121
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AllTrackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 125
    .local v0, "a":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AllTrackFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v3

    .line 126
    .local v3, "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    if-eqz v3, :cond_0

    .line 127
    sget-boolean v4, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v4, :cond_3

    const-string v4, "Music"

    :goto_0
    const/4 v5, 0x2

    new-array v5, v5, [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    new-instance v6, Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor;

    invoke-direct {v6, v3, v0, p0}, Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable;)V

    aput-object v6, v5, v7

    new-instance v6, Lcom/samsung/android/app/music/bixby/executor/local/FinishActionModeExecutor;

    invoke-direct {v6, p0, p0}, Lcom/samsung/android/app/music/bixby/executor/local/FinishActionModeExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;)V

    aput-object v6, v5, v8

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V

    .line 133
    :cond_0
    sget-boolean v4, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v4, :cond_1

    .line 134
    new-instance v4, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/AllTrackFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 137
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/AllTrackFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/AllTrackFragment;->setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V

    .line 139
    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AllTrackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0a018c

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/AllTrackFragment;->setSelectAll(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;)V

    .line 140
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/AllTrackFragment;->setChoiceMode(I)V

    .line 141
    new-instance v4, Lcom/samsung/android/app/music/list/local/AllTrackFragment$ActionModeOptionsMenu;

    invoke-direct {v4, p0, v9}, Lcom/samsung/android/app/music/list/local/AllTrackFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/list/local/AllTrackFragment;Lcom/samsung/android/app/music/list/local/AllTrackFragment$1;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/AllTrackFragment;->setActionModeMenu(Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;)V

    .line 143
    new-instance v4, Lcom/samsung/android/app/music/list/ListDeleteableImpl;

    const v5, 0x7f0c0011

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/app/music/list/ListDeleteableImpl;-><init>(Landroid/app/Fragment;I)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/AllTrackFragment;->setDeleteable(Lcom/samsung/android/app/musiclibrary/ui/Deleteable;)V

    .line 144
    new-instance v4, Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/AllTrackFragment;->setSelectedItemPlayable(Lcom/samsung/android/app/musiclibrary/ui/list/SelectedItemPlayable;)V

    .line 145
    new-instance v4, Lcom/samsung/android/app/music/list/ListShareableImpl;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/list/ListShareableImpl;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/AllTrackFragment;->setShareable(Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;)V

    .line 148
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isLandscape(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isSmallScreenUiEnabled(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 149
    new-instance v4, Lcom/samsung/android/app/music/list/local/AllTrackFragment$AllTrackCardViewableImpl;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/list/local/AllTrackFragment$AllTrackCardViewableImpl;-><init>(Lcom/samsung/android/app/music/list/local/AllTrackFragment;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/AllTrackFragment;->setCardViewable(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;)V

    .line 152
    :cond_2
    new-instance v1, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    .line 153
    .local v1, "builder":Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;
    new-instance v4, Lcom/samsung/android/app/music/list/local/AllTrackFragment$AllTrackFilterableImpl;

    invoke-direct {v4, p0, v9}, Lcom/samsung/android/app/music/list/local/AllTrackFragment$AllTrackFilterableImpl;-><init>(Lcom/samsung/android/app/music/list/local/AllTrackFragment;Lcom/samsung/android/app/music/list/local/AllTrackFragment$1;)V

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->setFilterable(Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .line 154
    invoke-virtual {v1, v7}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->addButton(I)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .line 155
    invoke-virtual {v1, v8}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->addButton(I)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .line 156
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->build()Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/music/list/local/AllTrackFragment;->mListHeaderManager:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    .line 157
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AllTrackFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;

    const/4 v5, -0x5

    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/AllTrackFragment;->mListHeaderManager:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;->addHeaderView(ILandroid/view/View;)V

    .line 159
    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;

    const v5, 0x7f0a013a

    const v6, 0x7f0a0132

    invoke-direct {v4, p0, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;-><init>(Landroid/app/Fragment;II)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/AllTrackFragment;->setEmptyView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 162
    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;-><init>(Landroid/app/Fragment;)V

    const v5, 0x7f020146

    .line 163
    invoke-virtual {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setDivider(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v4

    const v5, 0x7f0d0169

    .line 164
    invoke-virtual {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetLeft(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v4

    const v5, 0x7f0d04e9

    .line 165
    invoke-virtual {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetRight(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    move-result-object v2

    .line 166
    .local v2, "dividerItemDecoration":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AllTrackFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;)V

    .line 167
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/list/local/AllTrackFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 169
    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/list/local/AllTrackFragment;->setListShown(Z)V

    .line 171
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AllTrackFragment;->getListType()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/AllTrackFragment;->initListLoader(I)V

    .line 176
    return-void

    .line 127
    .end local v1    # "builder":Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;
    .end local v2    # "dividerItemDecoration":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    :cond_3
    const-string v4, "GlobalMusic"

    goto/16 :goto_0
.end method
