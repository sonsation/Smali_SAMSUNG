.class public Lcom/samsung/android/app/music/list/local/PlaylistFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "PlaylistFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/util/ShortCutUtils$ShortcutAddable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistShareable;,
        Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistSelectedItemPlayableImpl;,
        Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistDeleteable;,
        Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;,
        Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;,
        Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistLoader;,
        Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistDividerChecker;,
        Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCheckableList;,
        Lcom/samsung/android/app/music/list/local/PlaylistFragment$ActionModeOptionsMenu;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment",
        "<",
        "Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;",
        ">;",
        "Lcom/samsung/android/app/music/common/util/ShortCutUtils$ShortcutAddable;"
    }
.end annotation


# static fields
.field private static final AUDIO_PLAYLISTS_MAP:Ljava/lang/String;


# instance fields
.field private mActionModeOptionsMenu:Lcom/samsung/android/app/music/list/local/PlaylistFragment$ActionModeOptionsMenu;

.field private final mCoreMediaChangeObserver:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

.field private mDefaultPlaylistIds:[J

.field private final mForceLoadObserver:Landroid/database/ContentObserver;

.field private mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

.field private mIsMyMusicMode:Z

.field private final mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

.field private mPlaylistCardViewableImpl:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;

.field private final mPlaylistsObserver:Landroid/database/ContentObserver;

.field private final mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 154
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/#/members"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->AUDIO_PLAYLISTS_MAP:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    .line 514
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$1;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mCoreMediaChangeObserver:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 613
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$2;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mPlaylistsObserver:Landroid/database/ContentObserver;

    .line 636
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$3;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mForceLoadObserver:Landroid/database/ContentObserver;

    .line 651
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$4;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    .line 1610
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$5;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    return-void
.end method

.method static synthetic access$1800(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    .prologue
    .line 146
    iget v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mUiType:I

    return v0
.end method

.method static synthetic access$1902(Lcom/samsung/android/app/music/list/local/PlaylistFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/PlaylistFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mIsMyMusicMode:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)Lcom/samsung/android/app/music/list/local/PlaylistFragment$ActionModeOptionsMenu;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mActionModeOptionsMenu:Lcom/samsung/android/app/music/list/local/PlaylistFragment$ActionModeOptionsMenu;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->updateDefaultPlaylist()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mPlaylistCardViewableImpl:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->AUDIO_PLAYLISTS_MAP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/list/local/PlaylistFragment;Landroid/view/Menu;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/PlaylistFragment;
    .param p1, "x1"    # Landroid/view/Menu;

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->updateMenuVisible(Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/list/local/PlaylistFragment;J)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/PlaylistFragment;
    .param p1, "x1"    # J

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getPlaylistQueryColumn(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPlaylistQueryColumn(J)Ljava/lang/String;
    .locals 3
    .param p1, "playlistId"    # J

    .prologue
    .line 715
    const-wide/16 v0, -0xb

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0xc

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    const-wide/16 v0, -0xe

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    const-wide/16 v0, -0xd

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 718
    :cond_0
    const-string v0, "audio_id"

    .line 720
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "_id"

    goto :goto_0
.end method

.method private makeCursor(I)Landroid/database/Cursor;
    .locals 7
    .param p1, "viewType"    # I

    .prologue
    .line 587
    new-instance v5, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;-><init>(I)V

    iget-object v0, v5, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;->projection:[Ljava/lang/String;

    .line 588
    .local v0, "columnNames":[Ljava/lang/String;
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 590
    .local v2, "cursor":Landroid/database/MatrixCursor;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 591
    .local v1, "columnValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    array-length v4, v0

    .line 592
    .local v4, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 593
    if-eqz v3, :cond_0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1

    .line 594
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 596
    :cond_1
    const-string v5, "dummy"

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 599
    :cond_2
    invoke-virtual {v2, v1}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 600
    return-object v2
.end method

.method private updateDefaultPlaylist()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 604
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 605
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mDefaultPlaylistIds:[J

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mDefaultPlaylistIds:[J

    array-length v1, v1

    if-gt v1, v2, :cond_0

    .line 606
    new-array v1, v2, [J

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/util/ListUtils;->saveDynamicDefaultPlaylistIdsToPref(Landroid/content/Context;[J)V

    .line 608
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/ListUtils;->getDynamicDefaultPlaylistIdsFromPref(Landroid/content/Context;)[J

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mDefaultPlaylistIds:[J

    .line 609
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getListType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->initListLoader(I)V

    .line 611
    :cond_0
    return-void

    .line 606
    :array_0
    .array-data 8
        -0xb
        -0xc
        -0xd
        -0xe
    .end array-data
.end method

.method private updateMenuVisible(Landroid/view/Menu;)V
    .locals 13
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v12, 0x7f1205af

    const v11, 0x7f1205a0

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 442
    sget-boolean v7, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v7, :cond_4

    .line 443
    const/4 v2, 0x0

    .line 444
    .local v2, "deleteMenuEnabled":Z
    const/4 v5, 0x1

    .line 445
    .local v5, "renameMenuEnabled":Z
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getCheckedItemCount()I

    move-result v0

    .line 446
    .local v0, "checkedItemCount":I
    if-lez v0, :cond_b

    .line 447
    iget-boolean v7, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mIsMyMusicMode:Z

    if-nez v7, :cond_0

    .line 448
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->canAccessNetwork(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 450
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 451
    .local v1, "checkedItemPositions":Landroid/util/SparseBooleanArray;
    if-nez v1, :cond_5

    move v6, v8

    .line 452
    .local v6, "size":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v6, :cond_3

    .line 453
    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 455
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v10

    invoke-static {v7, v10}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->access$200(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;I)Z

    move-result v4

    .line 456
    .local v4, "isSyncPlaylist":Z
    if-nez v2, :cond_1

    if-nez v4, :cond_1

    .line 457
    const/4 v2, 0x1

    .line 459
    :cond_1
    if-eqz v5, :cond_2

    .line 460
    if-ne v0, v9, :cond_7

    .line 461
    if-nez v4, :cond_6

    move v5, v9

    .line 466
    :cond_2
    :goto_2
    if-eqz v2, :cond_8

    if-nez v5, :cond_8

    .line 479
    .end local v1    # "checkedItemPositions":Landroid/util/SparseBooleanArray;
    .end local v3    # "i":I
    .end local v4    # "isSyncPlaylist":Z
    .end local v6    # "size":I
    :cond_3
    :goto_3
    instance-of v7, p1, Landroid/view/ContextMenu;

    if-eqz v7, :cond_c

    .line 480
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 481
    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 487
    .end local v0    # "checkedItemCount":I
    .end local v2    # "deleteMenuEnabled":Z
    .end local v5    # "renameMenuEnabled":Z
    :cond_4
    :goto_4
    return-void

    .line 451
    .restart local v0    # "checkedItemCount":I
    .restart local v1    # "checkedItemPositions":Landroid/util/SparseBooleanArray;
    .restart local v2    # "deleteMenuEnabled":Z
    .restart local v5    # "renameMenuEnabled":Z
    :cond_5
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    goto :goto_0

    .restart local v3    # "i":I
    .restart local v4    # "isSyncPlaylist":Z
    .restart local v6    # "size":I
    :cond_6
    move v5, v8

    .line 461
    goto :goto_2

    .line 463
    :cond_7
    const/4 v5, 0x0

    goto :goto_2

    .line 452
    .end local v4    # "isSyncPlaylist":Z
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 472
    .end local v1    # "checkedItemPositions":Landroid/util/SparseBooleanArray;
    .end local v3    # "i":I
    .end local v6    # "size":I
    :cond_9
    const/4 v2, 0x1

    .line 473
    if-ne v0, v9, :cond_a

    move v5, v9

    :goto_5
    goto :goto_3

    :cond_a
    move v5, v8

    goto :goto_5

    .line 476
    :cond_b
    const/4 v2, 0x0

    .line 477
    const/4 v5, 0x0

    goto :goto_3

    .line 483
    :cond_c
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 484
    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_4
.end method


# virtual methods
.method public addShortcut()V
    .locals 9

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 492
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v5

    .line 493
    .local v5, "sp":Landroid/util/SparseBooleanArray;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    .line 494
    .local v0, "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    if-nez v5, :cond_1

    const/4 v4, 0x0

    .line 496
    .local v4, "size":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_2

    .line 497
    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 498
    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 499
    .local v3, "position":I
    const v6, 0x100004

    .line 500
    invoke-virtual {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getText1(I)Ljava/lang/String;

    move-result-object v8

    .line 499
    invoke-static {v1, v6, v7, v8}, Lcom/samsung/android/app/music/common/util/ShortCutUtils;->installShortcutIcon(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 496
    .end local v3    # "position":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 494
    .end local v2    # "i":I
    .end local v4    # "size":I
    :cond_1
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    goto :goto_0

    .line 503
    .restart local v2    # "i":I
    .restart local v4    # "size":I
    :cond_2
    return-void
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 407
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListType()I
    .locals 1

    .prologue
    .line 401
    const v0, 0x10004

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 302
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 306
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onAttach(Landroid/app/Activity;)V

    .line 172
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->AUDIO_PLAYLISTS_MAP:Ljava/lang/String;

    .line 173
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mPlaylistsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 174
    invoke-static {}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->clearCache()V

    .line 176
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    .line 179
    const-string v0, "103"

    const-string v1, "104"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->setScreenId(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 194
    return-void
.end method

.method protected onCreateAdapter()Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;
    .locals 2

    .prologue
    .line 384
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$Builder;-><init>(Landroid/app/Fragment;)V

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$Builder;

    const-string v1, "_id"

    .line 385
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$Builder;

    const-string v1, "_id"

    .line 386
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$Builder;->setKeywordCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$Builder;->build()Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->onCreateAdapter()Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    move-result-object v0

    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 435
    new-instance v0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    const v1, 0x7f130010

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;-><init>(Landroid/app/Fragment;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mContextMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 436
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    check-cast v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->getText1(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 437
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 438
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->updateMenuVisible(Landroid/view/Menu;)V

    .line 439
    return-void
.end method

.method protected onCreateLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 391
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/app/Activity;

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
    .line 372
    sget-boolean v1, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v1, :cond_0

    .line 373
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistLoader;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistLoader;-><init>(Landroid/content/Context;)V

    .line 378
    .local v0, "cl":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<Landroid/database/Cursor;>;"
    :goto_0
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/AsyncTaskLoader;->setUpdateThrottle(J)V

    .line 379
    return-object v0

    .line 375
    .end local v0    # "cl":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<Landroid/database/Cursor;>;"
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;

    move-result-object v0

    check-cast v0, Landroid/content/AsyncTaskLoader;

    .restart local v0    # "cl":Landroid/content/AsyncTaskLoader;, "Landroid/content/AsyncTaskLoader<Landroid/database/Cursor;>;"
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 415
    new-instance v0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    const v1, 0x7f13001e

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;-><init>(Landroid/app/Fragment;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mMusicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 416
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 420
    return-void
.end method

.method protected onCreateQueryArgs(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 396
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;-><init>(I)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 202
    const v1, 0x7f0401f4

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 206
    .local v0, "v":Landroid/view/View;
    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 351
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onDestroyCalled()V

    .line 352
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mPlaylistCardViewableImpl:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mForceLoadObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 355
    :cond_0
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_1

    .line 356
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    const-string v2, "my_music_mode"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;)V

    .line 359
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onDestroyView()V

    .line 360
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mPlaylistsObserver:Landroid/database/ContentObserver;

    .line 365
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 366
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onDetach()V

    .line 367
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 13
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
    .line 546
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-nez v10, :cond_3

    :cond_0
    const/4 v5, 0x1

    .line 547
    .local v5, "isEmpty":Z
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 548
    .local v0, "a":Landroid/app/Activity;
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isSmallScreenUiEnabled(Landroid/app/Activity;)Z

    move-result v9

    .line 549
    .local v9, "smallScreenUiEnabled":Z
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    invoke-virtual {v10, v5}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->setEmptyViewVisible(Z)V

    .line 550
    sget-boolean v10, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-nez v10, :cond_1

    if-nez v9, :cond_2

    if-eqz v5, :cond_2

    .line 551
    :cond_1
    const/16 v10, -0x3ec

    invoke-direct {p0, v10}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->makeCursor(I)Landroid/database/Cursor;

    move-result-object v8

    .line 552
    .local v8, "noItemCompanyData":Landroid/database/Cursor;
    if-eqz v5, :cond_4

    .line 553
    move-object p2, v8

    .line 559
    .end local v8    # "noItemCompanyData":Landroid/database/Cursor;
    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 560
    .local v1, "context":Landroid/content/Context;
    if-eqz v9, :cond_6

    .line 561
    new-instance v2, Lcom/samsung/android/app/music/list/common/info/PlaylistCursorBuilder;

    const/4 v10, 0x0

    invoke-direct {v2, p0, v10}, Lcom/samsung/android/app/music/list/common/info/PlaylistCursorBuilder;-><init>(Landroid/app/Fragment;Landroid/database/Cursor;)V

    .line 562
    .local v2, "cursorBuilder":Lcom/samsung/android/app/music/list/common/info/PlaylistCursorBuilder;
    iget-object v11, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mDefaultPlaylistIds:[J

    array-length v12, v11

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v12, :cond_5

    aget-wide v6, v11, v10

    .line 563
    .local v6, "mDefaultPlaylistId":J
    invoke-virtual {v2, v6, v7}, Lcom/samsung/android/app/music/list/common/info/PlaylistCursorBuilder;->add(J)V

    .line 562
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 546
    .end local v0    # "a":Landroid/app/Activity;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "cursorBuilder":Lcom/samsung/android/app/music/list/common/info/PlaylistCursorBuilder;
    .end local v5    # "isEmpty":Z
    .end local v6    # "mDefaultPlaylistId":J
    .end local v9    # "smallScreenUiEnabled":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 555
    .restart local v0    # "a":Landroid/app/Activity;
    .restart local v5    # "isEmpty":Z
    .restart local v8    # "noItemCompanyData":Landroid/database/Cursor;
    .restart local v9    # "smallScreenUiEnabled":Z
    :cond_4
    new-instance v3, Landroid/database/MergeCursor;

    const/4 v10, 0x2

    new-array v10, v10, [Landroid/database/Cursor;

    const/4 v11, 0x0

    aput-object p2, v10, v11

    const/4 v11, 0x1

    aput-object v8, v10, v11

    invoke-direct {v3, v10}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .end local p2    # "data":Landroid/database/Cursor;
    .local v3, "data":Landroid/database/Cursor;
    move-object p2, v3

    .end local v3    # "data":Landroid/database/Cursor;
    .restart local p2    # "data":Landroid/database/Cursor;
    goto :goto_1

    .line 565
    .end local v8    # "noItemCompanyData":Landroid/database/Cursor;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v2    # "cursorBuilder":Lcom/samsung/android/app/music/list/common/info/PlaylistCursorBuilder;
    :cond_5
    new-instance v3, Landroid/database/MergeCursor;

    const/4 v10, 0x4

    new-array v10, v10, [Landroid/database/Cursor;

    const/4 v11, 0x0

    .line 566
    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/common/info/PlaylistCursorBuilder;->build()Landroid/database/Cursor;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, -0x7

    invoke-direct {p0, v12}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->makeCursor(I)Landroid/database/Cursor;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const/4 v12, -0x3

    .line 567
    invoke-direct {p0, v12}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->makeCursor(I)Landroid/database/Cursor;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    aput-object p2, v10, v11

    invoke-direct {v3, v10}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .end local p2    # "data":Landroid/database/Cursor;
    .restart local v3    # "data":Landroid/database/Cursor;
    move-object p2, v3

    .line 570
    .end local v2    # "cursorBuilder":Lcom/samsung/android/app/music/list/common/info/PlaylistCursorBuilder;
    .end local v3    # "data":Landroid/database/Cursor;
    .restart local p2    # "data":Landroid/database/Cursor;
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 572
    if-eqz v9, :cond_7

    .line 573
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getValidItemCount()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->updatePlaylistCount(I)V

    .line 574
    invoke-static {}, Lcom/samsung/android/app/music/common/privatemode/PrivateUtils;->isPrivateMode()Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mDefaultPlaylistIds:[J

    .line 575
    invoke-static {v10}, Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;->hasFavoriteTracks([J)Z

    move-result v10

    if-nez v10, :cond_7

    .line 576
    invoke-static {v1}, Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;->getFavoriteTrackCount(Landroid/content/Context;)I

    move-result v4

    .line 577
    .local v4, "favoriteTrackCount":I
    if-lez v4, :cond_7

    .line 578
    invoke-static {v1}, Lcom/samsung/android/app/music/common/util/ListUtils;->saveFavoritePlaylistToPref(Landroid/content/Context;)V

    .line 579
    invoke-static {v1}, Lcom/samsung/android/app/music/common/util/ListUtils;->getDynamicDefaultPlaylistIdsFromPref(Landroid/content/Context;)[J

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mDefaultPlaylistIds:[J

    .line 580
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getListType()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->initListLoader(I)V

    .line 584
    .end local v4    # "favoriteTrackCount":I
    :cond_7
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 146
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 427
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 431
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 335
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onResume()V

    .line 340
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 313
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onStart()V

    .line 314
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 315
    .local v0, "a":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 316
    .local v1, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isSmallScreenUiEnabled(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 317
    invoke-static {v1}, Lcom/samsung/android/app/music/common/util/ListUtils;->getDynamicDefaultPlaylistIdsFromPref(Landroid/content/Context;)[J

    move-result-object v2

    .line 318
    .local v2, "defaultPlaylistIds":[J
    array-length v3, v2

    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mDefaultPlaylistIds:[J

    array-length v4, v4

    if-eq v3, v4, :cond_0

    .line 319
    iput-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mDefaultPlaylistIds:[J

    .line 320
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getListType()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->initListLoader(I)V

    .line 323
    .end local v2    # "defaultPlaylistIds":[J
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mCoreMediaChangeObserver:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 324
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onStartCalled()V

    .line 328
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onStopCalled()V

    .line 345
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mCoreMediaChangeObserver:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 346
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onStop()V

    .line 347
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 214
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 216
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 217
    .local v0, "a":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 219
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v3

    .line 220
    .local v3, "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    if-eqz v3, :cond_0

    .line 221
    sget-boolean v6, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v6, :cond_3

    const-string v6, "Music"

    :goto_0
    const/4 v7, 0x5

    new-array v7, v7, [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    const/4 v8, 0x0

    new-instance v9, Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupShowExecutor;

    invoke-direct {v9, v3, p0}, Lcom/samsung/android/app/music/bixby/executor/local/CreatePlaylistPopupShowExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/app/Fragment;)V

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Lcom/samsung/android/app/music/bixby/executor/local/EditPlaylistsExecutor;

    invoke-direct {v9, v3, v1, p0}, Lcom/samsung/android/app/music/bixby/executor/local/EditPlaylistsExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;)V

    aput-object v9, v7, v8

    const/4 v8, 0x2

    new-instance v9, Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor;

    invoke-direct {v9, v3, v0, p0}, Lcom/samsung/android/app/music/bixby/executor/local/PlayCardViewExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable;)V

    aput-object v9, v7, v8

    const/4 v8, 0x3

    new-instance v9, Lcom/samsung/android/app/music/bixby/executor/local/FinishActionModeExecutor;

    invoke-direct {v9, p0, p0}, Lcom/samsung/android/app/music/bixby/executor/local/FinishActionModeExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;)V

    aput-object v9, v7, v8

    const/4 v8, 0x4

    new-instance v9, Lcom/samsung/android/app/music/bixby/executor/local/PlayPlaylistExecutor;

    invoke-direct {v9, v3, v1}, Lcom/samsung/android/app/music/bixby/executor/local/PlayPlaylistExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/content/Context;)V

    aput-object v9, v7, v8

    invoke-interface {v3, v6, v7}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V

    .line 230
    :cond_0
    sget-boolean v6, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v6, :cond_1

    .line 231
    new-instance v6, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 234
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isSmallScreenUiEnabled(Landroid/app/Activity;)Z

    move-result v4

    .line 236
    .local v4, "smallScreenUiEnabled":Z
    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V

    .line 238
    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0a018b

    invoke-direct {v6, v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->setSelectAll(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;)V

    .line 239
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->setChoiceMode(I)V

    .line 240
    new-instance v6, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCheckableList;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCheckableList;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->setCheckableList(Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;)V

    .line 241
    new-instance v6, Lcom/samsung/android/app/music/list/local/PlaylistFragment$ActionModeOptionsMenu;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;Lcom/samsung/android/app/music/list/local/PlaylistFragment$1;)V

    iput-object v6, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mActionModeOptionsMenu:Lcom/samsung/android/app/music/list/local/PlaylistFragment$ActionModeOptionsMenu;

    .line 242
    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mActionModeOptionsMenu:Lcom/samsung/android/app/music/list/local/PlaylistFragment$ActionModeOptionsMenu;

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->setActionModeMenu(Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;)V

    .line 244
    sget-boolean v6, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v6, :cond_4

    new-instance v6, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;

    iget-object v7, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-direct {v6, p0, v7}, Lcom/samsung/android/app/music/list/OnlinePlaylistDeletable;-><init>(Landroid/app/Fragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    :goto_1
    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->setDeleteable(Lcom/samsung/android/app/musiclibrary/ui/Deleteable;)V

    .line 246
    new-instance v6, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistSelectedItemPlayableImpl;

    invoke-direct {v6, p0, p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistSelectedItemPlayableImpl;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;Landroid/app/Fragment;)V

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->setSelectedItemPlayable(Lcom/samsung/android/app/musiclibrary/ui/list/SelectedItemPlayable;)V

    .line 247
    new-instance v6, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistShareable;

    invoke-direct {v6, p0, p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistShareable;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;Landroid/app/Fragment;)V

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->setShareable(Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;)V

    .line 250
    if-eqz v4, :cond_5

    .line 251
    const v6, 0x7f0d01be

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->setListSpaceTop(I)Landroid/view/View;

    .line 252
    invoke-static {v1}, Lcom/samsung/android/app/music/common/util/ListUtils;->getDynamicDefaultPlaylistIdsFromPref(Landroid/content/Context;)[J

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mDefaultPlaylistIds:[J

    .line 253
    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;-><init>(Landroid/app/Fragment;)V

    const v7, 0x7f020146

    .line 254
    invoke-virtual {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setDivider(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v6

    const v7, 0x7f0d0169

    .line 255
    invoke-virtual {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetLeft(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v6

    const v7, 0x7f0d04e9

    .line 256
    invoke-virtual {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetRight(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistDividerChecker;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistDividerChecker;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment$1;)V

    .line 257
    invoke-virtual {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setDividerChecker(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DividerChecker;)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    move-result-object v2

    .line 279
    .local v2, "dividerItemDecoration":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;)V

    .line 280
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 282
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->setListShown(Z)V

    .line 284
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getListType()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->initListLoader(I)V

    .line 286
    sget-boolean v6, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v6, :cond_2

    .line 287
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mSettingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    const-string v8, "my_music_mode"

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;Z)V

    .line 289
    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mIsMyMusicMode:Z

    .line 295
    :cond_2
    return-void

    .line 221
    .end local v2    # "dividerItemDecoration":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    .end local v4    # "smallScreenUiEnabled":Z
    :cond_3
    const-string v6, "GlobalMusic"

    goto/16 :goto_0

    .line 244
    .restart local v4    # "smallScreenUiEnabled":Z
    :cond_4
    new-instance v6, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistDeleteable;

    const v7, 0x7f0c000f

    invoke-direct {v6, p0, p0, v7}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistDeleteable;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;Landroid/app/Fragment;I)V

    goto/16 :goto_1

    .line 259
    :cond_5
    iget v6, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mUiType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isLandscape(Landroid/app/Activity;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 260
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d02ca

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 262
    .local v5, "space":I
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v6, v5, v7}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 265
    .end local v5    # "space":I
    :cond_6
    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;-><init>(Landroid/app/Fragment;)V

    const v7, 0x7f020146

    .line 266
    invoke-virtual {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setDivider(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v6

    const v7, 0x7f0d04e9

    .line 267
    invoke-virtual {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetLeft(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v6

    const v7, 0x7f0d04e9

    .line 268
    invoke-virtual {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetRight(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistDividerChecker;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistDividerChecker;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment$1;)V

    .line 269
    invoke-virtual {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setDividerChecker(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$DividerChecker;)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    move-result-object v2

    .line 271
    .restart local v2    # "dividerItemDecoration":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    new-instance v6, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)V

    iput-object v6, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mPlaylistCardViewableImpl:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;

    .line 272
    iget-object v6, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mPlaylistCardViewableImpl:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->setCardViewable(Lcom/samsung/android/app/musiclibrary/ui/list/cardview/CardViewable;)V

    .line 273
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mForceLoadObserver:Landroid/database/ContentObserver;

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 275
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    const/4 v7, -0x3

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f040038

    iget-object v10, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    const/4 v11, 0x0

    .line 276
    invoke-virtual {v8, v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 275
    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->addHeaderView(ILandroid/view/View;)V

    goto/16 :goto_2
.end method

.method public startActionMode()V
    .locals 1

    .prologue
    .line 507
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->startActionMode()V

    .line 508
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->hasDataConnection(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 510
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/common/dialog/milk/PlaylistFunctionRestrictDialog$PlaylistFunctionRestrictDialogLauncher;->show(Landroid/app/Activity;)Z

    .line 512
    :cond_1
    return-void
.end method
