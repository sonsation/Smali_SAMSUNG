.class public Lcom/samsung/android/app/music/list/local/FolderDetailFragment;
.super Lcom/samsung/android/app/music/list/local/PlayableUiFragment;
.source "FolderDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/FolderDetailFragment$FolderDetailFilterableImpl;,
        Lcom/samsung/android/app/music/list/local/FolderDetailFragment$ActionModeOptionsMenu;
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


# static fields
.field private static final KEY_BUCKET_ID:Ljava/lang/String; = "key_bucket_id"


# instance fields
.field private mListHeaderManager:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

.field private final mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;-><init>()V

    .line 156
    new-instance v0, Lcom/samsung/android/app/music/list/local/FolderDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/FolderDetailFragment$1;-><init>(Lcom/samsung/android/app/music/list/local/FolderDetailFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/FolderDetailFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/FolderDetailFragment;
    .locals 3
    .param p0, "bucketId"    # Ljava/lang/String;

    .prologue
    .line 59
    new-instance v1, Lcom/samsung/android/app/music/list/local/FolderDetailFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/list/local/FolderDetailFragment;-><init>()V

    .line 60
    .local v1, "fg":Lcom/samsung/android/app/music/list/local/FolderDetailFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "key_bucket_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/list/local/FolderDetailFragment;->setArguments(Landroid/os/Bundle;)V

    .line 63
    return-object v1
.end method


# virtual methods
.method public getKeyword()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/FolderDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_bucket_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListType()I
    .locals 1

    .prologue
    .line 124
    const v0, 0x100007

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onAttach(Landroid/app/Activity;)V

    .line 69
    const-string v0, "219"

    const-string v1, "220"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/list/local/FolderDetailFragment;->setScreenId(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method protected onCreateAdapter()Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 134
    new-instance v1, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;-><init>(Landroid/app/Fragment;)V

    const-string v2, "_display_name"

    .line 135
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;

    const-string v2, "artist"

    .line 136
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;

    const-string v2, "album_id"

    .line 137
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;

    const-string v2, "_id"

    .line 138
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;->setAudioIdCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;->setPrivateIconEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;

    .line 139
    .local v0, "builder":Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v1, :cond_0

    .line 140
    invoke-static {v3}, Lcom/samsung/android/app/music/provider/DrmType;->getDisplayName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;->addDrmTag(ILjava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    .line 142
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter$Builder;->build()Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/FolderDetailFragment;->onCreateAdapter()Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;

    move-result-object v0

    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 177
    new-instance v0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    const v1, 0x7f130008

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;-><init>(Landroid/app/Fragment;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/FolderDetailFragment;->mContextMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/FolderDetailFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    check-cast v0, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/FolderDetailFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;->getText1(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 179
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 180
    return-void
.end method

.method protected onCreateLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 147
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/FolderDetailFragment;->getActivity()Landroid/app/Activity;

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
    .line 171
    new-instance v0, Lcom/samsung/android/app/music/common/menu/HeartMenu;

    const v1, 0x7f130019

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/common/menu/HeartMenu;-><init>(Landroid/app/Fragment;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/FolderDetailFragment;->mMusicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 172
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 173
    return-void
.end method

.method protected onCreateQueryArgs(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 152
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderTrackQueryArgs;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/FolderDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key_bucket_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/FolderDetailFragment;->mListHeaderManager:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    .line 153
    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->getFilterOption()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderTrackQueryArgs;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
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
    .line 110
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/FolderDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 112
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/FolderDetailFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 113
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    invoke-static {v0, p2}, Lcom/samsung/android/app/music/common/util/ListUtils;->checkFinishActivityForNoItem(Landroid/app/Activity;Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 115
    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/FolderDetailFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 74
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 76
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/FolderDetailFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/list/local/FolderDetailFragment;->setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V

    .line 78
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/FolderDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0a018c

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/list/local/FolderDetailFragment;->setSelectAll(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;)V

    .line 79
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/list/local/FolderDetailFragment;->setChoiceMode(I)V

    .line 80
    new-instance v2, Lcom/samsung/android/app/music/list/local/FolderDetailFragment$ActionModeOptionsMenu;

    invoke-direct {v2, p0, v6}, Lcom/samsung/android/app/music/list/local/FolderDetailFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/list/local/FolderDetailFragment;Lcom/samsung/android/app/music/list/local/FolderDetailFragment$1;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/list/local/FolderDetailFragment;->setActionModeMenu(Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;)V

    .line 82
    new-instance v2, Lcom/samsung/android/app/music/list/ListDeleteableImpl;

    const v3, 0x7f0c0011

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/app/music/list/ListDeleteableImpl;-><init>(Landroid/app/Fragment;I)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/list/local/FolderDetailFragment;->setDeleteable(Lcom/samsung/android/app/musiclibrary/ui/Deleteable;)V

    .line 83
    new-instance v2, Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/list/local/FolderDetailFragment;->setSelectedItemPlayable(Lcom/samsung/android/app/musiclibrary/ui/list/SelectedItemPlayable;)V

    .line 84
    new-instance v2, Lcom/samsung/android/app/music/list/ListShareableImpl;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/list/ListShareableImpl;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/list/local/FolderDetailFragment;->setShareable(Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;)V

    .line 87
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;-><init>(Landroid/app/Fragment;)V

    const v3, 0x7f020146

    .line 88
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setDivider(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v2

    const v3, 0x7f0d0169

    .line 89
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetLeft(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v2

    const v3, 0x7f0d04e9

    .line 90
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetRight(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    move-result-object v1

    .line 91
    .local v1, "dividerItemDecoration":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/FolderDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;)V

    .line 92
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/FolderDetailFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 94
    new-instance v0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    .line 95
    .local v0, "builder":Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;
    new-instance v2, Lcom/samsung/android/app/music/list/local/FolderDetailFragment$FolderDetailFilterableImpl;

    invoke-direct {v2, p0, v6}, Lcom/samsung/android/app/music/list/local/FolderDetailFragment$FolderDetailFilterableImpl;-><init>(Lcom/samsung/android/app/music/list/local/FolderDetailFragment;Lcom/samsung/android/app/music/list/local/FolderDetailFragment$1;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->setFilterable(Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .line 96
    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->addButton(I)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .line 97
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->addButton(I)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .line 98
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->build()Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/list/local/FolderDetailFragment;->mListHeaderManager:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/FolderDetailFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;

    const/4 v3, -0x5

    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/FolderDetailFragment;->mListHeaderManager:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;->addHeaderView(ILandroid/view/View;)V

    .line 101
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;

    const v3, 0x7f0a013a

    const v4, 0x7f0a0132

    invoke-direct {v2, p0, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;-><init>(Landroid/app/Fragment;II)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/list/local/FolderDetailFragment;->setEmptyView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 104
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/list/local/FolderDetailFragment;->setListShown(Z)V

    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/FolderDetailFragment;->getListType()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/list/local/FolderDetailFragment;->initListLoader(I)V

    .line 106
    return-void
.end method
