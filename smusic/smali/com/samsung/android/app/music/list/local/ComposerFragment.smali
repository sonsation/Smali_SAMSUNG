.class public Lcom/samsung/android/app/music/list/local/ComposerFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "ComposerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerFilterableImpl;,
        Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerCheckableList;,
        Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerCardViewableImpl;,
        Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter;,
        Lcom/samsung/android/app/music/list/local/ComposerFragment$ActionModeOptionsMenu;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment",
        "<",
        "Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter;",
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
    .line 78
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    .line 200
    new-instance v0, Lcom/samsung/android/app/music/list/local/ComposerFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/ComposerFragment$1;-><init>(Lcom/samsung/android/app/music/list/local/ComposerFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    return-void
.end method


# virtual methods
.method public getKeyword()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 175
    const-string v0, "composer"

    return-object v0
.end method

.method public getListType()I
    .locals 1

    .prologue
    .line 169
    const v0, 0x10008

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onAttach(Landroid/app/Activity;)V

    .line 85
    const-string v0, "221"

    const-string v1, "222"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->setScreenId(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method protected onCreateAdapter()Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter;
    .locals 2

    .prologue
    .line 150
    new-instance v0, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter$Builder;-><init>(Landroid/app/Fragment;)V

    const-string v1, "composer"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter$Builder;

    const-string v1, "number_of_tracks"

    .line 151
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter$Builder;

    const-string/jumbo v1, "total_duration"

    .line 152
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter$Builder;->setText3Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter$Builder;

    const-string v1, "album_id"

    .line 153
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter$Builder;->setKeywordCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter$Builder;

    .line 154
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter$Builder;->build()Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->onCreateAdapter()Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 186
    new-instance v0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    const v1, 0x7f130006

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;-><init>(Landroid/app/Fragment;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment;->mContextMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    check-cast v0, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter;->getText1(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 188
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 189
    return-void
.end method

.method protected onCreateLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 159
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->getActivity()Landroid/app/Activity;

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
    .line 180
    new-instance v0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    const v1, 0x7f130015

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;-><init>(Landroid/app/Fragment;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment;->mMusicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 181
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 182
    return-void
.end method

.method protected onCreateQueryArgs(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 164
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerQueryArgs;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment;->mListHeaderManager:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->getFilterOption()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/ComposerQueryArgs;-><init>(I)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
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

    .line 96
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 100
    .local v0, "a":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v3

    .line 101
    .local v3, "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    if-eqz v3, :cond_0

    .line 102
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

    .line 108
    :cond_0
    sget-boolean v4, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v4, :cond_1

    .line 109
    new-instance v4, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 112
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V

    .line 114
    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0a0185

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->setSelectAll(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;)V

    .line 115
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->setChoiceMode(I)V

    .line 116
    new-instance v4, Lcom/samsung/android/app/music/list/local/ComposerFragment$ActionModeOptionsMenu;

    invoke-direct {v4, p0, v9}, Lcom/samsung/android/app/music/list/local/ComposerFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/list/local/ComposerFragment;Lcom/samsung/android/app/music/list/local/ComposerFragment$1;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->setActionModeMenu(Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;)V

    .line 118
    new-instance v4, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerCheckableList;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerCheckableList;-><init>(Lcom/samsung/android/app/music/list/local/ComposerFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->setCheckableList(Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;)V

    .line 119
    new-instance v4, Lcom/samsung/android/app/music/list/ListDeleteableImpl;

    const v5, 0x7f0c000b

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/app/music/list/ListDeleteableImpl;-><init>(Landroid/app/Fragment;I)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->setDeleteable(Lcom/samsung/android/app/musiclibrary/ui/Deleteable;)V

    .line 120
    new-instance v4, Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->setSelectedItemPlayable(Lcom/samsung/android/app/musiclibrary/ui/list/SelectedItemPlayable;)V

    .line 121
    new-instance v4, Lcom/samsung/android/app/music/list/ListShareableImpl;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/list/ListShareableImpl;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->setShareable(Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;)V

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

    .line 128
    .local v2, "dividerItemDecoration":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;)V

    .line 129
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 132
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isPortrait(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isSmallScreenUiEnabled(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 133
    new-instance v4, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerCardViewableImpl;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerCardViewableImpl;-><init>(Lcom/samsung/android/app/music/list/local/ComposerFragment;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->setCardViewable(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;)V

    .line 136
    :cond_2
    new-instance v1, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    .line 137
    .local v1, "builder":Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;
    new-instance v4, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerFilterableImpl;

    invoke-direct {v4, p0, v9}, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerFilterableImpl;-><init>(Lcom/samsung/android/app/music/list/local/ComposerFragment;Lcom/samsung/android/app/music/list/local/ComposerFragment$1;)V

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->setFilterable(Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .line 138
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->build()Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment;->mListHeaderManager:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter;

    const/4 v5, -0x5

    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/ComposerFragment;->mListHeaderManager:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/app/music/list/local/ComposerFragment$ComposerAdapter;->addHeaderView(ILandroid/view/View;)V

    .line 141
    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;

    const v5, 0x7f0a012b

    const v6, 0x7f0a0132

    invoke-direct {v4, p0, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;-><init>(Landroid/app/Fragment;II)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->setEmptyView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 144
    invoke-virtual {p0, v8}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->setListShown(Z)V

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->getListType()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/ComposerFragment;->initListLoader(I)V

    .line 146
    return-void

    .line 102
    .end local v1    # "builder":Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;
    .end local v2    # "dividerItemDecoration":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    :cond_3
    const-string v4, "GlobalMusic"

    goto/16 :goto_0
.end method
