.class public abstract Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;
.super Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;
.source "AbsMilkActionModeSupportFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/SelectableAdapter$SelectableCallback;
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$AbsActionModeOptionsMenu;
    }
.end annotation


# static fields
.field protected static final MULTI_PLAY_POSITION:I = 0x0

.field protected static final PLAY_ALL_BTN_POSITION:I = -0x1


# instance fields
.field protected mActionMode:Landroid/view/ActionMode;

.field protected mActionModeCallback:Landroid/view/ActionMode$Callback;

.field protected mActionModeMenu:Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$AbsActionModeOptionsMenu;

.field protected mBottomBarMenuManager:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;

.field private mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

.field private mHandler:Landroid/os/Handler;

.field mMetadataChanged:Z

.field private mPlayResultCallback:Lcom/samsung/android/app/music/milk/executorinterface/IPlayResult;

.field private mPlayTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;"
        }
    .end annotation
.end field

.field private mPostDelayed:Ljava/lang/Runnable;

.field private mStartPosition:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;-><init>()V

    .line 71
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mMetadataChanged:Z

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mPlayTracks:Ljava/util/List;

    .line 83
    iput v1, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mStartPosition:I

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mHandler:Landroid/os/Handler;

    .line 87
    new-instance v0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$1;-><init>(Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mPostDelayed:Ljava/lang/Runnable;

    .line 99
    new-instance v0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$2;-><init>(Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;)Lcom/samsung/android/app/music/milk/executorinterface/IPlayResult;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mPlayResultCallback:Lcom/samsung/android/app/music/milk/executorinterface/IPlayResult;

    return-object v0
.end method

.method private playRequest(Ljava/util/List;I)V
    .locals 6
    .param p2, "startPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "playTracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 357
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 358
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "music_service_pref"

    const/4 v4, 0x4

    .line 359
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "shuffle"

    .line 360
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 362
    .local v0, "isShuffleOn":Z
    :goto_0
    if-nez v0, :cond_0

    .line 363
    const/4 p2, 0x0

    .line 367
    .end local v0    # "isShuffleOn":Z
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x100050

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1, p2}, Lcom/samsung/android/app/music/list/common/PlayUtils;->play(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;I)V

    .line 370
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 371
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mPostDelayed:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 373
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 360
    goto :goto_0
.end method


# virtual methods
.method public addPlayQueue(Ljava/util/List;I)V
    .locals 4
    .param p2, "startPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 337
    .local p1, "playTracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_1

    .line 338
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mPlayResultCallback:Lcom/samsung/android/app/music/milk/executorinterface/IPlayResult;

    if-eqz v1, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->getLogTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[addPlayQueue] Play fail"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mPlayResultCallback:Lcom/samsung/android/app/music/milk/executorinterface/IPlayResult;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/samsung/android/app/music/milk/executorinterface/IPlayResult;->playFail(Z)V

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mMetadataChanged:Z

    .line 344
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->getPlayRequestType()Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "requestType":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 346
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mPlayTracks:Ljava/util/List;

    .line 347
    iput p2, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mStartPosition:I

    .line 348
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v1

    .line 349
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->getAlbumIds(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->getPlayRequestType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p0, v2, v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getAlbumImageUrls(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 351
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->playRequest(Ljava/util/List;I)V

    goto :goto_0
.end method

.method protected addToPlaylist(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "playlistTracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    const/4 v2, 0x0

    .line 281
    .line 282
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v1

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->addMilkTrackList(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/List;)[J

    move-result-object v0

    .line 284
    .local v0, "playIdListPlaylist":[J
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0, v2}, Lcom/samsung/android/app/music/common/activity/AddtoPlaylistActivity;->startActivity(Landroid/app/Activity;[JLandroid/os/Bundle;)V

    .line 285
    return-void
.end method

.method protected abstract buttonEnabled(Z)V
.end method

.method protected download(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p1, "downloadTracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 289
    .local v3, "trackIds":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 290
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    .line 292
    .local v2, "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    if-eqz v2, :cond_0

    .line 293
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 289
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 296
    .end local v2    # "track":Lcom/samsung/android/app/music/common/model/SimpleTrack;
    :cond_1
    const-string v4, "@"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, "ids":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity$DownloadBasketLauncher;->startActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method protected abstract getPlayRequestType()Ljava/lang/String;
.end method

.method protected abstract isSelectedAll()Z
.end method

.method public onApiCalled(II)V
    .locals 0
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 378
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 8
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->getLogTag()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[onApiHandled] reqType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const/16 v5, 0x5dd

    if-ne p2, v5, :cond_0

    .line 384
    packed-switch p3, :pswitch_data_0

    .line 410
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mPlayTracks:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mPlayTracks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 411
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mPlayTracks:Ljava/util/List;

    iget v6, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mStartPosition:I

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->playRequest(Ljava/util/List;I)V

    .line 417
    :cond_0
    :goto_0
    return-void

    :pswitch_0
    move-object v2, p4

    .line 386
    check-cast v2, Lcom/samsung/android/app/music/common/model/AlbumImageUrlsList;

    .line 387
    .local v2, "list":Lcom/samsung/android/app/music/common/model/AlbumImageUrlsList;
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/AlbumImageUrlsList;->getImages()Ljava/util/ArrayList;

    move-result-object v1

    .line 389
    .local v1, "imageUrls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/AlbumImageUrls;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_4

    .line 390
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/common/model/AlbumImageUrls;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/AlbumImageUrls;->getUrls()Ljava/util/ArrayList;

    move-result-object v4

    .line 392
    .local v4, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/ImageUrl;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/common/model/ImageUrl;

    .line 393
    .local v3, "url":Lcom/samsung/android/app/music/common/model/ImageUrl;
    const/16 v6, 0x258

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/ImageUrl;->getSize()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 394
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mPlayTracks:Ljava/util/List;

    if-nez v5, :cond_3

    .line 389
    .end local v3    # "url":Lcom/samsung/android/app/music/common/model/ImageUrl;
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 397
    .restart local v3    # "url":Lcom/samsung/android/app/music/common/model/ImageUrl;
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mPlayTracks:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/ImageUrl;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->setImageBigUrl(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->getLogTag()Ljava/lang/String;

    move-result-object v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "track :  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mPlayTracks:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/common/model/SimpleTrack;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 403
    .end local v3    # "url":Lcom/samsung/android/app/music/common/model/ImageUrl;
    .end local v4    # "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/ImageUrl;>;"
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mPlayTracks:Ljava/util/List;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mPlayTracks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 404
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mPlayTracks:Ljava/util/List;

    iget v6, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mStartPosition:I

    invoke-direct {p0, v5, v6}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->playRequest(Ljava/util/List;I)V

    .line 407
    :cond_5
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mPlayTracks:Ljava/util/List;

    goto/16 :goto_0

    .line 384
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 302
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onAttach(Landroid/app/Activity;)V

    .line 303
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    .line 305
    return-void
.end method

.method protected abstract onDeselectAll()V
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onDestroyCalled()V

    .line 329
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onDestroy()V

    .line 330
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onExtrasChanged] action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2
    .param p1, "m"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[onMetadataChanged]"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mMetadataChanged:Z

    .line 248
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 5
    .param p1, "s"    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->getLogTag()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[onPlaybackStateChanged]"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mMetadataChanged:Z

    if-eqz v2, :cond_1

    .line 255
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 256
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 257
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mPostDelayed:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 258
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mMetadataChanged:Z

    .line 260
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mPlayResultCallback:Lcom/samsung/android/app/music/milk/executorinterface/IPlayResult;

    if-eqz v2, :cond_1

    .line 261
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getUser()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v0

    .line 262
    .local v0, "info":Lcom/samsung/android/app/music/common/model/UserInfo;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/UserInfo;->isStreamingUser()Z

    move-result v1

    .line 263
    .local v1, "isSubUser":Z
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onPlaybackStateChanged] Play Success ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mPlayResultCallback:Lcom/samsung/android/app/music/milk/executorinterface/IPlayResult;

    invoke-interface {v2, v1}, Lcom/samsung/android/app/music/milk/executorinterface/IPlayResult;->playSuccess(Z)V

    .line 268
    .end local v0    # "info":Lcom/samsung/android/app/music/common/model/UserInfo;
    .end local v1    # "isSubUser":Z
    :cond_1
    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "extras"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 272
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[onQueueChanged]"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method protected abstract onSelectAll()V
.end method

.method public onSelectAllModeChanged(Z)V
    .locals 11
    .param p1, "selectedAll"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 151
    if-eqz p1, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-virtual {v6, v7}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mActionMode:Landroid/view/ActionMode;

    .line 154
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f040125

    .line 155
    invoke-virtual {v6, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 156
    .local v5, "v":Landroid/view/View;
    const v6, 0x7f12037b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 158
    .local v0, "cb":Landroid/widget/CheckBox;
    sget-boolean v6, Lcom/samsung/android/app/musiclibrary/ui/feature/MusicStaticFeatures;->ROUND_CHECK_BOX:Z

    if-eqz v6, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 160
    .local v2, "resources":Landroid/content/res/Resources;
    const v6, 0x7f020084

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    .line 162
    const v6, 0x7f12037a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 163
    .local v3, "rippleView":Landroid/view/View;
    const v6, 0x7f020250

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 166
    .end local v2    # "resources":Landroid/content/res/Resources;
    .end local v3    # "rippleView":Landroid/view/View;
    :cond_0
    new-array v4, v9, [[I

    new-array v6, v8, [I

    aput-object v6, v4, v8

    .line 167
    .local v4, "states":[[I
    new-array v1, v9, [I

    .line 168
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f11003f

    invoke-static {v6, v7, v10}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v6

    aput v6, v1, v8

    .line 170
    .local v1, "colors":[I
    new-instance v6, Landroid/content/res/ColorStateList;

    invoke-direct {v6, v4, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 172
    new-instance v6, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$3;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$3;-><init>(Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;)V

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->getLogTag()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "onSelectAllModeChanged"

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v6, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v6, v5}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 190
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->sendSASelectionModeOn()V

    .line 192
    .end local v0    # "cb":Landroid/widget/CheckBox;
    .end local v1    # "colors":[I
    .end local v4    # "states":[[I
    .end local v5    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onSelectCountChanged(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 201
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->setSelectIndexOnActionMode(I)V

    .line 202
    return-void
.end method

.method public onSelectModeChanged(Z)V
    .locals 0
    .param p1, "isSelectMode"    # Z

    .prologue
    .line 197
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 314
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onStart()V

    .line 315
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 316
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onStartCalled()V

    .line 317
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onStopCalled()V

    .line 322
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mFragmentMediaChangeCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 323
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onStop()V

    .line 324
    return-void
.end method

.method public primaryColorChanged(I)V
    .locals 0
    .param p1, "primaryColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 310
    return-void
.end method

.method protected abstract sendSASelectionModeOn()V
.end method

.method protected abstract setAdapterSelectMode(Z)V
.end method

.method public setPlayResultCallback(Lcom/samsung/android/app/music/milk/executorinterface/IPlayResult;)V
    .locals 0
    .param p1, "playResultCallback"    # Lcom/samsung/android/app/music/milk/executorinterface/IPlayResult;

    .prologue
    .line 333
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mPlayResultCallback:Lcom/samsung/android/app/music/milk/executorinterface/IPlayResult;

    .line 334
    return-void
.end method

.method protected setSelectIndexOnActionMode(I)V
    .locals 12
    .param p1, "count"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 205
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->getLogTag()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[setSelectIndexOnActionMode] count : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v7, :cond_2

    .line 207
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v7}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v6

    .line 209
    .local v6, "v":Landroid/view/View;
    const v7, 0x7f12037b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 210
    .local v1, "cb":Landroid/widget/CheckBox;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->isSelectedAll()Z

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 212
    const v7, 0x7f12037d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 214
    .local v5, "tx":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mBottomBarMenuManager:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;

    invoke-virtual {v7}, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->getMenu()Landroid/view/Menu;

    move-result-object v3

    .line 215
    .local v3, "menu":Landroid/view/Menu;
    const v7, 0x7f12059c

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 216
    .local v4, "playItem":Landroid/view/MenuItem;
    const v7, 0x7f12059d

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 217
    .local v0, "addItem":Landroid/view/MenuItem;
    const v7, 0x7f12059f

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 218
    .local v2, "downloadItem":Landroid/view/MenuItem;
    if-eqz p1, :cond_3

    .line 219
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    if-eqz v4, :cond_0

    .line 221
    invoke-interface {v4, v11}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 223
    :cond_0
    if-eqz v0, :cond_1

    .line 224
    invoke-interface {v0, v11}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 226
    :cond_1
    if-eqz v2, :cond_2

    .line 227
    invoke-interface {v2, v11}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 242
    .end local v0    # "addItem":Landroid/view/MenuItem;
    .end local v1    # "cb":Landroid/widget/CheckBox;
    .end local v2    # "downloadItem":Landroid/view/MenuItem;
    .end local v3    # "menu":Landroid/view/Menu;
    .end local v4    # "playItem":Landroid/view/MenuItem;
    .end local v5    # "tx":Landroid/widget/TextView;
    .end local v6    # "v":Landroid/view/View;
    :cond_2
    :goto_0
    return-void

    .line 230
    .restart local v0    # "addItem":Landroid/view/MenuItem;
    .restart local v1    # "cb":Landroid/widget/CheckBox;
    .restart local v2    # "downloadItem":Landroid/view/MenuItem;
    .restart local v3    # "menu":Landroid/view/Menu;
    .restart local v4    # "playItem":Landroid/view/MenuItem;
    .restart local v5    # "tx":Landroid/widget/TextView;
    .restart local v6    # "v":Landroid/view/View;
    :cond_3
    const v7, 0x7f0a0399

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    if-eqz v4, :cond_4

    .line 232
    invoke-interface {v4, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 234
    :cond_4
    if-eqz v0, :cond_5

    .line 235
    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 237
    :cond_5
    if-eqz v2, :cond_2

    .line 238
    invoke-interface {v2, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method
