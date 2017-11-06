.class public Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
.source "AddToPlaylistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddToPlaylistAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$Builder;,
        Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter",
        "<",
        "Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsMyMusicMode:Z

.field private mIsNetworkConnected:Z

.field private mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 336
    .local p1, "builder":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder<*>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V

    .line 337
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_0

    .line 338
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->mIsMyMusicMode:Z

    .line 339
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/network/NetworkManager;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    .line 340
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    invoke-interface {v0}, Lcom/samsung/android/app/music/network/NetworkManager;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/app/music/network/NetworkInfo;->all:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v0, v0, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->connected:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->mIsNetworkConnected:Z

    .line 342
    :cond_0
    return-void
.end method

.method private onBindViewHolderOnlineTag(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/16 v1, 0x8

    .line 388
    iget-object v2, p1, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f1202bc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 389
    .local v0, "tag":Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 390
    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;->getItemViewType()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 391
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->isSyncPlaylist(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 396
    :cond_1
    :goto_0
    return-void

    .line 393
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 400
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->getItemId(I)J

    move-result-wide v0

    .line 401
    .local v0, "id":J
    const-wide/16 v2, -0xf

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 402
    const/4 v2, -0x3

    .line 408
    :goto_0
    return v2

    .line 403
    :cond_0
    const-wide/16 v2, -0x10

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 404
    const/4 v2, -0x8

    goto :goto_0

    .line 405
    :cond_1
    const-wide/16 v2, -0xb

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 406
    const/16 v2, -0x9

    goto :goto_0

    .line 408
    :cond_2
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemViewType(I)I

    move-result v2

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 414
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_2

    .line 415
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->mIsMyMusicMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->mIsNetworkConnected:Z

    if-nez v0, :cond_2

    .line 416
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->isSyncPlaylist(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 419
    :goto_0
    return v0

    .line 416
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 419
    :cond_2
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method isSyncPlaylist(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x1

    .line 423
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 424
    .local v0, "c":Landroid/database/Cursor;
    const-string v3, "is_sync"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 425
    .local v1, "columnIndex":I
    if-lez v1, :cond_0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 360
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V

    .line 361
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;->getItemViewType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 377
    :goto_0
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_0

    .line 378
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->onBindViewHolderOnlineTag(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;I)V

    .line 380
    :cond_0
    return-void

    .line 367
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->convertLargerFontSize(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;)V

    goto :goto_0

    .line 371
    :sswitch_1
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->mContext:Landroid/content/Context;

    .line 372
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;J)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 361
    :sswitch_data_0
    .sparse-switch
        -0x9 -> :sswitch_0
        -0x8 -> :sswitch_0
        -0x3 -> :sswitch_0
        0x1 -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .prologue
    .line 277
    check-cast p1, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 277
    check-cast p1, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;I)V

    return-void
.end method

.method protected onBindViewHolderThumbnailView(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;ILandroid/database/Cursor;)V
    .locals 0
    .param p1, "holder"    # Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;
    .param p2, "position"    # I
    .param p3, "c"    # Landroid/database/Cursor;

    .prologue
    .line 385
    return-void
.end method

.method protected bridge synthetic onBindViewHolderThumbnailView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;ILandroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 277
    check-cast p1, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->onBindViewHolderThumbnailView(Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;ILandroid/database/Cursor;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .param p3, "itemView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 346
    if-nez p3, :cond_0

    .line 347
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400ef

    .line 349
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 355
    :cond_0
    :goto_0
    new-instance v0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;

    invoke-direct {v0, p0, p3, p2}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    return-object v0

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400a4

    .line 352
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 1

    .prologue
    .line 277
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method updateUi()V
    .locals 2

    .prologue
    .line 429
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    invoke-interface {v1}, Lcom/samsung/android/app/music/network/NetworkManager;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/app/music/network/NetworkInfo;->all:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v0, v1, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->connected:Z

    .line 430
    .local v0, "isNetworkConnected":Z
    iget-boolean v1, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->mIsNetworkConnected:Z

    if-eq v1, v0, :cond_0

    .line 431
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->mIsNetworkConnected:Z

    .line 432
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToPlaylistFragment$AddToPlaylistAdapter;->notifyDataSetChanged()V

    .line 434
    :cond_0
    return-void
.end method
