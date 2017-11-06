.class public Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "ArtistAlbumDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailFilterableImpl;,
        Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$AlbumCheckableList;,
        Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter;,
        Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ActionModeOptionsMenu;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment",
        "<",
        "Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter;",
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
    .line 71
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    .line 202
    new-instance v0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$1;-><init>(Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;)Lcom/samsung/android/app/music/list/common/ListHeaderManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->mListHeaderManager:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;
    .locals 3
    .param p0, "keyword"    # Ljava/lang/String;
    .param p1, "groupType"    # Ljava/lang/String;

    .prologue
    .line 76
    new-instance v1, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;-><init>()V

    .line 77
    .local v1, "fg":Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 78
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "key_keyword"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v2, "key_group_type"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->setArguments(Landroid/os/Bundle;)V

    .line 81
    return-object v1
.end method


# virtual methods
.method public getKeyword()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_keyword"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListType()I
    .locals 1

    .prologue
    .line 163
    const v0, 0x10027

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onAttach(Landroid/app/Activity;)V

    .line 87
    const-string v0, "210"

    const-string v1, "212"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->setScreenId(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method protected onCreateAdapter()Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter;
    .locals 2

    .prologue
    .line 144
    new-instance v0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter$Builder;-><init>(Landroid/app/Fragment;)V

    const-string v1, "album"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter$Builder;

    const-string v1, "maxyear"

    .line 145
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter$Builder;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter$Builder;->setKeywordCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter$Builder;

    const-string v1, "_id"

    .line 146
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter$Builder;->build()Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->onCreateAdapter()Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter;

    move-result-object v0

    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 181
    new-instance v0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    const v1, 0x7f130004

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;-><init>(Landroid/app/Fragment;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->mContextMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    check-cast v0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter;->getText1(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 183
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 184
    return-void
.end method

.method protected onCreateLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 151
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 174
    new-instance v0, Lcom/samsung/android/app/music/common/menu/HeartMenu;

    const v1, 0x7f130019

    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "key_group_type"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/app/music/common/menu/HeartMenu;-><init>(Landroid/app/Fragment;II)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->mMusicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 176
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 177
    return-void
.end method

.method protected onCreateQueryArgs(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 156
    new-instance v0, Lcom/samsung/android/app/music/list/local/query/ArtistAlbumDetailQueryArgs;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key_keyword"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->mListHeaderManager:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    .line 157
    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->getFilterOption()I

    move-result v2

    .line 158
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "key_group_type"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/list/local/query/ArtistAlbumDetailQueryArgs;-><init>(Ljava/lang/String;II)V

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
    .line 130
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 131
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 132
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 133
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    invoke-static {v0, p2}, Lcom/samsung/android/app/music/common/util/ListUtils;->checkFinishActivityForNoItem(Landroid/app/Activity;Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 135
    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 71
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 92
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 94
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 97
    .local v0, "a":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v3

    .line 99
    .local v3, "recyclerView":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    const v5, 0x7f0a018c

    invoke-direct {v4, v0, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->setSelectAll(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;)V

    .line 100
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->setChoiceMode(I)V

    .line 101
    new-instance v4, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ActionModeOptionsMenu;

    invoke-direct {v4, p0, v6}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$1;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->setActionModeMenu(Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;)V

    .line 103
    new-instance v4, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$AlbumCheckableList;

    invoke-direct {v4, p0, v3}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$AlbumCheckableList;-><init>(Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->setCheckableList(Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;)V

    .line 104
    new-instance v4, Lcom/samsung/android/app/music/list/ListDeleteableImpl;

    const v5, 0x7f0c0009

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/app/music/list/ListDeleteableImpl;-><init>(Landroid/app/Fragment;I)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->setDeleteable(Lcom/samsung/android/app/musiclibrary/ui/Deleteable;)V

    .line 105
    new-instance v4, Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->setSelectedItemPlayable(Lcom/samsung/android/app/musiclibrary/ui/list/SelectedItemPlayable;)V

    .line 106
    new-instance v4, Lcom/samsung/android/app/music/list/ListShareableImpl;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/list/ListShareableImpl;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->setShareable(Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;)V

    .line 109
    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;-><init>(Landroid/app/Fragment;)V

    const v5, 0x7f020146

    .line 110
    invoke-virtual {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setDivider(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v4

    const v5, 0x7f0d0169

    .line 111
    invoke-virtual {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetLeft(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v4

    const v5, 0x7f0d04e9

    .line 112
    invoke-virtual {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetRight(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    move-result-object v2

    .line 113
    .local v2, "dividerItemDecoration":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    invoke-virtual {v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;)V

    .line 114
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 116
    new-instance v1, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    .line 117
    .local v1, "builder":Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;
    new-instance v4, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailFilterableImpl;

    invoke-direct {v4, p0, v6}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailFilterableImpl;-><init>(Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$1;)V

    invoke-virtual {v1, v4}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->setFilterable(Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .line 118
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->build()Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->mListHeaderManager:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    .line 119
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter;

    const/4 v5, -0x5

    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->mListHeaderManager:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->getView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ArtistAlbumDetailAdapter;->addHeaderView(ILandroid/view/View;)V

    .line 121
    new-instance v4, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;

    const v5, 0x7f0a0128

    const v6, 0x7f0a0132

    invoke-direct {v4, p0, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;-><init>(Landroid/app/Fragment;II)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->setEmptyView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 124
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->setListShown(Z)V

    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->getListType()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->initListLoader(I)V

    .line 126
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 3
    .param p1, "isVisibleToUser"    # Z

    .prologue
    .line 188
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->setUserVisibleHint(Z)V

    .line 189
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->mListHeaderManager:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->mListHeaderManager:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->getFilterOption()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "AADS"

    const-string v2, "Sort by release"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "AADS"

    const-string v2, "Sort by name"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
