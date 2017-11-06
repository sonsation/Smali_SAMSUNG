.class public Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;
.super Lcom/samsung/android/app/music/list/local/PlayableUiFragment;
.source "PlaylistDetailFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/download/Downloadable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailFilterableImpl;,
        Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$OnlinePlaylistReorderable;,
        Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$OnlinePlaylistDetailDeleteable;,
        Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailDeleteable;,
        Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;,
        Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;,
        Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$ReorderableImpl;,
        Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$ActionModeOptionsMenu;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/list/local/PlayableUiFragment",
        "<",
        "Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;",
        ">;",
        "Lcom/samsung/android/app/music/download/Downloadable;"
    }
.end annotation


# static fields
.field private static final ARGS_IS_SYNC:Ljava/lang/String; = "args_is_sync"

.field private static final ARGS_PLAYLIST_ID:Ljava/lang/String; = "args_playlist_id"


# instance fields
.field private final mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mDuplicatedTracksAddable:Z

.field private mListActionModeObservable:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

.field private mListHeaderManager:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

.field private mMilkDownloadable:Lcom/samsung/android/app/music/download/Downloadable;

.field private mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

.field private final mMilkServiceConnection:Landroid/content/ServiceConnection;

.field private mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

.field private mNoItemBubbleView:Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;

.field private final mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

.field private final mOnNetworkStateChangedListener:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

.field private mOnlinePlaylistReorderable:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$OnlinePlaylistReorderable;

.field private mRecentlyPlayedUpdatable:Z

.field private final mSettingsObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

.field private mUserPlaylist:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;-><init>()V

    .line 512
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$3;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    .line 738
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$4;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 771
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$5;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mSettingsObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    .line 778
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$6;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mOnNetworkStateChangedListener:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    .line 1216
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$7;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mMilkServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Lcom/samsung/android/app/music/list/common/ListHeaderManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mListHeaderManager:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->setReorderEnabled(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->updateUi()V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;Landroid/view/Menu;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;
    .param p1, "x1"    # Landroid/view/Menu;

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->updateMenuVisible(Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Lcom/samsung/android/app/music/network/NetworkManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->isActionMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->setReorderEnabled(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->isActionMode()Z

    move-result v0

    return v0
.end method

.method public static newInstance(J)Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;
    .locals 2
    .param p0, "playlistId"    # J

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->newInstance(JZ)Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(JZ)Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;
    .locals 4
    .param p0, "playlistId"    # J
    .param p2, "isSync"    # Z

    .prologue
    .line 174
    new-instance v1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;-><init>()V

    .line 175
    .local v1, "fg":Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 176
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "args_playlist_id"

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 177
    const-string v2, "args_is_sync"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 178
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->setArguments(Landroid/os/Bundle;)V

    .line 179
    return-object v1
.end method

.method private updateMenuVisible(Landroid/view/Menu;)V
    .locals 24
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 593
    const/4 v6, 0x0

    .line 594
    .local v6, "hasLocalItem":Z
    const/4 v8, 0x0

    .line 595
    .local v8, "hasVirtualItem":Z
    const/4 v7, 0x0

    .line 597
    .local v7, "hasStreamingItem":Z
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    .line 598
    .local v3, "checkedItemPositions":Landroid/util/SparseBooleanArray;
    if-nez v3, :cond_8

    const/16 v19, 0x0

    .line 599
    .local v19, "size":I
    :goto_0
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    move/from16 v0, v19

    if-ge v9, v0, :cond_3

    .line 600
    invoke-virtual {v3, v9}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v20

    if-eqz v20, :cond_a

    .line 601
    invoke-virtual {v3, v9}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v17

    .line 602
    .local v17, "pos":I
    if-nez v6, :cond_0

    .line 603
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v20

    check-cast v20, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->isLocalItem(I)Z

    move-result v6

    .line 605
    :cond_0
    if-nez v7, :cond_1

    .line 606
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v20

    check-cast v20, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->isStreamingItem(I)Z

    move-result v7

    .line 608
    :cond_1
    if-nez v8, :cond_2

    .line 609
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v20

    check-cast v20, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->isVirtualItem(I)Z

    move-result v8

    .line 612
    :cond_2
    sget-boolean v20, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v20, :cond_9

    .line 613
    if-eqz v6, :cond_a

    if-eqz v7, :cond_a

    if-eqz v8, :cond_a

    .line 628
    .end local v17    # "pos":I
    :cond_3
    sget-boolean v20, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v20, :cond_14

    .line 630
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "args_playlist_id"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    const-wide/16 v22, -0xb

    cmp-long v20, v20, v22

    if-nez v20, :cond_b

    const/4 v10, 0x1

    .line 631
    .local v10, "isFavoriteTracks":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/samsung/android/app/music/network/NetworkManager;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/samsung/android/app/music/network/NetworkInfo;->all:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v12, v0, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->connected:Z

    .line 632
    .local v12, "isNetworkConnected":Z
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v11

    .line 633
    .local v11, "isMyMusicMode":Z
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v20

    const-string v21, "args_is_sync"

    invoke-virtual/range {v20 .. v21}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 634
    .local v13, "isSyncPlaylist":Z
    if-nez v6, :cond_4

    if-eqz v12, :cond_c

    if-nez v11, :cond_c

    if-eqz v7, :cond_c

    :cond_4
    const/16 v16, 0x1

    .line 636
    .local v16, "playMenuEnabled":Z
    :goto_3
    move/from16 v2, v16

    .line 637
    .local v2, "addMenuEnabled":Z
    if-eqz v10, :cond_e

    .line 638
    if-eqz v12, :cond_5

    if-eqz v11, :cond_6

    :cond_5
    if-eqz v6, :cond_d

    if-nez v7, :cond_d

    :cond_6
    const/4 v4, 0x1

    .line 644
    .local v4, "deleteMenuEnabled":Z
    :goto_4
    const/16 v18, 0x0

    .line 645
    .local v18, "shareMenuEnabled":Z
    if-nez v6, :cond_13

    if-nez v8, :cond_13

    if-eqz v12, :cond_13

    if-nez v11, :cond_13

    if-eqz v7, :cond_13

    const/4 v5, 0x1

    .line 656
    .end local v10    # "isFavoriteTracks":Z
    .end local v11    # "isMyMusicMode":Z
    .end local v12    # "isNetworkConnected":Z
    .end local v13    # "isSyncPlaylist":Z
    .local v5, "downloadMenuEnabled":Z
    :goto_5
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/ContextMenu;

    move/from16 v20, v0

    if-eqz v20, :cond_15

    .line 657
    const v20, 0x7f12059c

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 658
    const v20, 0x7f12059d

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 659
    const v20, 0x7f1205a0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 660
    const v20, 0x7f12059f

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 661
    const v20, 0x7f12059e

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 670
    :goto_6
    sget-boolean v20, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v20, :cond_7

    .line 671
    if-eqz v6, :cond_16

    if-nez v7, :cond_16

    if-nez v8, :cond_16

    const/4 v14, 0x1

    .line 674
    .local v14, "menuEnabled":Z
    :goto_7
    const v20, 0x7f1205a2

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    .line 675
    .local v15, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v15}, Landroid/view/MenuItem;->isVisible()Z

    move-result v20

    if-eqz v20, :cond_17

    if-eqz v14, :cond_17

    const/16 v20, 0x1

    :goto_8
    move/from16 v0, v20

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 676
    const v20, 0x7f1205a4

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    .line 677
    invoke-interface {v15}, Landroid/view/MenuItem;->isVisible()Z

    move-result v20

    if-eqz v20, :cond_18

    if-eqz v14, :cond_18

    const/16 v20, 0x1

    :goto_9
    move/from16 v0, v20

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 678
    const v20, 0x7f1205a5

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    .line 679
    invoke-interface {v15}, Landroid/view/MenuItem;->isVisible()Z

    move-result v20

    if-eqz v20, :cond_19

    if-eqz v14, :cond_19

    const/16 v20, 0x1

    :goto_a
    move/from16 v0, v20

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 680
    const v20, 0x7f1205a6

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    .line 681
    invoke-interface {v15}, Landroid/view/MenuItem;->isVisible()Z

    move-result v20

    if-eqz v20, :cond_1a

    if-eqz v14, :cond_1a

    const/16 v20, 0x1

    :goto_b
    move/from16 v0, v20

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 682
    const v20, 0x7f1205a3

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    .line 683
    invoke-interface {v15}, Landroid/view/MenuItem;->isVisible()Z

    move-result v20

    if-eqz v20, :cond_1b

    if-eqz v14, :cond_1b

    const/16 v20, 0x1

    :goto_c
    move/from16 v0, v20

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 684
    const v20, 0x7f1205a7

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    .line 685
    invoke-interface {v15}, Landroid/view/MenuItem;->isVisible()Z

    move-result v20

    if-eqz v20, :cond_1c

    if-eqz v14, :cond_1c

    const/16 v20, 0x1

    :goto_d
    move/from16 v0, v20

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 688
    const v20, 0x7f1205a8

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    .line 689
    invoke-interface {v15}, Landroid/view/MenuItem;->isVisible()Z

    move-result v20

    if-eqz v20, :cond_1d

    if-eqz v14, :cond_1d

    const/16 v20, 0x1

    :goto_e
    move/from16 v0, v20

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 690
    const v20, 0x7f1205a9

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    .line 691
    invoke-interface {v15}, Landroid/view/MenuItem;->isVisible()Z

    move-result v20

    if-eqz v20, :cond_1e

    if-eqz v14, :cond_1e

    const/16 v20, 0x1

    :goto_f
    move/from16 v0, v20

    invoke-interface {v15, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 693
    .end local v14    # "menuEnabled":Z
    .end local v15    # "menuItem":Landroid/view/MenuItem;
    :cond_7
    return-void

    .line 598
    .end local v2    # "addMenuEnabled":Z
    .end local v4    # "deleteMenuEnabled":Z
    .end local v5    # "downloadMenuEnabled":Z
    .end local v9    # "i":I
    .end local v16    # "playMenuEnabled":Z
    .end local v18    # "shareMenuEnabled":Z
    .end local v19    # "size":I
    :cond_8
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v19

    goto/16 :goto_0

    .line 616
    .restart local v9    # "i":I
    .restart local v17    # "pos":I
    .restart local v19    # "size":I
    :cond_9
    if-nez v6, :cond_3

    .line 599
    .end local v17    # "pos":I
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 630
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 634
    .restart local v10    # "isFavoriteTracks":Z
    .restart local v11    # "isMyMusicMode":Z
    .restart local v12    # "isNetworkConnected":Z
    .restart local v13    # "isSyncPlaylist":Z
    :cond_c
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 638
    .restart local v2    # "addMenuEnabled":Z
    .restart local v16    # "playMenuEnabled":Z
    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 641
    :cond_e
    if-eqz v12, :cond_f

    if-eqz v11, :cond_10

    :cond_f
    if-nez v13, :cond_12

    :cond_10
    if-nez v6, :cond_11

    if-nez v7, :cond_11

    if-eqz v8, :cond_12

    :cond_11
    const/4 v4, 0x1

    .restart local v4    # "deleteMenuEnabled":Z
    :goto_10
    goto/16 :goto_4

    .end local v4    # "deleteMenuEnabled":Z
    :cond_12
    const/4 v4, 0x0

    goto :goto_10

    .line 645
    .restart local v4    # "deleteMenuEnabled":Z
    .restart local v18    # "shareMenuEnabled":Z
    :cond_13
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 649
    .end local v2    # "addMenuEnabled":Z
    .end local v4    # "deleteMenuEnabled":Z
    .end local v10    # "isFavoriteTracks":Z
    .end local v11    # "isMyMusicMode":Z
    .end local v12    # "isNetworkConnected":Z
    .end local v13    # "isSyncPlaylist":Z
    .end local v16    # "playMenuEnabled":Z
    .end local v18    # "shareMenuEnabled":Z
    :cond_14
    move/from16 v16, v6

    .line 650
    .restart local v16    # "playMenuEnabled":Z
    move v2, v6

    .line 651
    .restart local v2    # "addMenuEnabled":Z
    move v4, v6

    .line 652
    .restart local v4    # "deleteMenuEnabled":Z
    move/from16 v18, v6

    .line 653
    .restart local v18    # "shareMenuEnabled":Z
    const/4 v5, 0x0

    .restart local v5    # "downloadMenuEnabled":Z
    goto/16 :goto_5

    .line 663
    :cond_15
    const v20, 0x7f12059c

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 664
    const v20, 0x7f12059d

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 665
    const v20, 0x7f1205a0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 666
    const v20, 0x7f12059f

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 667
    const v20, 0x7f12059e

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_6

    .line 671
    :cond_16
    const/4 v14, 0x0

    goto/16 :goto_7

    .line 675
    .restart local v14    # "menuEnabled":Z
    .restart local v15    # "menuItem":Landroid/view/MenuItem;
    :cond_17
    const/16 v20, 0x0

    goto/16 :goto_8

    .line 677
    :cond_18
    const/16 v20, 0x0

    goto/16 :goto_9

    .line 679
    :cond_19
    const/16 v20, 0x0

    goto/16 :goto_a

    .line 681
    :cond_1a
    const/16 v20, 0x0

    goto/16 :goto_b

    .line 683
    :cond_1b
    const/16 v20, 0x0

    goto/16 :goto_c

    .line 685
    :cond_1c
    const/16 v20, 0x0

    goto/16 :goto_d

    .line 689
    :cond_1d
    const/16 v20, 0x0

    goto/16 :goto_e

    .line 691
    :cond_1e
    const/16 v20, 0x0

    goto/16 :goto_f
.end method

.method private updateNoItemBubbleView(I)V
    .locals 4
    .param p1, "trackCount"    # I

    .prologue
    .line 807
    sget-boolean v2, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MUSIC_NOITEM_BUBBLE_VIEW:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mUserPlaylist:Z

    if-nez v2, :cond_1

    .line 822
    :cond_0
    :goto_0
    return-void

    .line 810
    :cond_1
    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->isActionMode()Z

    move-result v2

    if-nez v2, :cond_3

    .line 811
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mNoItemBubbleView:Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;

    if-nez v2, :cond_2

    .line 812
    const v1, 0x7f120203

    .line 813
    .local v1, "layout":I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 814
    .local v0, "a":Landroid/app/Activity;
    new-instance v2, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;

    const v3, 0x7f1205b2

    invoke-direct {v2, v0, v1, v3}, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;-><init>(Landroid/app/Activity;II)V

    iput-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mNoItemBubbleView:Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;

    .line 816
    .end local v0    # "a":Landroid/app/Activity;
    .end local v1    # "layout":I
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mNoItemBubbleView:Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->show()V

    goto :goto_0

    .line 818
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mNoItemBubbleView:Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;

    if-eqz v2, :cond_0

    .line 819
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mNoItemBubbleView:Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/widget/NoItemBubbleView;->hide()V

    goto :goto_0
.end method

.method private updateOptionsMenuVisible(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 572
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v0

    .line 573
    .local v0, "isMyMusicMode":Z
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    invoke-interface {v1}, Lcom/samsung/android/app/music/network/NetworkManager;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/app/music/network/NetworkInfo;->all:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v1, v1, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->connected:Z

    if-nez v1, :cond_1

    .line 574
    :cond_0
    const v1, 0x7f1205b2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 575
    const v1, 0x7f1205e5

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 577
    :cond_1
    return-void
.end method

.method private updateUi()V
    .locals 2

    .prologue
    .line 757
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->updateUi()V

    .line 758
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 760
    .local v0, "a":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 761
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 763
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mListHeaderManager:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->updateUi()V

    .line 765
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->isActionMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 767
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->confirmCheckedPositionsById()V

    .line 769
    :cond_1
    return-void
.end method


# virtual methods
.method public download()V
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mMilkDownloadable:Lcom/samsung/android/app/music/download/Downloadable;

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mMilkDownloadable:Lcom/samsung/android/app/music/download/Downloadable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/download/Downloadable;->download()V

    .line 736
    :cond_0
    return-void
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "args_playlist_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getListType()I
    .locals 1

    .prologue
    .line 404
    const v0, 0x100004

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 697
    packed-switch p1, :pswitch_data_0

    .line 729
    :cond_0
    :goto_0
    return-void

    .line 699
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 700
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->getItemCount()I

    move-result v6

    .line 701
    .local v6, "count":I
    const-string v0, "extra_checked_item_ids"

    .line 702
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v2

    .line 703
    .local v2, "checkedItemIds":[J
    if-nez v6, :cond_1

    .line 704
    const-string v0, "UiList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " onActivityResult() - checkedItemIds.length: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v4, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    array-length v0, v2

    if-lez v0, :cond_1

    .line 708
    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->setListShown(Z)V

    .line 711
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "args_playlist_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 712
    .local v8, "playlistId":J
    const-wide/16 v0, -0xb

    cmp-long v0, v8, v0

    if-nez v0, :cond_2

    .line 713
    new-instance v0, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;-><init>(Landroid/app/Activity;[JZZZ)V

    new-array v1, v5, [Ljava/lang/Void;

    .line 714
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 716
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "args_is_sync"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 717
    .local v7, "sync":Z
    if-nez v7, :cond_3

    .line 718
    new-instance v0, Lcom/samsung/android/app/music/common/util/task/AddToPlaylistTask;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-wide v3, v8

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/common/util/task/AddToPlaylistTask;-><init>(Landroid/app/Activity;[JJZ)V

    new-array v1, v5, [Ljava/lang/Void;

    .line 719
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/util/task/AddToPlaylistTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 721
    :cond_3
    new-instance v0, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-wide v3, v8

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;-><init>(Landroid/app/Activity;[JJZ)V

    new-array v1, v5, [Ljava/lang/Void;

    .line 722
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/util/task/AddToOnlinePlaylistTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 697
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 188
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onAttach(Landroid/app/Activity;)V

    .line 189
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 190
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mListActionModeObservable:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    .line 192
    :cond_0
    check-cast p1, Lcom/samsung/android/app/music/network/NetworkManager;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "args_playlist_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_0

    .line 208
    const-string v0, "113"

    const-string v1, "114"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->setScreenId(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :goto_0
    return-void

    .line 196
    :pswitch_0
    const-string v0, "106"

    const-string v1, "111"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->setScreenId(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :pswitch_1
    const-string v0, "107"

    const-string v1, "109"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->setScreenId(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :pswitch_2
    const-string v0, "105"

    const-string v1, "110"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->setScreenId(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :pswitch_3
    const-string v0, "108"

    const-string v1, "112"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->setScreenId(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :pswitch_data_0
    .packed-switch -0xe
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 214
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onCreate(Landroid/os/Bundle;)V

    .line 216
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 217
    .local v0, "a":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 218
    .local v2, "i":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 219
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const-string v6, "args_launch_picker_activity"

    .line 220
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 221
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/common/util/MediaDbUtils;->getMusicCount(Landroid/content/Context;I)I

    move-result v6

    if-lez v6, :cond_0

    .line 222
    const-string v6, "args_launch_picker_activity"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 223
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/samsung/android/app/music/common/activity/InternalPickerActivity;

    invoke-direct {v6, v0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "args_playlist_id"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 228
    .local v4, "playlistId":J
    const-wide/16 v6, -0xc

    cmp-long v6, v4, v6

    if-eqz v6, :cond_1

    const-wide/16 v6, -0xd

    cmp-long v6, v4, v6

    if-eqz v6, :cond_1

    const-wide/16 v6, -0xe

    cmp-long v6, v4, v6

    if-eqz v6, :cond_1

    .line 230
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mUserPlaylist:Z

    .line 233
    :cond_1
    const-wide/16 v6, -0xd

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2

    const-wide/16 v6, -0xc

    cmp-long v6, v4, v6

    if-nez v6, :cond_4

    :cond_2
    const/4 v6, 0x1

    :goto_0
    iput-boolean v6, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mRecentlyPlayedUpdatable:Z

    .line 235
    iget-boolean v6, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mUserPlaylist:Z

    if-eqz v6, :cond_5

    const-wide/16 v6, -0xb

    cmp-long v6, v4, v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    :goto_1
    iput-boolean v6, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mDuplicatedTracksAddable:Z

    .line 237
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "args_is_sync"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 238
    .local v3, "isSync":Z
    if-eqz v3, :cond_3

    .line 239
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    .line 240
    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    iget-object v7, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mMilkServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v6, v7}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->bindService(Landroid/content/ServiceConnection;)Z

    .line 242
    :cond_3
    return-void

    .line 233
    .end local v3    # "isSync":Z
    :cond_4
    const/4 v6, 0x0

    goto :goto_0

    .line 235
    :cond_5
    const/4 v6, 0x0

    goto :goto_1
.end method

.method protected onCreateAdapter()Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;
    .locals 6

    .prologue
    const v5, 0x80002

    const/4 v4, 0x2

    .line 415
    new-instance v1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter$Builder;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter$Builder;-><init>(Landroid/app/Fragment;)V

    const-string/jumbo v2, "title"

    .line 416
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter$Builder;

    const-string v2, "artist"

    .line 417
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter$Builder;

    const-string v2, "album_id"

    .line 418
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter$Builder;

    .line 420
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "args_playlist_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 419
    invoke-static {v2}, Lcom/samsung/android/app/music/provider/MusicContents;->getMatchedAudioCol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 418
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter$Builder;->setAudioIdCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter$Builder;

    const/4 v2, 0x1

    .line 421
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter$Builder;->setPrivateIconEnabled(Z)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter$Builder;

    const-string v2, "cp_attrs"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter$Builder;->setCpAttrsCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter$Builder;

    .line 423
    .local v0, "builder":Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter$Builder;
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v1, :cond_0

    .line 424
    sget-object v1, Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails;->MILK_ALBUM:Landroid/net/Uri;

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter$Builder;->addThumbnailUri(ILandroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 425
    const-string/jumbo v1, "streaming"

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter$Builder;->addCpTagText(ILjava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    .line 426
    invoke-static {v4}, Lcom/samsung/android/app/music/provider/DrmType;->getDisplayName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter$Builder;->addDrmTag(ILjava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    .line 427
    new-instance v1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$2;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter$Builder;->setListItemMenuable(Lcom/samsung/android/app/musiclibrary/ui/list/ListItemMoreMenuable;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 450
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter$Builder;->build()Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->onCreateAdapter()Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    move-result-object v0

    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 581
    const/high16 v0, 0x7f130000

    .line 582
    .local v0, "resId":I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "args_playlist_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, -0xb

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 583
    const v0, 0x7f130003

    .line 585
    :cond_0
    new-instance v1, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;-><init>(Landroid/app/Fragment;I)V

    iput-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mContextMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 586
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    check-cast v1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v2, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->getText1(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 587
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 589
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->updateMenuVisible(Landroid/view/Menu;)V

    .line 590
    return-void
.end method

.method protected onCreateLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 455
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
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
    .line 476
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;

    move-result-object v0

    check-cast v0, Landroid/content/AsyncTaskLoader;

    .line 477
    .local v0, "cl":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<Landroid/database/Cursor;>;"
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/AsyncTaskLoader;->setUpdateThrottle(J)V

    .line 478
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const v2, 0x100004

    .line 539
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "args_playlist_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 540
    .local v0, "playlistId":J
    const-wide/16 v4, -0xb

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    .line 541
    new-instance v2, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    const v3, 0x7f130011

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;-><init>(Landroid/app/Fragment;I)V

    iput-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mMusicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 552
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 553
    return-void

    .line 542
    :cond_0
    const-wide/16 v4, -0xc

    cmp-long v3, v0, v4

    if-eqz v3, :cond_1

    const-wide/16 v4, -0xd

    cmp-long v3, v0, v4

    if-eqz v3, :cond_1

    const-wide/16 v4, -0xe

    cmp-long v3, v0, v4

    if-nez v3, :cond_2

    .line 545
    :cond_1
    new-instance v3, Lcom/samsung/android/app/music/common/menu/HeartMenu;

    const v4, 0x7f130012

    invoke-direct {v3, p0, v4, v2}, Lcom/samsung/android/app/music/common/menu/HeartMenu;-><init>(Landroid/app/Fragment;II)V

    iput-object v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mMusicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    goto :goto_0

    .line 548
    :cond_2
    new-instance v3, Lcom/samsung/android/app/music/common/menu/HeartMenu;

    const v4, 0x7f13002b

    .line 549
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "args_is_sync"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const v2, 0x100050

    :cond_3
    invoke-direct {v3, p0, v4, v2}, Lcom/samsung/android/app/music/common/menu/HeartMenu;-><init>(Landroid/app/Fragment;II)V

    iput-object v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mMusicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    goto :goto_0
.end method

.method protected onCreateQueryArgs(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 6
    .param p1, "id"    # I

    .prologue
    const/4 v4, -0x1

    .line 461
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "args_is_sync"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    new-instance v0, Lcom/samsung/android/app/music/list/local/query/OnlinePlaylistTrackQueryArgs;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 463
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "args_playlist_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mListHeaderManager:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    .line 464
    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->getFilterOption()I

    move-result v3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/samsung/android/app/music/list/local/query/OnlinePlaylistTrackQueryArgs;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    .line 471
    .local v0, "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    :goto_0
    return-object v0

    .line 466
    .end local v0    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 467
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "args_playlist_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "local"

    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mListHeaderManager:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    .line 469
    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->getFilterOption()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .restart local v0    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 383
    iget-boolean v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mUserPlaylist:Z

    if-eqz v1, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getCheckBoxAnimator()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object v0

    .line 385
    .local v0, "checkBoxAnimator":Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;
    if-eqz v0, :cond_0

    .line 386
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->removeCheckBoxAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 389
    .end local v0    # "checkBoxAnimator":Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mListActionModeObservable:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-eqz v1, :cond_1

    .line 390
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mOnlinePlaylistReorderable:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$OnlinePlaylistReorderable;

    if-eqz v1, :cond_1

    .line 391
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mListActionModeObservable:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mOnlinePlaylistReorderable:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$OnlinePlaylistReorderable;

    .line 392
    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;->removeOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    .line 396
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 397
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mMilkService:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mMilkServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 399
    :cond_2
    invoke-super {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onDestroyView()V

    .line 400
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 505
    const-string v0, "com.samsung.android.app.music.core.state.PLAYED_INFO_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 506
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mRecentlyPlayedUpdatable:Z

    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->restartListLoader()V

    .line 510
    :cond_0
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
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
    .line 483
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 484
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->updateNoItemBubbleView(I)V

    .line 485
    return-void

    .line 484
    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 146
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 1
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 489
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mDuplicatedTracksAddable:Z

    if-eqz v0, :cond_0

    .line 493
    :goto_0
    return-void

    .line 492
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .local v0, "a":Landroid/app/Activity;
    move-object v1, v0

    .line 363
    check-cast v1, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;->setOnLocalTracksCountChangedListener(Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;)V

    .line 364
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    if-eqz v1, :cond_0

    .line 365
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    .end local v0    # "a":Landroid/app/Activity;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;->setLaunchSearchEnabled(Z)V

    .line 367
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onPause()V

    .line 368
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 497
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mDuplicatedTracksAddable:Z

    if-eqz v0, :cond_0

    .line 501
    :goto_0
    return-void

    .line 500
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 557
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 558
    sget-boolean v2, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v2, :cond_1

    .line 559
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "args_playlist_id"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 561
    .local v0, "playlistId":J
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "args_is_sync"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 562
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->updateOptionsMenuVisible(Landroid/view/Menu;)V

    .line 565
    :cond_0
    const-wide/16 v2, -0xb

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 566
    const v2, 0x7f1205b2

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 569
    .end local v0    # "playlistId":J
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 344
    invoke-super {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onResume()V

    .line 345
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .local v0, "a":Landroid/app/Activity;
    move-object v1, v0

    .line 346
    check-cast v1, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;

    new-instance v2, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$1;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;Landroid/app/Activity;)V

    .line 347
    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable;->setOnLocalTracksCountChangedListener(Lcom/samsung/android/app/music/list/common/LocalTracksCountObservable$OnLocalTracksCountChangedListener;)V

    .line 353
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 355
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    if-eqz v1, :cond_0

    .line 356
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;

    .end local v0    # "a":Landroid/app/Activity;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/SearchLaunchable;->setLaunchSearchEnabled(Z)V

    .line 358
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 333
    invoke-super {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onStart()V

    .line 334
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mOnNetworkStateChangedListener:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManager;->addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 336
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mSettingsObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    const-string v2, "my_music_mode"

    const/4 v3, 0x1

    .line 337
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;Z)V

    .line 338
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->updateUi()V

    .line 340
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->sync(Landroid/content/Context;I)V

    .line 373
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mNetworkManager:Lcom/samsung/android/app/music/network/NetworkManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mOnNetworkStateChangedListener:Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManager;->removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    .line 375
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mSettingsObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    const-string v2, "my_music_mode"

    .line 376
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;)V

    .line 378
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onStop()V

    .line 379
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 246
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 248
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v4

    .line 249
    .local v4, "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    if-eqz v4, :cond_0

    .line 250
    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    const/4 v11, 0x0

    new-instance v12, Lcom/samsung/android/app/music/bixby/executor/local/LaunchPlaylistDetailResponseExecutor;

    invoke-direct {v12, v4}, Lcom/samsung/android/app/music/bixby/executor/local/LaunchPlaylistDetailResponseExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;)V

    aput-object v12, v10, v11

    invoke-interface {v4, v9, v10}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V

    .line 254
    :cond_0
    iget-object v9, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V

    .line 256
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 258
    .local v0, "a":Landroid/app/Activity;
    new-instance v9, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0a018c

    invoke-direct {v9, v10, v11}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->setSelectAll(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;)V

    .line 259
    const/4 v9, 0x3

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->setChoiceMode(I)V

    .line 260
    new-instance v9, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$ActionModeOptionsMenu;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$1;)V

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->setActionModeMenu(Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;)V

    .line 262
    new-instance v9, Lcom/samsung/android/app/music/list/ListShareableImpl;

    invoke-direct {v9, p0}, Lcom/samsung/android/app/music/list/ListShareableImpl;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->setShareable(Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;)V

    .line 263
    new-instance v9, Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;

    invoke-direct {v9, p0}, Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->setSelectedItemPlayable(Lcom/samsung/android/app/musiclibrary/ui/list/SelectedItemPlayable;)V

    .line 264
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "args_is_sync"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 265
    new-instance v9, Lcom/samsung/android/app/music/list/OnlinePlaylistCheckableList;

    iget-object v10, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-direct {v9, v10}, Lcom/samsung/android/app/music/list/OnlinePlaylistCheckableList;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->setCheckableList(Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;)V

    .line 266
    new-instance v9, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$OnlinePlaylistDetailDeleteable;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$OnlinePlaylistDetailDeleteable;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$1;)V

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->setDeleteable(Lcom/samsung/android/app/musiclibrary/ui/Deleteable;)V

    .line 267
    new-instance v9, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$OnlinePlaylistReorderable;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$OnlinePlaylistReorderable;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$1;)V

    iput-object v9, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mOnlinePlaylistReorderable:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$OnlinePlaylistReorderable;

    .line 268
    iget-object v9, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mOnlinePlaylistReorderable:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$OnlinePlaylistReorderable;

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->setReorderable(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;)V

    .line 269
    iget-object v9, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mListActionModeObservable:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-eqz v9, :cond_1

    .line 270
    iget-object v9, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mListActionModeObservable:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    iget-object v10, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mOnlinePlaylistReorderable:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$OnlinePlaylistReorderable;

    invoke-interface {v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;->addOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    .line 277
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v8

    .line 279
    .local v8, "recyclerView":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    new-instance v9, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    invoke-direct {v9, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;-><init>(Landroid/app/Fragment;)V

    const v10, 0x7f020146

    .line 280
    invoke-virtual {v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setDivider(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v9

    const v10, 0x7f0d0169

    .line 281
    invoke-virtual {v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetLeft(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v9

    const v10, 0x7f0d04e9

    .line 282
    invoke-virtual {v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetRight(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    move-result-object v3

    .line 283
    .local v3, "dividerItemDecoration":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    invoke-virtual {v8, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->addItemDecoration(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;)V

    .line 284
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 286
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "args_playlist_id"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 287
    .local v6, "playlistId":J
    const-wide/16 v10, -0xc

    cmp-long v9, v6, v10

    if-nez v9, :cond_2

    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isLandscape(Landroid/app/Activity;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 288
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isSmallScreenUiEnabled(Landroid/app/Activity;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 289
    new-instance v9, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;

    invoke-direct {v9, p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$CardViewableImpl;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->setCardViewable(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;)V

    .line 292
    :cond_2
    new-instance v1, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    .line 293
    .local v1, "builder":Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;
    iget-boolean v9, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mUserPlaylist:Z

    if-eqz v9, :cond_7

    .line 294
    new-instance v9, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailFilterableImpl;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailFilterableImpl;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$1;)V

    invoke-virtual {v1, v9}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->setFilterable(Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .line 295
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->addButton(I)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .line 296
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->addButton(I)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .line 301
    :goto_1
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->build()Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mListHeaderManager:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    .line 302
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    const/4 v10, -0x5

    iget-object v11, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mListHeaderManager:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    invoke-virtual {v11}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->getView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->addHeaderView(ILandroid/view/View;)V

    .line 305
    const-wide/16 v10, -0xc

    cmp-long v9, v6, v10

    if-eqz v9, :cond_3

    const-wide/16 v10, -0xd

    cmp-long v9, v6, v10

    if-nez v9, :cond_8

    .line 306
    :cond_3
    const v5, 0x7f0a0130

    .line 314
    .local v5, "guideTextId":I
    :goto_2
    new-instance v9, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;

    const v10, 0x7f0a013a

    invoke-direct {v9, p0, v10, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;-><init>(Landroid/app/Fragment;II)V

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->setEmptyView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 316
    sget-boolean v9, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v9, :cond_4

    .line 317
    new-instance v9, Lcom/samsung/android/app/music/download/MilkDownloadable;

    iget-object v10, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    const-string/jumbo v11, "source_id"

    invoke-direct {v9, p0, v10, v11}, Lcom/samsung/android/app/music/download/MilkDownloadable;-><init>(Landroid/app/Fragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mMilkDownloadable:Lcom/samsung/android/app/music/download/Downloadable;

    .line 320
    :cond_4
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->setListShown(Z)V

    .line 321
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getListType()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->initListLoader(I)V

    .line 323
    iget-boolean v9, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mUserPlaylist:Z

    if-eqz v9, :cond_5

    .line 324
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getCheckBoxAnimator()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object v2

    .line 325
    .local v2, "checkBoxAnimator":Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;
    if-eqz v2, :cond_5

    .line 326
    iget-object v9, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v9}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->addCheckBoxAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 329
    .end local v2    # "checkBoxAnimator":Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;
    :cond_5
    return-void

    .line 273
    .end local v1    # "builder":Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;
    .end local v3    # "dividerItemDecoration":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    .end local v5    # "guideTextId":I
    .end local v6    # "playlistId":J
    .end local v8    # "recyclerView":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    :cond_6
    new-instance v9, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailDeleteable;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistDetailDeleteable;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$1;)V

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->setDeleteable(Lcom/samsung/android/app/musiclibrary/ui/Deleteable;)V

    .line 274
    new-instance v9, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$ReorderableImpl;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$ReorderableImpl;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$1;)V

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->setReorderable(Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;)V

    goto/16 :goto_0

    .line 298
    .restart local v1    # "builder":Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;
    .restart local v3    # "dividerItemDecoration":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    .restart local v6    # "playlistId":J
    .restart local v8    # "recyclerView":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    :cond_7
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->addButton(I)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .line 299
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->addButton(I)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    goto :goto_1

    .line 307
    :cond_8
    const-wide/16 v10, -0xb

    cmp-long v9, v6, v10

    if-nez v9, :cond_9

    .line 308
    const v5, 0x7f0a0131

    .restart local v5    # "guideTextId":I
    goto :goto_2

    .line 309
    .end local v5    # "guideTextId":I
    :cond_9
    const-wide/16 v10, -0xe

    cmp-long v9, v6, v10

    if-nez v9, :cond_a

    .line 310
    const v5, 0x7f0a0133

    .restart local v5    # "guideTextId":I
    goto :goto_2

    .line 312
    .end local v5    # "guideTextId":I
    :cond_a
    const v5, 0x7f0a0134

    .restart local v5    # "guideTextId":I
    goto :goto_2
.end method
