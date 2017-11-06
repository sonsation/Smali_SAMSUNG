.class public Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "AddToPlaylistFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment",
        "<",
        "Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

.field private final mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

.field private final mOnNetworkStateChangedListener:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    .line 206
    new-instance v0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$2;-><init>(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    .line 454
    new-instance v0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$3;-><init>(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->mOnNetworkStateChangedListener:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method public static newInstance([JZZ)Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;
    .locals 3
    .param p0, "checkedItemIds"    # [J
    .param p1, "addToQueue"    # Z
    .param p2, "addToFavourites"    # Z

    .prologue
    .line 83
    new-instance v1, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;-><init>()V

    .line 84
    .local v1, "fg":Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 85
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "args_checked_item_ids"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 86
    const-string v2, "add_to_queue"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 87
    const-string v2, "add_to_favourites"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 88
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->setArguments(Landroid/os/Bundle;)V

    .line 89
    return-object v1
.end method


# virtual methods
.method public getKeyword()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 186
    const-string v0, "_id"

    return-object v0
.end method

.method public getListType()I
    .locals 1

    .prologue
    .line 180
    const/16 v0, 0x11

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onAttach(Landroid/app/Activity;)V

    .line 95
    const-string v0, "233"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->setScreenId(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    check-cast p1, Lcom/samsung/android/app/music/network/NetworkManager;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    .line 97
    return-void
.end method

.method protected onCreateAdapter()Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;
    .locals 2

    .prologue
    .line 162
    new-instance v0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$Builder;-><init>(Landroid/app/Fragment;)V

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$Builder;

    const-string v1, "_id"

    .line 163
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$Builder;

    const-string v1, "_id"

    .line 164
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$Builder;->setKeywordCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$Builder;->build()Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->onCreateAdapter()Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 169
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onCreateQueryArgs(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 174
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;

    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-direct {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;-><init>(I)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 5
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
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v4, 0x0

    .line 191
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 192
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v1, "cursors":Ljava/util/List;, "Ljava/util/List<Landroid/database/Cursor;>;"
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/ListUtils;->getCreatePlaylistMatrixCursor(Landroid/content/Context;)Landroid/database/MatrixCursor;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "add_to_queue"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->isAddQueueEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/ListUtils;->getNowPlayingListItemMatrixCursor(Landroid/content/Context;)Landroid/database/MatrixCursor;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "add_to_favourites"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/ListUtils;->getFavouritesMatrixCursor(Landroid/content/Context;)Landroid/database/MatrixCursor;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_1
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    new-instance p2, Landroid/database/MergeCursor;

    .end local p2    # "data":Landroid/database/Cursor;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/database/Cursor;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/database/Cursor;

    invoke-direct {p2, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 203
    .restart local p2    # "data":Landroid/database/Cursor;
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 204
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 77
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onStart()V

    .line 102
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->mOnNetworkStateChangedListener:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManager;->addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 105
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->mOnNetworkStateChangedListener:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManager;->removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 110
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onStop()V

    .line 111
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 115
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 117
    const v2, 0x7f0d01be

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->setListSpaceTop(I)Landroid/view/View;

    .line 119
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V

    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setFastScrollIndexEnabled(Z)V

    .line 124
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;-><init>(Landroid/app/Fragment;)V

    const v3, 0x7f020146

    .line 125
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setDivider(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v2

    const v3, 0x7f0d0174

    .line 126
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetLeft(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v2

    const v3, 0x7f0d04e9

    .line 127
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetRight(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$1;-><init>(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;)V

    .line 128
    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setDividerChecker(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DividerChecker;)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v2

    .line 143
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    move-result-object v0

    .line 144
    .local v0, "dividerItemDecoration":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;)V

    .line 145
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 147
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->setListShown(Z)V

    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->getListType()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->initListLoader(I)V

    .line 150
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemAnimator(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;)V

    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v1

    .line 152
    .local v1, "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    if-eqz v1, :cond_0

    .line 153
    const-string v2, "AddToPlaylist"

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    new-instance v4, Lcom/samsung/android/app/music/bixby/executor/player/global/LaunchAddToPlaylistResponseExecutor;

    invoke-direct {v4, v1}, Lcom/samsung/android/app/music/bixby/executor/player/global/LaunchAddToPlaylistResponseExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;)V

    aput-object v4, v3, v5

    new-instance v4, Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupShowExecutor;

    invoke-direct {v4, v1, p0}, Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupShowExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/app/Fragment;)V

    aput-object v4, v3, v6

    const/4 v4, 0x2

    new-instance v5, Lcom/samsung/android/app/music/bixby/executor/store/CurrentPlaylistExecutor;

    invoke-direct {v5, v1, p0}, Lcom/samsung/android/app/music/bixby/executor/store/CurrentPlaylistExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/app/Fragment;)V

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V

    .line 158
    :cond_0
    return-void
.end method
