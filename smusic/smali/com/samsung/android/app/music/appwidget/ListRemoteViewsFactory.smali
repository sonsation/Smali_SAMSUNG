.class Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;
.super Ljava/lang/Object;
.source "WidgetListService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory$TagStatus;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EMPTY_LIST:[J

.field private static final MAX_FONT_SCALE:F = 1.2f

.field private static final MIN_FONT_SCALE:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "SV-WidgetList"

.field private static final TAG_BACKGROUND_DRAWABLE_MAP:Landroid/util/SparseIntArray;


# instance fields
.field private mActiveQueueType:I

.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mDefaultItemTextColor:I

.field private mDefaultItemTextDimColor:I

.field private mIsOfflineMode:Z

.field private mLastSavedPosition:I

.field private mList:[J

.field private mPlayingItemTextColor:I

.field private mPlayingItemTextDimColor:I

.field private mSortMode:I

.field private mText1Idx:I

.field private mText2Idx:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    new-array v0, v0, [J

    sput-object v0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->EMPTY_LIST:[J

    .line 178
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->TAG_BACKGROUND_DRAWABLE_MAP:Landroid/util/SparseIntArray;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mText1Idx:I

    .line 166
    iput v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mText2Idx:I

    .line 170
    iput v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mLastSavedPosition:I

    .line 172
    iput v1, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mActiveQueueType:I

    .line 174
    iput v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mSortMode:I

    .line 176
    iput-boolean v1, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mIsOfflineMode:Z

    .line 184
    iput-object p1, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mContext:Landroid/content/Context;

    .line 185
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->changeListItemTextColor(Landroid/content/Context;)V

    .line 186
    return-void
.end method

.method private changeDarkDrawableMap()V
    .locals 3

    .prologue
    .line 218
    sget-object v0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->TAG_BACKGROUND_DRAWABLE_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 219
    sget-object v0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->TAG_BACKGROUND_DRAWABLE_MAP:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const v2, 0x7f0203c4

    .line 220
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 221
    sget-object v0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->TAG_BACKGROUND_DRAWABLE_MAP:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    const v2, 0x7f0203c5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 223
    sget-object v0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->TAG_BACKGROUND_DRAWABLE_MAP:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    const v2, 0x7f0203c0

    .line 224
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 225
    sget-object v0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->TAG_BACKGROUND_DRAWABLE_MAP:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    const v2, 0x7f0203c1

    .line 226
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 227
    return-void
.end method

.method private changeDrawableMap()V
    .locals 3

    .prologue
    .line 207
    sget-object v0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->TAG_BACKGROUND_DRAWABLE_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 208
    sget-object v0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->TAG_BACKGROUND_DRAWABLE_MAP:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const v2, 0x7f0203c3

    .line 209
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 210
    sget-object v0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->TAG_BACKGROUND_DRAWABLE_MAP:Landroid/util/SparseIntArray;

    const/4 v1, 0x2

    const v2, 0x7f0203c6

    .line 211
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 212
    sget-object v0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->TAG_BACKGROUND_DRAWABLE_MAP:Landroid/util/SparseIntArray;

    const/4 v1, 0x3

    const v2, 0x7f02014c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 213
    sget-object v0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->TAG_BACKGROUND_DRAWABLE_MAP:Landroid/util/SparseIntArray;

    const/4 v1, 0x4

    const v2, 0x7f0203c2

    .line 214
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 215
    return-void
.end method

.method private changeListItemTextColor(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 189
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 190
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/appwidget/HomeScreenWidgetUpdateHelper;->isNeedDarkColor(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    const v1, 0x7f11026e

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mDefaultItemTextColor:I

    .line 192
    const v1, 0x7f11026f

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mDefaultItemTextDimColor:I

    .line 193
    const v1, 0x7f11026a

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mPlayingItemTextColor:I

    .line 194
    const v1, 0x7f11026b

    .line 195
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mPlayingItemTextDimColor:I

    .line 196
    invoke-direct {p0}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->changeDarkDrawableMap()V

    .line 204
    :goto_0
    return-void

    .line 198
    :cond_0
    const v1, 0x7f11026d

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mDefaultItemTextColor:I

    .line 199
    const v1, 0x7f110270

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mDefaultItemTextDimColor:I

    .line 200
    const v1, 0x7f110269

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mPlayingItemTextColor:I

    .line 201
    const v1, 0x7f11026c

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mPlayingItemTextDimColor:I

    .line 202
    invoke-direct {p0}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->changeDrawableMap()V

    goto :goto_0
.end method

.method private closeCursor()V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    .line 481
    :cond_0
    return-void
.end method

.method private getAudioIds(Ljava/util/List;)[J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 536
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    if-nez p1, :cond_0

    .line 537
    sget-object v1, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->EMPTY_LIST:[J

    .line 553
    :goto_0
    return-object v1

    .line 540
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 541
    .local v3, "size":I
    if-nez v3, :cond_1

    .line 542
    sget-object v1, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->EMPTY_LIST:[J

    goto :goto_0

    .line 545
    :cond_1
    new-array v1, v3, [J

    .line 546
    .local v1, "ids":[J
    const/4 v2, 0x0

    .line 549
    .local v2, "index":I
    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/session/MediaSession$QueueItem;

    invoke-virtual {v4}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaDescription;->getMediaId()Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->convertAudioId(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v1, v2

    .line 551
    add-int/lit8 v2, v2, 0x1

    .line 552
    if-lt v2, v3, :cond_2

    goto :goto_0
.end method

.method private getNowPlayingCursor(ILjava/util/List;Landroid/os/Bundle;)Landroid/database/Cursor;
    .locals 2
    .param p1, "activeQueueType"    # I
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    const/4 v0, 0x0

    .line 558
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 564
    :cond_0
    :goto_0
    return-object v0

    .line 561
    :cond_1
    if-eqz p2, :cond_0

    .line 564
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/NowPlayingCursor;-><init>(Ljava/util/List;Landroid/os/Bundle;Z)V

    goto :goto_0
.end method

.method private getSortMode(ILcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;)I
    .locals 1
    .param p1, "activeQueueType"    # I
    .param p2, "playerQueue"    # Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    .prologue
    const/4 v0, 0x1

    .line 569
    if-ne p1, v0, :cond_0

    .line 572
    :goto_0
    return v0

    :cond_0
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getSortMode()I

    move-result v0

    goto :goto_0
.end method

.method private initializeCursorIndex(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 484
    if-eqz p1, :cond_0

    .line 485
    const-string/jumbo v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mText1Idx:I

    .line 486
    const-string v0, "artist"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mText2Idx:I

    .line 488
    :cond_0
    return-void
.end method

.method private isEnabled(Landroid/database/Cursor;)Z
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 393
    invoke-direct {p0}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->isOnlineDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->isOnline(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLocalMode(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 576
    invoke-static {p1}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object v0

    .line 577
    .local v0, "playerManager":Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->isLocalMode()Z

    move-result v1

    return v1
.end method

.method private isOnline(Landroid/database/Cursor;)Z
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 397
    const-string v2, "cp_attrs"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 398
    .local v1, "cpAttrsColIndex":I
    const/4 v0, -0x1

    .line 399
    .local v0, "cpAttrs":I
    if-ltz v1, :cond_0

    .line 400
    iget-object v2, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 402
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/app/music/provider/CpAttrs;->isOnline(I)Z

    move-result v2

    return v2
.end method

.method private isOnlineDisabled()Z
    .locals 2

    .prologue
    .line 407
    iget v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mSortMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mIsOfflineMode:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPlayingSong(Landroid/database/Cursor;I)Z
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "position"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 382
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getServiceFacade()Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    move-result-object v0

    .line 383
    .local v0, "facade":Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;
    if-nez v0, :cond_1

    iget v1, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mLastSavedPosition:I

    .line 385
    .local v1, "lastPosition":I
    :goto_0
    instance-of v5, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    if-eqz v5, :cond_3

    move-object v2, p1

    .line 386
    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    .line 387
    .local v2, "nowPlayingCursor":Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;
    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->getOrderedPosition(I)I

    move-result v5

    if-ne v5, p2, :cond_2

    .line 389
    .end local v2    # "nowPlayingCursor":Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;
    :cond_0
    :goto_1
    return v3

    .line 384
    .end local v1    # "lastPosition":I
    :cond_1
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getMusicExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "extra.list_position"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .restart local v1    # "lastPosition":I
    .restart local v2    # "nowPlayingCursor":Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;
    :cond_2
    move v3, v4

    .line 387
    goto :goto_1

    .line 389
    .end local v2    # "nowPlayingCursor":Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;
    :cond_3
    if-eq v1, p2, :cond_0

    move v3, v4

    goto :goto_1
.end method

.method private reloadAllTrack()V
    .locals 7

    .prologue
    .line 492
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->isLegalAgreed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 493
    const-string v0, "SMUSIC-SV-WidgetList"

    const-string/jumbo v1, "reloadAllTrack() - isLegalAgreed : false"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :goto_0
    return-void

    .line 496
    :cond_0
    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;

    invoke-direct {v6}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;-><init>()V

    .line 497
    .local v6, "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mContext:Landroid/content/Context;

    iget-object v1, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iget-object v2, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iget-object v3, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v4, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v5, v6, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    .line 498
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    .line 500
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/AudioIdUtils;->getAudioIds(Landroid/database/Cursor;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mList:[J

    goto :goto_0
.end method

.method private reloadCoreQueueFromPreferences(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    .line 504
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/AllTrackQueryArgs;-><init>()V

    .line 505
    .local v0, "args":Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    new-array v3, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    iput-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    .line 507
    invoke-static {}, Lcom/samsung/android/app/music/service/metadata/LocalMusicContents;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/app/music/service/metadata/LocalPlayingItemFactory;

    invoke-direct {v4}, Lcom/samsung/android/app/music/service/metadata/LocalPlayingItemFactory;-><init>()V

    .line 508
    invoke-static {p1}, Lcom/samsung/android/app/music/service/PlayerSettingManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object v5

    .line 507
    invoke-static {p1, v3, v4, v5, v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueFactory;->createPlayerQueue(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory;Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    move-result-object v2

    .line 510
    .local v2, "playerQueue":Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;
    invoke-interface {v2, v6}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->loadSavedValues(Z)V

    .line 511
    invoke-interface {v2, v6}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->reloadQueue(Z)V

    .line 513
    invoke-interface {v2, v6}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtraInformation(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mActiveQueueType:I

    .line 514
    iget v3, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mActiveQueueType:I

    invoke-direct {p0, v3, v2}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->getSortMode(ILcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mSortMode:I

    .line 515
    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getQueue()Ljava/util/List;

    move-result-object v1

    .line 516
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    iget v3, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mActiveQueueType:I

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {p0, v3, v1, v4}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->getNowPlayingCursor(ILjava/util/List;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    .line 517
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->getAudioIds(Ljava/util/List;)[J

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mList:[J

    .line 518
    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getNowPlayingListPosition()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mLastSavedPosition:I

    .line 519
    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->release()V

    .line 520
    return-void
.end method

.method private reloadQueue()V
    .locals 4

    .prologue
    .line 465
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->getServiceFacade()Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    move-result-object v0

    .line 466
    .local v0, "facade":Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;
    if-nez v0, :cond_0

    .line 467
    const-string v1, "SV-WidgetList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onDataSetChanged() but Service is null. Reload list info from pref"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object v1, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->reloadCoreQueueFromPreferences(Landroid/content/Context;)V

    .line 473
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->isLocalMode(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mIsOfflineMode:Z

    .line 474
    return-void

    .line 471
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->reloadQueueFromService(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;)V

    goto :goto_0
.end method

.method private reloadQueueFromService(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;)V
    .locals 4
    .param p1, "facade"    # Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    .prologue
    .line 523
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getQueueList()Ljava/util/List;

    move-result-object v1

    .line 527
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaSession$QueueItem;>;"
    const/16 v2, 0xe

    invoke-interface {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getExtraInformation(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mSortMode:I

    .line 529
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getMusicExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 530
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mActiveQueueType:I

    .line 531
    iget v2, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mActiveQueueType:I

    invoke-direct {p0, v2, v1, v0}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->getNowPlayingCursor(ILjava/util/List;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    .line 532
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->getAudioIds(Ljava/util/List;)[J

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mList:[J

    .line 533
    return-void
.end method

.method private setClickFillIntent(Landroid/widget/RemoteViews;Landroid/database/Cursor;I)V
    .locals 6
    .param p1, "rv"    # Landroid/widget/RemoteViews;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "position"    # I

    .prologue
    .line 337
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.samsung.android.app.music.core.action.appwidget.ACTION_MUSIC_LIST_CLICKED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 338
    .local v1, "i":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 339
    .local v0, "extras":Landroid/os/Bundle;
    move v3, p3

    .line 340
    .local v3, "queuePosition":I
    instance-of v4, p2, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    if-eqz v4, :cond_0

    move-object v2, p2

    .line 341
    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    .line 342
    .local v2, "nowPlayingCursor":Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;
    invoke-virtual {v2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->getQueuePosition(I)I

    move-result v3

    .line 344
    .end local v2    # "nowPlayingCursor":Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;
    :cond_0
    const-string v4, "extra_list_position"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 345
    const-string v4, "extra_list_ids"

    iget-object v5, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mList:[J

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 346
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 347
    iget-object v4, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    const v4, 0x7f12058f

    invoke-virtual {p1, v4, v1}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 349
    return-void
.end method

.method private updateDisableItemView(Landroid/widget/RemoteViews;I)V
    .locals 2
    .param p1, "rv"    # Landroid/widget/RemoteViews;
    .param p2, "position"    # I

    .prologue
    .line 314
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->isPlayingSong(Landroid/database/Cursor;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mPlayingItemTextDimColor:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->updateTextColor(Landroid/widget/RemoteViews;I)V

    .line 319
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->setClickFillIntent(Landroid/widget/RemoteViews;Landroid/database/Cursor;I)V

    .line 320
    return-void

    .line 317
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mDefaultItemTextDimColor:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->updateTextColor(Landroid/widget/RemoteViews;I)V

    goto :goto_0
.end method

.method private updateEnableItemView(Landroid/widget/RemoteViews;I)V
    .locals 1
    .param p1, "rv"    # Landroid/widget/RemoteViews;
    .param p2, "position"    # I

    .prologue
    .line 323
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->isPlayingSong(Landroid/database/Cursor;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mPlayingItemTextColor:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->updateTextColor(Landroid/widget/RemoteViews;I)V

    .line 328
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->setClickFillIntent(Landroid/widget/RemoteViews;Landroid/database/Cursor;I)V

    .line 329
    return-void

    .line 326
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mDefaultItemTextColor:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->updateTextColor(Landroid/widget/RemoteViews;I)V

    goto :goto_0
.end method

.method private updateTagColor(Landroid/widget/RemoteViews;II)V
    .locals 2
    .param p1, "rv"    # Landroid/widget/RemoteViews;
    .param p2, "color"    # I
    .param p3, "drawableResId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 377
    const v0, 0x7f120244

    invoke-virtual {p1, v0, p2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 378
    const v0, 0x7f120591

    const-string/jumbo v1, "setBackgroundResource"

    invoke-virtual {p1, v0, v1, p3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 379
    return-void
.end method

.method private updateTagView(Landroid/widget/RemoteViews;IZ)V
    .locals 3
    .param p1, "rv"    # Landroid/widget/RemoteViews;
    .param p2, "position"    # I
    .param p3, "isEnabled"    # Z

    .prologue
    const v1, 0x7f120591

    .line 352
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->isOnline(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 353
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 354
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->isPlayingSong(Landroid/database/Cursor;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    if-eqz p3, :cond_0

    .line 356
    iget v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mPlayingItemTextColor:I

    sget-object v1, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->TAG_BACKGROUND_DRAWABLE_MAP:Landroid/util/SparseIntArray;

    const/4 v2, 0x1

    .line 357
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 356
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->updateTagColor(Landroid/widget/RemoteViews;II)V

    .line 374
    :goto_0
    return-void

    .line 359
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mPlayingItemTextDimColor:I

    sget-object v1, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->TAG_BACKGROUND_DRAWABLE_MAP:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    .line 360
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 359
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->updateTagColor(Landroid/widget/RemoteViews;II)V

    goto :goto_0

    .line 363
    :cond_1
    if-eqz p3, :cond_2

    .line 364
    iget v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mDefaultItemTextColor:I

    sget-object v1, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->TAG_BACKGROUND_DRAWABLE_MAP:Landroid/util/SparseIntArray;

    const/4 v2, 0x3

    .line 365
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 364
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->updateTagColor(Landroid/widget/RemoteViews;II)V

    goto :goto_0

    .line 367
    :cond_2
    iget v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mDefaultItemTextDimColor:I

    sget-object v1, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->TAG_BACKGROUND_DRAWABLE_MAP:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    .line 368
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 367
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->updateTagColor(Landroid/widget/RemoteViews;II)V

    goto :goto_0

    .line 372
    :cond_3
    const/16 v0, 0x8

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0
.end method

.method private updateTextColor(Landroid/widget/RemoteViews;I)V
    .locals 1
    .param p1, "rv"    # Landroid/widget/RemoteViews;
    .param p2, "color"    # I

    .prologue
    .line 332
    const v0, 0x7f120592

    invoke-virtual {p1, v0, p2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 333
    const v0, 0x7f120593

    invoke-virtual {p1, v0, p2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 334
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .prologue
    .line 246
    const/4 v0, 0x0

    .line 247
    .local v0, "count":I
    iget-object v1, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 256
    :goto_0
    return v0

    .line 250
    :cond_0
    const-string v1, "SV-WidgetList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " getCount() mCursor is null or mCursor is closed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 432
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 416
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 10
    .param p1, "position"    # I

    .prologue
    .line 265
    iget-object v7, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    if-nez v7, :cond_1

    .line 266
    const/4 v4, 0x0

    .line 310
    :cond_0
    :goto_0
    return-object v4

    .line 269
    :cond_1
    const/4 v5, 0x0

    .line 270
    .local v5, "title":Ljava/lang/String;
    const/4 v0, 0x0

    .line 272
    .local v0, "artist":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 273
    iget v7, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mText1Idx:I

    if-ltz v7, :cond_2

    .line 274
    iget-object v7, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    iget v9, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mText1Idx:I

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->transUnknownString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 276
    :cond_2
    iget v7, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mText2Idx:I

    if-ltz v7, :cond_3

    .line 277
    iget-object v7, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    iget v9, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mText2Idx:I

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->transUnknownString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    :cond_3
    new-instance v4, Landroid/widget/RemoteViews;

    iget-object v7, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mContext:Landroid/content/Context;

    .line 282
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f040266

    invoke-direct {v4, v7, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 283
    .local v4, "rv":Landroid/widget/RemoteViews;
    iget-object v7, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 284
    .local v3, "resources":Landroid/content/res/Resources;
    const v7, 0x7f0d0294

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f99999a    # 1.2f

    .line 285
    invoke-static {v3, v7, v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getLimitedLargeFontSize(Landroid/content/res/Resources;IFF)F

    move-result v6

    .line 287
    .local v6, "titleFontSize":F
    const v7, 0x7f0d0291

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3f99999a    # 1.2f

    .line 288
    invoke-static {v3, v7, v8, v9}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getLimitedLargeFontSize(Landroid/content/res/Resources;IFF)F

    move-result v1

    .line 290
    .local v1, "artistFontSize":F
    const v7, 0x7f120592

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8, v6}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 291
    const v7, 0x7f120593

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 295
    const v7, 0x7f120592

    invoke-virtual {v4, v7, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 296
    const v7, 0x7f120593

    invoke-virtual {v4, v7, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 298
    iget-object v7, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v7}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->isEnabled(Landroid/database/Cursor;)Z

    move-result v2

    .line 299
    .local v2, "isEnabled":Z
    if-eqz v2, :cond_4

    .line 300
    invoke-direct {p0, v4, p1}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->updateEnableItemView(Landroid/widget/RemoteViews;I)V

    .line 304
    :goto_1
    invoke-direct {p0, v4, p1, v2}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->updateTagView(Landroid/widget/RemoteViews;IZ)V

    .line 306
    iget-object v7, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->isHoverUiEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 307
    const v7, 0x7f120592

    const/4 v8, 0x0

    invoke-static {v4, v7, v8}, Lcom/samsung/android/app/music/support/android/widget/RemoteViewsCompat;->setViewFingerHovered(Landroid/widget/RemoteViews;IZ)V

    .line 308
    const v7, 0x7f120593

    const/4 v8, 0x0

    invoke-static {v4, v7, v8}, Lcom/samsung/android/app/music/support/android/widget/RemoteViewsCompat;->setViewFingerHovered(Landroid/widget/RemoteViews;IZ)V

    goto/16 :goto_0

    .line 302
    :cond_4
    invoke-direct {p0, v4, p1}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->updateDisableItemView(Landroid/widget/RemoteViews;I)V

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 424
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 236
    return-void
.end method

.method public onDataSetChanged()V
    .locals 3

    .prologue
    .line 448
    invoke-direct {p0}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->closeCursor()V

    .line 449
    invoke-direct {p0}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->reloadQueue()V

    .line 450
    iget v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mActiveQueueType:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mList:[J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mList:[J

    array-length v0, v0

    if-nez v0, :cond_1

    .line 452
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->closeCursor()V

    .line 453
    invoke-direct {p0}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->reloadAllTrack()V

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->changeListItemTextColor(Landroid/content/Context;)V

    .line 457
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->initializeCursorIndex(Landroid/database/Cursor;)V

    .line 461
    const-string v1, "SMUSIC-SV-WidgetList"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDataSetChanged() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mList:[J

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    return-void

    .line 461
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->mList:[J

    array-length v0, v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 240
    const-string v0, "SV-WidgetList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-direct {p0}, Lcom/samsung/android/app/music/appwidget/ListRemoteViewsFactory;->closeCursor()V

    .line 242
    return-void
.end method
