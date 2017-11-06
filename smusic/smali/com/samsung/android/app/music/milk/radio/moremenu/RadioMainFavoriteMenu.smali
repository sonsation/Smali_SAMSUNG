.class public Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;
.super Ljava/lang/Object;
.source "RadioMainFavoriteMenu.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RadioMainFavoriteMenu"

.field private static sFavoriteCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fragMgr:Landroid/app/FragmentManager;

.field private mContext:Landroid/content/Context;

.field private mFavoriteImage:Landroid/widget/ImageView;

.field protected mFavoriteListener:Landroid/view/View$OnClickListener;

.field private mFavoriteView:Landroid/view/View;

.field private mLastTrack:Lcom/samsung/android/app/music/common/model/Track;

.field private mMainHandler:Landroid/os/Handler;

.field private mMilkServiceHelper:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

.field private mPrimaryColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->sFavoriteCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/app/music/milk/radio/IDialFragment;Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;Landroid/app/FragmentManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "anchorView"    # Landroid/view/View;
    .param p3, "callback"    # Lcom/samsung/android/app/music/milk/radio/IDialFragment;
    .param p4, "radioService"    # Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    .param p5, "fragMgr"    # Landroid/app/FragmentManager;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mPrimaryColor:I

    .line 63
    new-instance v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$1;-><init>(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mFavoriteListener:Landroid/view/View$OnClickListener;

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mMainHandler:Landroid/os/Handler;

    .line 81
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mFavoriteView:Landroid/view/View;

    .line 83
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mMilkServiceHelper:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    .line 84
    iput-object p5, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->fragMgr:Landroid/app/FragmentManager;

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mFavoriteView:Landroid/view/View;

    const v1, 0x7f12033c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mFavoriteImage:Landroid/widget/ImageView;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mFavoriteImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    .prologue
    .line 44
    iget v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mPrimaryColor:I

    return v0
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->sFavoriteCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mFavoriteView:Landroid/view/View;

    return-object v0
.end method

.method public static isDeviceUserFavorite(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "trackId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 90
    const-string v7, "0"

    .line 92
    .local v7, "isFavorite":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 93
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$FavoriteSongListInfos;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const-string v3, "favorite_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 96
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 98
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 99
    const-string v7, "1"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 106
    :cond_1
    return-object v7

    .line 102
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private isFavorite(Ljava/lang/String;)Z
    .locals 1
    .param p1, "favoriteYn"    # Ljava/lang/String;

    .prologue
    .line 250
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Y"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clickFavoriteBtn(Z)V
    .locals 6
    .param p1, "favoriteToEnable"    # Z

    .prologue
    .line 273
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mContext:Landroid/content/Context;

    .line 274
    invoke-static {}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->getCurrentStationId()Ljava/lang/String;

    move-result-object v4

    .line 275
    invoke-static {}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->getCurrentTrackId()Ljava/lang/String;

    move-result-object v5

    .line 274
    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getTrack(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Track;

    move-result-object v2

    .line 277
    .local v2, "track":Lcom/samsung/android/app/music/common/model/Track;
    if-eqz v2, :cond_1

    .line 278
    if-nez p1, :cond_0

    .line 279
    const-string v3, "RadioMainFavoriteMenu"

    const-string/jumbo v4, "onClick : prev state : favorite"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->fragMgr:Landroid/app/FragmentManager;

    new-instance v5, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$6;

    invoke-direct {v5, p0, v2}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$6;-><init>(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;Lcom/samsung/android/app/music/common/model/Track;)V

    invoke-virtual {v3, v4, v5, v2}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->deleteFavoriteSong(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Lcom/samsung/android/app/music/common/model/SimpleTrack;)V

    .line 315
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->position()J

    move-result-wide v0

    .line 316
    .local v0, "position":J
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v3

    const-string v4, "901"

    const-string v5, "9010"

    .line 317
    invoke-virtual {v3, v4, v5, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 321
    .end local v0    # "position":J
    :goto_1
    return-void

    .line 296
    :cond_0
    const-string v3, "RadioMainFavoriteMenu"

    const-string/jumbo v4, "onClick : prev state : unfavorite"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->fragMgr:Landroid/app/FragmentManager;

    new-instance v5, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$7;

    invoke-direct {v5, p0, v2}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$7;-><init>(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;Lcom/samsung/android/app/music/common/model/Track;)V

    invoke-virtual {v3, v4, v5, v2}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->addFavoriteSong(Landroid/app/FragmentManager;Lcom/samsung/android/app/music/milk/uiworker/IMilkUIWorker;Lcom/samsung/android/app/music/common/model/SimpleTrack;)V

    goto :goto_0

    .line 319
    :cond_1
    const-string v3, "RadioMainFavoriteMenu"

    const-string/jumbo v4, "onClick : track is null"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public isCurFavorite()Z
    .locals 2

    .prologue
    .line 267
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mFavoriteImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 269
    .local v0, "filter":Landroid/graphics/ColorFilter;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onApiCalled(II)V
    .locals 0
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 223
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 227
    packed-switch p2, :pswitch_data_0

    .line 247
    .end local p4    # "rspData":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 229
    .restart local p4    # "rspData":Ljava/lang/Object;
    :pswitch_0
    if-nez p3, :cond_0

    .line 230
    check-cast p4, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteCheck;

    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual {p4}, Lcom/samsung/android/app/music/common/model/milkfavorite/FavoriteCheck;->getFavoriteYn()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "favoriteYn":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 232
    const-string v2, "RadioMainFavoriteMenu"

    const-string v3, "onApiHandled : favoriteYn is null!!"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_1
    const/4 v1, 0x0

    .line 236
    .local v1, "isFavorite":Z
    const-string v2, "1"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 237
    const/4 v1, 0x1

    .line 240
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mLastTrack:Lcom/samsung/android/app/music/common/model/Track;

    if-eqz v2, :cond_0

    .line 241
    sget-object v2, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->sFavoriteCache:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mLastTrack:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mLastTrack:Lcom/samsung/android/app/music/common/model/Track;

    const/4 v3, 0x1

    iget v4, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mPrimaryColor:I

    invoke-virtual {p0, v2, v1, v3, v4}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->updateBtnResource(Lcom/samsung/android/app/music/common/model/SimpleTrack;ZZI)V

    goto :goto_0

    .line 227
    :pswitch_data_0
    .packed-switch 0x2c0
        :pswitch_0
    .end packed-switch
.end method

.method protected updateBtnResource(Lcom/samsung/android/app/music/common/model/SimpleTrack;ZZI)V
    .locals 4
    .param p1, "track"    # Lcom/samsung/android/app/music/common/model/SimpleTrack;
    .param p2, "isFavorite"    # Z
    .param p3, "enable"    # Z
    .param p4, "changedColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 167
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mLastTrack:Lcom/samsung/android/app/music/common/model/Track;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 168
    :cond_0
    const-string v1, "RadioMainFavoriteMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateBtnResource : last track or track is null. track - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :goto_0
    return-void

    .line 172
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/SimpleTrack;->getTrackId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mLastTrack:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 173
    const-string v1, "RadioMainFavoriteMenu"

    const-string/jumbo v2, "updateBtnResource : track id is different!!"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_2
    const-string v1, "RadioMainFavoriteMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateBtnResource : favorite - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    if-eqz p2, :cond_3

    .line 180
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mFavoriteImage:Landroid/widget/ImageView;

    const v2, 0x7f020071

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mFavoriteImage:Landroid/widget/ImageView;

    iget v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mPrimaryColor:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 187
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mFavoriteView:Landroid/view/View;

    invoke-virtual {v1, p3}, Landroid/view/View;->setEnabled(Z)V

    .line 188
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mFavoriteView:Landroid/view/View;

    if-eqz p3, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mFavoriteListener:Landroid/view/View$OnClickListener;

    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 190
    .local v0, "buffer":Ljava/lang/StringBuffer;
    if-eqz p2, :cond_5

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a037c

    .line 191
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 190
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a032f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mFavoriteView:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 183
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mFavoriteImage:Landroid/widget/ImageView;

    const v2, 0x7f020070

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 184
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mFavoriteImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_1

    .line 188
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 191
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mContext:Landroid/content/Context;

    .line 192
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a037b

    .line 193
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method protected updateBtnResource(Z)V
    .locals 3
    .param p1, "isFavorite"    # Z

    .prologue
    .line 200
    const-string v0, "RadioMainFavoriteMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBtnResource : favorite - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$5;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$5;-><init>(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 218
    :cond_0
    return-void
.end method

.method public updateBtnStatus(Lcom/samsung/android/app/music/common/model/Track;Z)V
    .locals 3
    .param p1, "track"    # Lcom/samsung/android/app/music/common/model/Track;
    .param p2, "isLoginUser"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 111
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mLastTrack:Lcom/samsung/android/app/music/common/model/Track;

    .line 112
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mFavoriteView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 113
    if-eqz p1, :cond_3

    .line 114
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->isAdsOrInterruption()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mMainHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$2;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$2;-><init>(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;Lcom/samsung/android/app/music/common/model/Track;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    if-nez p2, :cond_2

    .line 125
    const-string v1, "RadioMainFavoriteMenu"

    const-string/jumbo v2, "updateFavorite : Device user"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mContext:Landroid/content/Context;

    .line 128
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/common/model/milkfavorite/Favorite;->isDeviceUserFavorite(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->isFavorite(Ljava/lang/String;)Z

    move-result v0

    .line 129
    .local v0, "favorite":Z
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mMainHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$3;-><init>(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;Lcom/samsung/android/app/music/common/model/Track;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 139
    .end local v0    # "favorite":Z
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mMainHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$4;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu$4;-><init>(Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;Lcom/samsung/android/app/music/common/model/Track;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 160
    :cond_3
    const-string v1, "RadioMainFavoriteMenu"

    const-string/jumbo v2, "updateBtnStatus : track is null"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updatePrimaryColor(I)V
    .locals 3
    .param p1, "changedColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 254
    iput p1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mPrimaryColor:I

    .line 255
    const/4 v0, 0x0

    .line 257
    .local v0, "isFavorite":Z
    sget-object v1, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->sFavoriteCache:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mLastTrack:Lcom/samsung/android/app/music/common/model/Track;

    if-eqz v1, :cond_0

    .line 258
    sget-object v1, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->sFavoriteCache:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mLastTrack:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    sget-object v1, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->sFavoriteCache:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->mLastTrack:Lcom/samsung/android/app/music/common/model/Track;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 263
    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/radio/moremenu/RadioMainFavoriteMenu;->updateBtnResource(Z)V

    .line 264
    return-void
.end method
