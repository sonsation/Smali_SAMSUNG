.class public Lcom/samsung/android/app/music/list/local/SearchFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;
.source "SearchFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/search/BixbySearchable;
.implements Lcom/samsung/android/app/music/list/common/PlayableList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;,
        Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl;,
        Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;,
        Lcom/samsung/android/app/music/list/local/SearchFragment$SearchDeletable;,
        Lcom/samsung/android/app/music/list/local/SearchFragment$SearchCheckableList;,
        Lcom/samsung/android/app/music/list/local/SearchFragment$ActionModeOptionsMenu;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment",
        "<",
        "Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;",
        ">;",
        "Lcom/samsung/android/app/music/bixby/search/BixbySearchable;",
        "Lcom/samsung/android/app/music/list/common/PlayableList;"
    }
.end annotation


# instance fields
.field private mBixbySearchableImpl:Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;

.field private mMusicDefaultItemAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

.field private final mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

.field private final mOnPrimaryColorChangedListener:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

.field private mPlayableListImpl:Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl;

.field private mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;-><init>()V

    .line 228
    new-instance v0, Lcom/samsung/android/app/music/list/local/SearchFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/SearchFragment$2;-><init>(Lcom/samsung/android/app/music/list/local/SearchFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->mOnPrimaryColorChangedListener:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

    .line 237
    new-instance v0, Lcom/samsung/android/app/music/list/local/SearchFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/SearchFragment$3;-><init>(Lcom/samsung/android/app/music/list/local/SearchFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/list/local/SearchFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/SearchFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/music/list/local/SearchFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/SearchFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/music/list/local/SearchFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/SearchFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/list/local/SearchFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/SearchFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->mMusicDefaultItemAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/list/local/SearchFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/SearchFragment;

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->hideKeyboardAndCursor()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/list/local/SearchFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/SearchFragment;

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->hideKeyboardAndCursor()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/list/local/SearchFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/SearchFragment;
    .param p1, "x1"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment;->playSongs(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/list/local/SearchFragment;Landroid/content/ContentResolver;JI)[J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/SearchFragment;
    .param p1, "x1"    # Landroid/content/ContentResolver;
    .param p2, "x2"    # J
    .param p4, "x3"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getAudioIds(Landroid/content/ContentResolver;JI)[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/list/local/SearchFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/SearchFragment;

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getSearchText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/list/local/SearchFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/SearchFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/SearchFragment;->search(Ljava/lang/String;)V

    return-void
.end method

.method private getAudioIds(Landroid/content/ContentResolver;JI)[J
    .locals 10
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "audioId"    # J
    .param p4, "mimeType"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 332
    const/4 v7, 0x0

    .line 333
    .local v7, "audioIds":[J
    packed-switch p4, :pswitch_data_0

    .line 358
    :cond_0
    :goto_0
    return-object v7

    .line 335
    :pswitch_0
    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/ArtistTrackDetailQueryArgs;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/ArtistTrackDetailQueryArgs;-><init>(Ljava/lang/String;I)V

    .line 337
    .local v6, "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    iput-object v0, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    .line 338
    iget-object v1, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iget-object v2, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iget-object v3, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v4, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v5, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    move-object v0, p1

    .line 339
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 341
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-static {v8}, Lcom/samsung/android/app/music/common/util/MediaDbUtils;->getAudioIds(Landroid/database/Cursor;)[J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v7

    .line 342
    if-eqz v8, :cond_0

    if-eqz v9, :cond_1

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v9, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 338
    :catch_1
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 342
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v8, :cond_2

    if-eqz v1, :cond_3

    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    throw v0

    :catch_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 345
    .end local v6    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .end local v8    # "c":Landroid/database/Cursor;
    :pswitch_1
    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumTrackQueryArgs;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AlbumTrackQueryArgs;-><init>(Ljava/lang/String;)V

    .line 346
    .restart local v6    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    iput-object v0, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    .line 347
    iget-object v1, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iget-object v2, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iget-object v3, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v4, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v5, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    move-object v0, p1

    .line 348
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 350
    .restart local v8    # "c":Landroid/database/Cursor;
    :try_start_4
    invoke-static {v8}, Lcom/samsung/android/app/music/common/util/MediaDbUtils;->getAudioIds(Landroid/database/Cursor;)[J
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v7

    .line 351
    if-eqz v8, :cond_0

    if-eqz v9, :cond_4

    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v9, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 347
    :catch_4
    move-exception v9

    :try_start_6
    throw v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 351
    :catchall_1
    move-exception v0

    if-eqz v8, :cond_5

    if-eqz v9, :cond_6

    :try_start_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    :cond_5
    :goto_3
    throw v0

    :catch_5
    move-exception v1

    invoke-virtual {v9, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 354
    .end local v6    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .end local v8    # "c":Landroid/database/Cursor;
    :pswitch_2
    new-array v7, v1, [J

    .end local v7    # "audioIds":[J
    aput-wide p2, v7, v2

    .line 355
    .restart local v7    # "audioIds":[J
    goto/16 :goto_0

    .line 342
    .restart local v6    # "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .restart local v8    # "c":Landroid/database/Cursor;
    :catchall_2
    move-exception v0

    move-object v1, v9

    goto :goto_1

    .line 333
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private playSongs(I)V
    .locals 14
    .param p1, "position"    # I

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;

    invoke-virtual {v10}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;->getTrackCount()I

    move-result v8

    .line 289
    .local v8, "trackCount":I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;

    invoke-virtual {v10}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;->getItemCount()I

    move-result v7

    .line 290
    .local v7, "totalCount":I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;

    invoke-virtual {v10}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;->getHeaderViewCount()I

    move-result v3

    .line 291
    .local v3, "headerCount":I
    sub-int v10, v7, v8

    sub-int v9, v10, v3

    .line 293
    .local v9, "trackStartPosition":I
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;

    invoke-virtual {v10}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 294
    .local v2, "c":Landroid/database/Cursor;
    new-array v1, v8, [J

    .line 296
    .local v1, "audioIds":[J
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;

    invoke-virtual {v10}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;->getAudioIdColIndex()I

    move-result v0

    .line 297
    .local v0, "audioIdIndex":I
    invoke-interface {v2, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 298
    const/4 v4, 0x0

    .line 300
    .local v4, "i":I
    :goto_0
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    aput-wide v10, v1, v4

    .line 301
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_0

    .line 303
    sub-int v10, p1, v9

    sub-int p1, v10, v3

    .line 304
    new-instance v6, Lcom/samsung/android/app/music/common/util/MediaDbUtils$PlayerListInfo;

    invoke-direct {v6}, Lcom/samsung/android/app/music/common/util/MediaDbUtils$PlayerListInfo;-><init>()V

    .line 305
    .local v6, "playerListInfo":Lcom/samsung/android/app/music/common/util/MediaDbUtils$PlayerListInfo;
    iput-object v1, v6, Lcom/samsung/android/app/music/common/util/MediaDbUtils$PlayerListInfo;->audioIds:[J

    .line 306
    iput p1, v6, Lcom/samsung/android/app/music/common/util/MediaDbUtils$PlayerListInfo;->position:I

    .line 308
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getListType()I

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getKeyword()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v6, Lcom/samsung/android/app/music/common/util/MediaDbUtils$PlayerListInfo;->audioIds:[J

    iget v13, v6, Lcom/samsung/android/app/music/common/util/MediaDbUtils$PlayerListInfo;->position:I

    invoke-static {v10, v11, v12, v13}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->openList(ILjava/lang/String;[JI)V

    .line 310
    return-void

    .end local v6    # "playerListInfo":Lcom/samsung/android/app/music/common/util/MediaDbUtils$PlayerListInfo;
    :cond_0
    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_0
.end method


# virtual methods
.method public deleteItems()V
    .locals 2

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->mMusicDefaultItemAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemAnimator(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;)V

    .line 206
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->mMusicDefaultItemAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    new-instance v1, Lcom/samsung/android/app/music/list/local/SearchFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/SearchFragment$1;-><init>(Lcom/samsung/android/app/music/list/local/SearchFragment;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->setRemoveItemAnimatorFinishedListener(Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;)V

    .line 215
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->deleteItems()V

    .line 216
    return-void
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public getListType()I
    .locals 1

    .prologue
    .line 194
    const v0, 0x100024

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->onAttach(Landroid/app/Activity;)V

    .line 95
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    if-eqz v0, :cond_0

    .line 96
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    .line 98
    :cond_0
    const-string v0, "961"

    const-string v1, "962"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/list/local/SearchFragment;->setScreenId(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method protected onCreateAdapter()Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;
    .locals 2

    .prologue
    .line 176
    new-instance v0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;-><init>(Landroid/app/Fragment;)V

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;->setAudioIdCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;

    const-string v1, "album_id"

    .line 177
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;->setGlobalSearchMode(Z)Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;->build()Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onCreateAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->onCreateAdapter()Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 182
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getActivity()Landroid/app/Activity;

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
    .line 187
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/SearchTrackQueryArgs;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getSearchText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/SearchTrackQueryArgs;-><init>(Ljava/lang/String;)V

    .line 188
    .local v0, "queryArgs":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Search;->getMusicOnlyFilteredSearchUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    .line 189
    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->mOnPrimaryColorChangedListener:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;->removePrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V

    .line 171
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->onDestroyView()V

    .line 172
    return-void
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
    .line 220
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 221
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 222
    .local v0, "count":I
    :goto_0
    if-nez v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemAnimator(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;)V

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->mBixbySearchableImpl:Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;->onSearchComplete()V

    .line 226
    return-void

    .line 221
    .end local v0    # "count":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 81
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/SearchFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 18
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    invoke-super/range {p0 .. p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v3

    .line 107
    .local v3, "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    if-eqz v3, :cond_0

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    .line 109
    .local v14, "activity":Landroid/app/Activity;
    invoke-virtual {v14}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .local v4, "context":Landroid/content/Context;
    move-object v6, v14

    .line 111
    check-cast v6, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    .local v6, "searchView":Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;
    move-object v10, v14

    .line 112
    check-cast v10, Lcom/samsung/android/app/music/common/activity/SearchActivity;

    .local v10, "searchActivity":Lcom/samsung/android/app/music/common/activity/SearchActivity;
    move-object v7, v14

    .line 113
    check-cast v7, Lcom/samsung/android/app/music/network/NetworkManager;

    .line 119
    .local v7, "networkManager":Lcom/samsung/android/app/music/network/NetworkManager;
    sget-boolean v2, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 120
    const/16 v16, 0x0

    .line 124
    .local v16, "screenState":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x4

    new-array v0, v2, [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    move-object/from16 v17, v0

    const/4 v8, 0x0

    new-instance v2, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;

    move-object/from16 v5, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/app/music/bixby/executor/search/local/LocalSearchResultExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Landroid/content/Context;Lcom/samsung/android/app/music/bixby/search/BixbySearchable;Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;Lcom/samsung/android/app/music/network/NetworkManager;)V

    aput-object v2, v17, v8

    const/4 v2, 0x1

    new-instance v5, Lcom/samsung/android/app/music/bixby/executor/search/local/PlayAllLocalSearchResultExecutor;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v5, v3, v0, v1}, Lcom/samsung/android/app/music/bixby/executor/search/local/PlayAllLocalSearchResultExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/bixby/search/BixbySearchable;Lcom/samsung/android/app/music/list/common/PlayableList;)V

    aput-object v5, v17, v2

    const/4 v2, 0x2

    new-instance v8, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;

    move-object v9, v3

    move-object/from16 v11, p0

    move-object v12, v6

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/app/music/bixby/executor/search/all/AllSearchLocalResultExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/common/activity/SearchActivity;Lcom/samsung/android/app/music/bixby/search/BixbySearchable;Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;Lcom/samsung/android/app/music/network/NetworkManager;)V

    aput-object v8, v17, v2

    const/4 v2, 0x3

    new-instance v5, Lcom/samsung/android/app/music/bixby/executor/search/all/PlayAllSearchLocalResultExecutor;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v5, v3, v0, v1}, Lcom/samsung/android/app/music/bixby/executor/search/all/PlayAllSearchLocalResultExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/bixby/search/BixbySearchable;Lcom/samsung/android/app/music/list/common/PlayableList;)V

    aput-object v5, v17, v2

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v3, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V

    .line 133
    .end local v4    # "context":Landroid/content/Context;
    .end local v6    # "searchView":Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;
    .end local v7    # "networkManager":Lcom/samsung/android/app/music/network/NetworkManager;
    .end local v10    # "searchActivity":Lcom/samsung/android/app/music/common/activity/SearchActivity;
    .end local v14    # "activity":Landroid/app/Activity;
    .end local v16    # "screenState":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/list/local/SearchFragment;->mOnItemClickListener:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/list/local/SearchFragment;->setOnItemClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemClickListener;)V

    .line 135
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v8, 0x7f0a0189

    invoke-direct {v2, v5, v8}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/list/local/SearchFragment;->setSelectAll(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;)V

    .line 136
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/list/local/SearchFragment;->setChoiceMode(I)V

    .line 137
    new-instance v2, Lcom/samsung/android/app/music/list/local/SearchFragment$ActionModeOptionsMenu;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v5}, Lcom/samsung/android/app/music/list/local/SearchFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/list/local/SearchFragment;Lcom/samsung/android/app/music/list/local/SearchFragment$1;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/list/local/SearchFragment;->setActionModeMenu(Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;)V

    .line 139
    new-instance v2, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchCheckableList;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v5}, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchCheckableList;-><init>(Lcom/samsung/android/app/music/list/local/SearchFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/list/local/SearchFragment;->setCheckableList(Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;)V

    .line 140
    new-instance v2, Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/samsung/android/app/music/list/SelectedItemPlayableImpl;-><init>(Landroid/app/Fragment;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/list/local/SearchFragment;->setSelectedItemPlayable(Lcom/samsung/android/app/musiclibrary/ui/list/SelectedItemPlayable;)V

    .line 141
    new-instance v2, Lcom/samsung/android/app/music/list/ListShareableImpl;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v5}, Lcom/samsung/android/app/music/list/ListShareableImpl;-><init>(Landroid/app/Fragment;Z)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/list/local/SearchFragment;->setShareable(Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;)V

    .line 142
    new-instance v2, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchDeletable;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/app/music/list/local/SearchFragment$SearchDeletable;-><init>(Lcom/samsung/android/app/music/list/local/SearchFragment;Landroid/app/Fragment;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/list/local/SearchFragment;->setDeleteable(Lcom/samsung/android/app/musiclibrary/ui/Deleteable;)V

    .line 144
    new-instance v2, Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v5}, Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;-><init>(Lcom/samsung/android/app/music/list/local/SearchFragment;Lcom/samsung/android/app/music/list/local/SearchFragment$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/music/list/local/SearchFragment;->mBixbySearchableImpl:Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;

    .line 145
    new-instance v2, Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v5}, Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl;-><init>(Lcom/samsung/android/app/music/list/local/SearchFragment;Lcom/samsung/android/app/music/list/local/SearchFragment$1;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/music/list/local/SearchFragment;->mPlayableListImpl:Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl;

    .line 148
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;-><init>(Landroid/app/Fragment;)V

    const v5, 0x7f020146

    .line 149
    invoke-virtual {v2, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setDivider(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v2

    const v5, 0x7f0d0169

    .line 150
    invoke-virtual {v2, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetLeft(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v2

    const v5, 0x7f0d04e9

    .line 151
    invoke-virtual {v2, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->setInsetRight(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->build()Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    move-result-object v15

    .line 152
    .local v15, "dividerItemDecoration":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;)V

    .line 153
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/app/music/list/local/SearchFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 155
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/NoResultViewCreator;

    const v5, 0x7f0a0138

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/NoResultViewCreator;-><init>(Landroid/app/Fragment;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/list/local/SearchFragment;->setEmptyView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 157
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/list/local/SearchFragment;->setListShown(Z)V

    .line 158
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getListType()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/list/local/SearchFragment;->initListLoader(I)V

    .line 160
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/app/music/list/local/SearchFragment;->mMusicDefaultItemAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/list/local/SearchFragment;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    if-eqz v2, :cond_1

    .line 162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/app/music/list/local/SearchFragment;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/list/local/SearchFragment;->mOnPrimaryColorChangedListener:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

    invoke-interface {v2, v5}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;->addPrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V

    .line 164
    :cond_1
    return-void

    .line 122
    .end local v15    # "dividerItemDecoration":Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;
    .restart local v4    # "context":Landroid/content/Context;
    .restart local v6    # "searchView":Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;
    .restart local v7    # "networkManager":Lcom/samsung/android/app/music/network/NetworkManager;
    .restart local v10    # "searchActivity":Lcom/samsung/android/app/music/common/activity/SearchActivity;
    .restart local v14    # "activity":Landroid/app/Activity;
    :cond_2
    const-string v16, "Search"

    .restart local v16    # "screenState":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public play(II)V
    .locals 1
    .param p1, "beginPosition"    # I
    .param p2, "endPosition"    # I

    .prologue
    .line 319
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->mPlayableListImpl:Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/list/local/SearchFragment$PlayableListImpl;->play(II)V

    .line 320
    return-void
.end method

.method public setOnSearchListener(ILcom/samsung/android/app/music/bixby/search/BixbySearchable$OnSearchListener;)V
    .locals 1
    .param p1, "listType"    # I
    .param p2, "listener"    # Lcom/samsung/android/app/music/bixby/search/BixbySearchable$OnSearchListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 314
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment;->mBixbySearchableImpl:Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/list/local/SearchFragment$BixbySearchableImpl;->setOnSearchListener(ILcom/samsung/android/app/music/bixby/search/BixbySearchable$OnSearchListener;)V

    .line 315
    return-void
.end method
