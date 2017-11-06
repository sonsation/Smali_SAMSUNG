.class Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;
.super Ljava/lang/Object;
.source "PlayerMenuGroup.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlayerMenu"
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAlbumId:J

.field private mArtistId:J

.field private final mContext:Landroid/content/Context;

.field private final mFragment:Landroid/app/Fragment;

.field private final mIsWfdSupported:Z

.field private final mItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Fragment;)V
    .locals 4
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    const-wide/16 v2, -0x1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mItems:Landroid/util/SparseArray;

    .line 372
    iput-wide v2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mAlbumId:J

    .line 374
    iput-wide v2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mArtistId:J

    .line 112
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mActivity:Landroid/app/Activity;

    .line 113
    iput-object p1, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mFragment:Landroid/app/Fragment;

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mContext:Landroid/content/Context;

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWfdSupported(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mIsWfdSupported:Z

    .line 116
    return-void
.end method

.method private addGoAlbumMenuItem(Landroid/util/SparseArray;ILandroid/app/Activity;IJLjava/lang/String;)V
    .locals 7
    .param p2, "idRes"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p3, "activity"    # Landroid/app/Activity;
    .param p4, "cpAttrs"    # I
    .param p5, "albumId"    # J
    .param p7, "album"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;",
            ">;I",
            "Landroid/app/Activity;",
            "IJ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 412
    .local p1, "items":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;>;"
    sparse-switch p4, :sswitch_data_0

    .line 421
    new-instance v1, Lcom/samsung/android/app/music/common/menu/HiddenMenuItem;

    invoke-direct {v1, p2}, Lcom/samsung/android/app/music/common/menu/HiddenMenuItem;-><init>(I)V

    .line 423
    .local v1, "menuItem":Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;
    :goto_0
    invoke-virtual {p1, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 424
    return-void

    .line 414
    .end local v1    # "menuItem":Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;
    :sswitch_0
    new-instance v1, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$MilkGoAlbumMenuItem;

    invoke-direct {v1, p2, p3, p5, p6}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$MilkGoAlbumMenuItem;-><init>(ILandroid/app/Activity;J)V

    .line 415
    .restart local v1    # "menuItem":Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;
    goto :goto_0

    .line 418
    .end local v1    # "menuItem":Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;
    :sswitch_1
    new-instance v1, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$LocalGoAlbumMenuItem;

    move v2, p2

    move-object v3, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$LocalGoAlbumMenuItem;-><init>(ILandroid/app/Activity;JLjava/lang/String;)V

    .line 419
    .restart local v1    # "menuItem":Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;
    goto :goto_0

    .line 412
    :sswitch_data_0
    .sparse-switch
        0x10001 -> :sswitch_1
        0x80001 -> :sswitch_1
        0x80002 -> :sswitch_0
    .end sparse-switch
.end method

.method private addGoArtistMenuItem(Landroid/util/SparseArray;ILandroid/app/Activity;IJLjava/lang/String;)V
    .locals 7
    .param p2, "idRes"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p3, "activity"    # Landroid/app/Activity;
    .param p4, "cpAttrs"    # I
    .param p5, "artistId"    # J
    .param p7, "artist"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;",
            ">;I",
            "Landroid/app/Activity;",
            "IJ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 429
    .local p1, "items":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;>;"
    sparse-switch p4, :sswitch_data_0

    .line 435
    new-instance v1, Lcom/samsung/android/app/music/common/menu/HiddenMenuItem;

    invoke-direct {v1, p2}, Lcom/samsung/android/app/music/common/menu/HiddenMenuItem;-><init>(I)V

    .line 437
    .local v1, "menuItem":Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;
    :goto_0
    invoke-virtual {p1, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 438
    return-void

    .line 432
    .end local v1    # "menuItem":Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;
    :sswitch_0
    new-instance v1, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$LocalGoArtistMenuItem;

    move v2, p2

    move-object v3, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$LocalGoArtistMenuItem;-><init>(ILandroid/app/Activity;JLjava/lang/String;)V

    .line 433
    .restart local v1    # "menuItem":Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;
    goto :goto_0

    .line 429
    :sswitch_data_0
    .sparse-switch
        0x10001 -> :sswitch_0
        0x80001 -> :sswitch_0
    .end sparse-switch
.end method

.method private isActiveNowPlayingListInPlayer()Z
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/samsung/android/app/music/common/player/PlayerControllable;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/samsung/android/app/music/common/player/PlayerControllable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/common/player/PlayerControllable;->isShowingQueue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    const/4 v0, 0x1

    .line 367
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDrmPlaying()Z
    .locals 3

    .prologue
    .line 283
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    const-string v2, "com.samsung.android.app.music.metadata.PLAYING_URI"

    .line 284
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/drm/LocalDrmServer;->isDrmFile(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private onOptionsItemSelectedInternal(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 401
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mItems:Landroid/util/SparseArray;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 402
    .local v0, "menuItem":Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;
    if-eqz v0, :cond_0

    .line 403
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 404
    const/4 v1, 0x1

    .line 406
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onPrepareOptionsMenuInternal(Landroid/view/Menu;)V
    .locals 23
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 377
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v21

    .line 378
    .local v21, "meta":Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    const-string v5, "com.samsung.android.app.music.metadata.CP_ATTRS"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v9, v6

    .line 379
    .local v9, "cpAttrs":I
    const-string v5, "com.samsung.android.app.music.metadata.ALBUM_ID"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 380
    .local v10, "albumId":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mAlbumId:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_0

    .line 381
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mAlbumId:J

    .line 382
    const-string v5, "android.media.metadata.ALBUM"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 383
    .local v12, "album":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mItems:Landroid/util/SparseArray;

    const v7, 0x7f1205bb

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->addGoAlbumMenuItem(Landroid/util/SparseArray;ILandroid/app/Activity;IJLjava/lang/String;)V

    .line 386
    .end local v12    # "album":Ljava/lang/String;
    :cond_0
    const-string v5, "com.samsung.android.app.music.metadata.ARTIST_ID"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 387
    .local v18, "artistId":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mArtistId:J

    cmp-long v5, v6, v18

    if-eqz v5, :cond_1

    .line 388
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mArtistId:J

    .line 389
    const-string v5, "android.media.metadata.ARTIST"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 390
    .local v20, "artist":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mItems:Landroid/util/SparseArray;

    const v15, 0x7f1205bc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mActivity:Landroid/app/Activity;

    move-object/from16 v16, v0

    move-object/from16 v13, p0

    move/from16 v17, v9

    invoke-direct/range {v13 .. v20}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->addGoArtistMenuItem(Landroid/util/SparseArray;ILandroid/app/Activity;IJLjava/lang/String;)V

    .line 394
    .end local v20    # "artist":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v22

    .line 395
    .local v22, "size":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move/from16 v0, v22

    if-ge v4, v0, :cond_2

    .line 396
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    move-object/from16 v0, p1

    invoke-interface {v5, v0}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 395
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 398
    :cond_2
    return-void
.end method

.method private performMenuAddToPlaylistSingleItem()V
    .locals 5

    .prologue
    .line 317
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getCurrentAudioId()J

    move-result-wide v0

    .line 318
    .local v0, "id":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 319
    invoke-static {}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "performMenuAddToPlaylistSingleItem but id is empty id !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide v0, v3, v4

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/common/activity/AddtoPlaylistActivity;->startActivity(Landroid/app/Activity;[JLandroid/os/Bundle;)V

    .line 323
    const-string v2, "4029"

    invoke-static {v2}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup;->sendSamsungAnalyticsLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private performMenuDeleteCurrentSong()V
    .locals 4

    .prologue
    .line 327
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/Deleteable;

    .line 328
    .local v0, "deleteable":Lcom/samsung/android/app/musiclibrary/ui/Deleteable;
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/Deleteable;->deleteItems()V

    .line 329
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mContext:Landroid/content/Context;

    const-string v2, "DETE"

    const-string v3, "Full Player"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v1, "4028"

    invoke-static {v1}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup;->sendSamsungAnalyticsLog(Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method private performMenuDetails()V
    .locals 4

    .prologue
    .line 303
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/samsung/android/app/music/common/player/PlayerControllable;

    .line 304
    .local v1, "playerControllable":Lcom/samsung/android/app/music/common/player/PlayerControllable;
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mFragment:Landroid/app/Fragment;

    check-cast v2, Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->getCpAttrs()I

    move-result v0

    .line 305
    .local v0, "cpAttrs":I
    invoke-static {v0}, Lcom/samsung/android/app/music/provider/CpAttrs;->getCpName(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 310
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/common/player/PlayerControllable;->launchDetails(Landroid/os/Bundle;)V

    .line 312
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mContext:Landroid/content/Context;

    const-string v3, "MPDE"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 313
    const-string v2, "4032"

    invoke-static {v2}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup;->sendSamsungAnalyticsLog(Ljava/lang/String;)V

    .line 314
    return-void

    .line 307
    :pswitch_0
    invoke-interface {v1}, Lcom/samsung/android/app/music/common/player/PlayerControllable;->launchDmsDlnaDetailsDialog()V

    goto :goto_0

    .line 305
    :pswitch_data_0
    .packed-switch 0x20000
        :pswitch_0
    .end packed-switch
.end method

.method private performMenuPlayOnOtherDevice()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mContext:Landroid/content/Context;

    const-string v1, "CHPL"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/samsung/android/app/music/common/player/PlayerControllable;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/common/player/PlayerControllable;->launchChangePlayer(Z)V

    .line 336
    return-void
.end method

.method private performMenuScreenSharing()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 340
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mContext:Landroid/content/Context;

    new-array v3, v0, [J

    .line 341
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getCurrentAudioId()J

    move-result-wide v4

    aput-wide v4, v3, v1

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/common/util/MediaDbUtils;->isExistDrm(Landroid/content/Context;[J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 347
    .local v0, "isSupportDlna":Z
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->startWfdPickerDialog(Landroid/content/Context;Z)V

    .line 348
    return-void

    .end local v0    # "isSupportDlna":Z
    :cond_0
    move v0, v1

    .line 341
    goto :goto_0
.end method

.method private performMenuSetAs()V
    .locals 5

    .prologue
    .line 351
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getCurrentAudioId()J

    move-result-wide v0

    .line 352
    .local v0, "audioId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 353
    invoke-static {}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "performMenuSetAs() audioId is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v0, v1}, Lcom/samsung/android/app/music/common/player/setas/control/SetAsActivity;->startActivity(Landroid/app/Activity;J)V

    .line 358
    const-string v2, "4031"

    invoke-static {v2}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup;->sendSamsungAnalyticsLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateMenuVisibleAddToPlaylistSingleItem(Landroid/view/Menu;I)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "id"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 253
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 254
    .local v0, "item":Landroid/view/MenuItem;
    if-nez v0, :cond_0

    .line 266
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mContext:Landroid/content/Context;

    const v3, 0x7f0a006d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, "title":Ljava/lang/String;
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 260
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mFragment:Landroid/app/Fragment;

    check-cast v2, Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->getCpAttrs()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/music/provider/CpAttrs;->getCpName(I)I

    move-result v2

    const/high16 v3, 0x20000

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mFragment:Landroid/app/Fragment;

    check-cast v2, Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    .line 261
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->isEmptyMedia()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 262
    :cond_1
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 264
    :cond_2
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateMenuVisibleDeleteCurrentSong(Landroid/view/Menu;I)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "id"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 165
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 166
    .local v0, "item":Landroid/view/MenuItem;
    if-nez v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->isLocalTrack()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->isActiveNowPlayingListInPlayer()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 170
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 172
    :cond_2
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateMenuVisibleDetails(Landroid/view/Menu;I)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "id"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 289
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 290
    .local v1, "item":Landroid/view/MenuItem;
    if-nez v1, :cond_0

    .line 300
    :goto_0
    return-void

    .line 293
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->isLocalTrack()Z

    move-result v2

    if-nez v2, :cond_1

    .line 294
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 296
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mFragment:Landroid/app/Fragment;

    check-cast v2, Lcom/samsung/android/app/music/common/player/PlayerControllable;

    .line 297
    invoke-interface {v2}, Lcom/samsung/android/app/music/common/player/PlayerControllable;->isLaunchableDetails()Z

    move-result v0

    .line 298
    .local v0, "isLaunchableDetails":Z
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateMenuVisiblePlayOnOtherDevice(Landroid/view/Menu;I)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "id"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 177
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 178
    .local v0, "item":Landroid/view/MenuItem;
    if-nez v0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 181
    :cond_0
    sget-boolean v2, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_FW_DLNA:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mIsWfdSupported:Z

    if-nez v2, :cond_1

    .line 182
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 185
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->isScreenSharingSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 186
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 189
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isKnoxModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mContext:Landroid/content/Context;

    .line 190
    invoke-static {v2}, Lcom/samsung/android/app/music/support/samsung/emergencymode/EmergencyManagerCompat;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 191
    :cond_3
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 195
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SideSyncManager;->isSideSyncConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 196
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 199
    :cond_5
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->isHdmiConnected()Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v1, 0x1

    :cond_6
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateMenuVisibleScreenSharing(Landroid/view/Menu;I)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "id"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 203
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 204
    .local v0, "item":Landroid/view/MenuItem;
    if-nez v0, :cond_0

    .line 234
    :goto_0
    return-void

    .line 208
    :cond_0
    sget-boolean v2, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-nez v2, :cond_1

    .line 209
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 212
    :cond_1
    sget-boolean v2, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_FW_DLNA:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mIsWfdSupported:Z

    if-nez v2, :cond_2

    .line 213
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 216
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->isScreenSharingEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 217
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 223
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isKnoxModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mContext:Landroid/content/Context;

    .line 224
    invoke-static {v2}, Lcom/samsung/android/app/music/support/samsung/emergencymode/EmergencyManagerCompat;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 225
    :cond_4
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 229
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SideSyncManager;->isSideSyncConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 230
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 233
    :cond_6
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->isHdmiConnected()Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v1, 0x1

    :cond_7
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateMenuVisibleSetAs(Landroid/view/Menu;I)V
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "id"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 269
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 270
    .local v1, "item":Landroid/view/MenuItem;
    if-nez v1, :cond_0

    .line 280
    :goto_0
    return-void

    .line 274
    :cond_0
    const/4 v0, 0x0

    .line 275
    .local v0, "isVisible":Z
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/player/setas/info/SetAsFeatures;->isFeatureOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->isLocalTrack()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 276
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isKnoxModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->isDrmPlaying()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mContext:Landroid/content/Context;

    .line 277
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getCurrentAudioId()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/samsung/android/app/music/common/privatemode/PrivateUtils;->isPrivateModeItem(Landroid/content/Context;J)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    .line 279
    :cond_1
    :goto_1
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 277
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateMenuVisibleSoundAlive(Landroid/view/Menu;I)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "id"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 237
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 238
    .local v0, "item":Landroid/view/MenuItem;
    if-nez v0, :cond_0

    .line 250
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/util/UiUtils;->isUPSMMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 242
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 244
    :cond_1
    sget-boolean v1, Lcom/samsung/android/app/music/common/legacy/soundalive/info/LegacySoundAliveConstants$Version;->V4:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/util/UiUtils;->isUPSMMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 245
    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 247
    :cond_3
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 120
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 137
    const/4 v0, 0x1

    .line 138
    .local v0, "handled":Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 158
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->onOptionsItemSelectedInternal(Landroid/view/MenuItem;)Z

    move-result v0

    .line 161
    :goto_0
    return v0

    .line 140
    :sswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->performMenuPlayOnOtherDevice()V

    goto :goto_0

    .line 143
    :sswitch_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->performMenuScreenSharing()V

    goto :goto_0

    .line 146
    :sswitch_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->performMenuDeleteCurrentSong()V

    goto :goto_0

    .line 149
    :sswitch_3
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->performMenuDetails()V

    goto :goto_0

    .line 152
    :sswitch_4
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->performMenuAddToPlaylistSingleItem()V

    goto :goto_0

    .line 155
    :sswitch_5
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->performMenuSetAs()V

    goto :goto_0

    .line 138
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f12000f -> :sswitch_5
        0x7f1205ae -> :sswitch_2
        0x7f1205ba -> :sswitch_4
        0x7f1205bf -> :sswitch_0
        0x7f1205c0 -> :sswitch_1
        0x7f1205c3 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 125
    const v0, 0x7f1205bf

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->updateMenuVisiblePlayOnOtherDevice(Landroid/view/Menu;I)V

    .line 126
    const v0, 0x7f1205c0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->updateMenuVisibleScreenSharing(Landroid/view/Menu;I)V

    .line 127
    const v0, 0x7f1205ae

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->updateMenuVisibleDeleteCurrentSong(Landroid/view/Menu;I)V

    .line 128
    const v0, 0x7f12001d

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->updateMenuVisibleSoundAlive(Landroid/view/Menu;I)V

    .line 129
    const v0, 0x7f1205ba

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->updateMenuVisibleAddToPlaylistSingleItem(Landroid/view/Menu;I)V

    .line 130
    const v0, 0x7f12000f

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->updateMenuVisibleSetAs(Landroid/view/Menu;I)V

    .line 131
    const v0, 0x7f1205c3

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->updateMenuVisibleDetails(Landroid/view/Menu;I)V

    .line 132
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/menu/PlayerMenuGroup$PlayerMenu;->onPrepareOptionsMenuInternal(Landroid/view/Menu;)V

    .line 133
    return-void
.end method
