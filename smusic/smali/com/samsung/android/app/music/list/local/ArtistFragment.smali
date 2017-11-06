.class public Lcom/samsung/android/app/music/list/local/ArtistFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "ArtistFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistFilterableImpl;,
        Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistCheckableList;,
        Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistCardViewableImpl;,
        Lcom/samsung/android/app/music/list/local/ArtistFragment$ActionModeOptionsMenu;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment",
        "<",
        "Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private mGroupType:I

.field private mListHeaderManager:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

.field private final mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    .line 210
    new-instance v0, Lcom/samsung/android/app/music/list/local/ArtistFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/ArtistFragment$1;-><init>(Lcom/samsung/android/app/music/list/local/ArtistFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/list/local/ArtistFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/ArtistFragment;

    .prologue
    .line 75
    iget v0, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment;->mGroupType:I

    return v0
.end method


# virtual methods
.method public getKeyword()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 185
    const-string v0, "_id"

    return-object v0
.end method

.method public getListType()I
    .locals 1

    .prologue
    .line 179
    const v0, 0x10003

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onAttach(Landroid/app/Activity;)V

    .line 84
    const-string v0, "207"

    const-string v1, "208"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->setScreenId(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method protected bridge synthetic onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;
    .locals 3

    .prologue
    .line 149
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter$Builder;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter$Builder;-><init>(Landroid/app/Fragment;)V

    const-string v2, "artist"

    .line 150
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter$Builder;

    const-string v2, "number_of_albums"

    .line 151
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter$Builder;

    const-string v2, "number_of_tracks"

    .line 152
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter$Builder;->setText3Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter$Builder;

    const-string v2, "album_id"

    .line 153
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter$Builder;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;

    move-result-object v0

    .line 154
    .local v0, "artistAdapter":Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;
    iget v1, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment;->mGroupType:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;->setGroupType(I)V

    .line 155
    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 196
    new-instance v0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    const v1, 0x7f130006

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;-><init>(Landroid/app/Fragment;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment;->mContextMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 197
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;->getText1(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 198
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 199
    return-void
.end method

.method protected onCreateLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 160
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 190
    new-instance v0, Lcom/samsung/android/app/music/common/menu/ArtistMenu;

    const v1, 0x7f130017

    iget v2, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment;->mGroupType:I

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/app/music/common/menu/ArtistMenu;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;II)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment;->mMusicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 191
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 192
    return-void
.end method

.method protected onCreateQueryArgs(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x1

    .line 165
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "music_player_pref"

    const/4 v3, 0x0

    .line 166
    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 167
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "group_by_artist"

    .line 168
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment;->mGroupType:I

    .line 169
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;

    iget v2, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment;->mGroupType:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;->setGroupType(I)V

    .line 170
    iget v1, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment;->mGroupType:I

    if-ne v1, v4, :cond_0

    .line 171
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/query/ArtistQueryArgs;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment;->mListHeaderManager:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->getFilterOption()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/query/ArtistQueryArgs;-><init>(I)V

    .line 173
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumArtistQueryArgs;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment;->mListHeaderManager:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->getFilterOption()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumArtistQueryArgs;-><init>(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    const v0, 0x7f0401f4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 95
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 99
    .local v0, "a":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v3

    .line 100
    .local v3, "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    if-eqz v3, :cond_0

    .line 101
    sget-boolean v4, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v4, :cond_3

    const-string v4, "Music"

    :goto_0
    const/4 v5, 0x2

    new-array v5, v5, [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    new-instance v6, Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor;

    invoke-direct {v6, v3, v0, p0}, Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable;)V

    aput-object v6, v5, v8

    const/4 v6, 0x1

    new-instance v7, Lcom/samsung/android/app/music/bixby/executor/local/FinishActionModeExecutor;

    invoke-direct {v7, p0, p0}, Lcom/samsung/android/app/music/bixby/executor/local/FinishActionModeExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;)V

    aput-object v7, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V

    .line 107
    :cond_0
    sget-boolean v4, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v4, :cond_1

    .line 108
    new-instance v4, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 111
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V

    .line 113
    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0a0182

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->setSelectAll(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;)V

    .line 114
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->setChoiceMode(I)V

    .line 115
    new-instance v4, Lcom/samsung/android/app/music/list/local/ArtistFragment$ActionModeOptionsMenu;

    invoke-direct {v4, p0, v9}, Lcom/samsung/android/app/music/list/local/ArtistFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/list/local/ArtistFragment;Lcom/samsung/android/app/music/list/local/ArtistFragment$1;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->setActionModeMenu(Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;)V

    .line 117
    new-instance v4, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistCheckableList;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistCheckableList;-><init>(Lcom/samsung/android/app/music/list/local/ArtistFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->setCheckableList(Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;)V

    .line 118
    new-instance v4, Lcom/samsung/android/app/music/list/ListDeleteableImpl;

    const v5, 0x7f0c000a

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/app/music/list/ListDeleteableImpl;-><init>(Landroid/app/Fragment;I)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->setDeleteable(Lcom/samsung/android/app/musiclibrary/ui/Deleteable;)V

    .line 119
    new-instance v4, Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->setSelectedItemPlayable(Lcom/samsung/android/app/musiclibrary/ui/list/SelectedItemPlayable;)V

    .line 120
    new-instance v4, Lcom/samsung/android/app/music/list/ListShareableImpl;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/list/ListShareableImpl;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->setShareable(Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;)V

    .line 123
    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;-><init>(Landroid/app/Fragment;)V

    const v5, 0x7f020146

    .line 124
    invoke-virtual {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setDivider(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v4

    const v5, 0x7f0d0169

    .line 125
    invoke-virtual {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetLeft(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v4

    const v5, 0x7f0d04e9

    .line 126
    invoke-virtual {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetRight(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    move-result-object v2

    .line 127
    .local v2, "dividerItemDecoration":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;)V

    .line 128
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 131
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isPortrait(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isSmallScreenUiEnabled(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 132
    new-instance v4, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistCardViewableImpl;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistCardViewableImpl;-><init>(Lcom/samsung/android/app/music/list/local/ArtistFragment;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->setCardViewable(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;)V

    .line 135
    :cond_2
    new-instance v1, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    .line 136
    .local v1, "builder":Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;
    new-instance v4, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistFilterableImpl;

    invoke-direct {v4, p0, v9}, Lcom/samsung/android/app/music/list/local/ArtistFragment$ArtistFilterableImpl;-><init>(Lcom/samsung/android/app/music/list/local/ArtistFragment;Lcom/samsung/android/app/music/list/local/ArtistFragment$1;)V

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->setFilterable(Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .line 137
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->build()Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment;->mListHeaderManager:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;

    const/4 v5, -0x5

    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/ArtistFragment;->mListHeaderManager:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/ArtistAdapter;->addHeaderView(ILandroid/view/View;)V

    .line 140
    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;

    const v5, 0x7f0a0129

    const v6, 0x7f0a0132

    invoke-direct {v4, p0, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;-><init>(Landroid/app/Fragment;II)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->setEmptyView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 143
    invoke-virtual {p0, v8}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->setListShown(Z)V

    .line 144
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->getListType()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/ArtistFragment;->initListLoader(I)V

    .line 145
    return-void

    .line 101
    .end local v1    # "builder":Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;
    .end local v2    # "dividerItemDecoration":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    :cond_3
    const-string v4, "GlobalMusic"

    goto/16 :goto_0
.end method
