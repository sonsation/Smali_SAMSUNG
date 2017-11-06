.class public Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;
.super Lcom/samsung/android/app/music/list/local/PlayableUiFragment;
.source "ArtistTrackDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment$ActionModeOptionsMenu;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/list/local/PlayableUiFragment",
        "<",
        "Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private final mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;-><init>()V

    .line 161
    new-instance v0, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment$2;-><init>(Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    return-void
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;
    .locals 3
    .param p0, "keyword"    # Ljava/lang/String;
    .param p1, "groupType"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v1, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;-><init>()V

    .line 57
    .local v1, "fg":Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 58
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "key_keyword"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v2, "key_group_type"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->setArguments(Landroid/os/Bundle;)V

    .line 61
    return-object v1
.end method


# virtual methods
.method public getKeyword()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->getArguments()Landroid/os/Bundle;

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
    .line 133
    const v0, 0x110027

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onAttach(Landroid/app/Activity;)V

    .line 67
    const-string v0, "209"

    const-string v1, "211"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->setScreenId(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method protected onCreateAdapter()Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;-><init>(Landroid/app/Fragment;)V

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;

    const-string v1, "album_id"

    .line 114
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;

    const-string v1, "_id"

    .line 115
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;->setAudioIdCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;

    const-string v1, "album"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;

    const-string v1, "duration"

    .line 116
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;->setText3Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;

    const-string/jumbo v1, "track"

    .line 117
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;->setTrackNumberCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;->setPrivateIconEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;->build()Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->onCreateAdapter()Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;

    move-result-object v0

    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 183
    new-instance v0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    const v1, 0x7f130008

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;-><init>(Landroid/app/Fragment;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->mContextMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 184
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    check-cast v0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->getText1(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 185
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 186
    return-void
.end method

.method protected onCreateLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 9
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->onCreateQueryArgs(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    move-result-object v8

    .line 145
    .local v8, "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    new-instance v0, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment$1;

    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v8, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iget-object v4, v8, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iget-object v5, v8, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v6, v8, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v7, v8, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment$1;-><init>(Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .local v0, "cl":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<Landroid/database/Cursor;>;"
    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/content/AsyncTaskLoader;->setUpdateThrottle(J)V

    .line 158
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 176
    new-instance v0, Lcom/samsung/android/app/music/common/menu/HeartMenu;

    const v1, 0x7f130019

    .line 177
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "key_group_type"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/app/music/common/menu/HeartMenu;-><init>(Landroid/app/Fragment;II)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->mMusicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 178
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 179
    return-void
.end method

.method protected onCreateQueryArgs(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 127
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/ArtistTrackDetailQueryArgs;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key_keyword"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "key_group_type"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/query/ArtistTrackDetailQueryArgs;-><init>(Ljava/lang/String;I)V

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
    .line 99
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 101
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 102
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    invoke-static {v0, p2}, Lcom/samsung/android/app/music/common/util/ListUtils;->checkFinishActivityForNoItem(Landroid/app/Activity;Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 104
    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 53
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 72
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 74
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V

    .line 77
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a018c

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->setSelectAll(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;)V

    .line 78
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->setChoiceMode(I)V

    .line 79
    new-instance v1, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment$ActionModeOptionsMenu;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment$1;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->setActionModeMenu(Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;)V

    .line 81
    new-instance v1, Lcom/samsung/android/app/music/list/ListDeleteableImpl;

    const v2, 0x7f0c0011

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/music/list/ListDeleteableImpl;-><init>(Landroid/app/Fragment;I)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->setDeleteable(Lcom/samsung/android/app/musiclibrary/ui/Deleteable;)V

    .line 82
    new-instance v1, Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->setSelectedItemPlayable(Lcom/samsung/android/app/musiclibrary/ui/list/SelectedItemPlayable;)V

    .line 83
    new-instance v1, Lcom/samsung/android/app/music/list/ListShareableImpl;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/ListShareableImpl;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->setShareable(Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;)V

    .line 85
    new-instance v0, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    .line 86
    .local v0, "builder":Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;
    invoke-virtual {v0, v4}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->addButton(I)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .line 87
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->addButton(I)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;

    const/4 v2, -0x5

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->build()Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->addHeaderView(ILandroid/view/View;)V

    .line 90
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;

    const v2, 0x7f0a013a

    const v3, 0x7f0a0132

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;-><init>(Landroid/app/Fragment;II)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->setEmptyView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 93
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->setListShown(Z)V

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->getListType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/ArtistTrackDetailFragment;->initListLoader(I)V

    .line 95
    return-void
.end method
