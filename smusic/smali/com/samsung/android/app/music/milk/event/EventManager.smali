.class public Lcom/samsung/android/app/music/milk/event/EventManager;
.super Ljava/lang/Object;
.source "EventManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
.implements Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "EventManager"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mEventPopupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;",
            ">;"
        }
    .end annotation
.end field

.field private mEventWeb:Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;

.field private mIsWaitingEventPopup:Z

.field private mIsWaitingEventWeb:Z

.field private mIsWaitingSigning:Z

.field private mLoadedImageUrl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mIsWaitingSigning:Z

    .line 72
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mIsWaitingEventWeb:Z

    .line 74
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mIsWaitingEventPopup:Z

    .line 101
    const-string v0, "EventManager"

    const-string v1, "EventManager created"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mActivity:Landroid/app/Activity;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/event/EventManager;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/event/EventManager;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/event/EventManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/event/EventManager;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mLoadedImageUrl:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/music/milk/event/EventManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/event/EventManager;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mLoadedImageUrl:Ljava/util/ArrayList;

    return-object p1
.end method

.method private deleteExpiredNoticesFromDB(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p1, "popups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 324
    .local v1, "popupIds":Ljava/lang/StringBuilder;
    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->getPopupId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    const/4 v0, 0x1

    .local v0, "index":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 326
    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->getPopupId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 328
    :cond_2
    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mActivity:Landroid/app/Activity;

    instance-of v2, v2, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;

    if-eqz v2, :cond_0

    .line 331
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;

    invoke-interface {v2}, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    .line 332
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->deleteExpiredPopups(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private encodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "orgUrl"    # Ljava/lang/String;

    .prologue
    .line 418
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 419
    .local v4, "ori_uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 420
    .local v5, "path":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v7

    .line 421
    .local v7, "query":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, "host":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    .line 424
    .local v8, "scheme":Ljava/lang/String;
    const-string v10, "/"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 425
    const-string v10, "/"

    invoke-virtual {v5, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 426
    .local v3, "lastIndex":I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v3, :cond_0

    .line 427
    const/4 v10, 0x0

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 428
    .local v6, "prefix":Ljava/lang/String;
    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 430
    .local v2, "last":Ljava/lang/String;
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-static {v2, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 437
    .end local v2    # "last":Ljava/lang/String;
    .end local v3    # "lastIndex":I
    .end local v6    # "prefix":Ljava/lang/String;
    :cond_0
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 438
    .local v9, "url":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 439
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "?"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 442
    :cond_1
    const-string v10, "EventManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "encodeUri : Encoding URI : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    return-object v9

    .line 431
    .end local v9    # "url":Ljava/lang/String;
    .restart local v2    # "last":Ljava/lang/String;
    .restart local v3    # "lastIndex":I
    .restart local v6    # "prefix":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e1":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getSavedDoNotShowTime(Landroid/content/Context;Ljava/lang/String;)J
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "popupId"    # Ljava/lang/String;

    .prologue
    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "popup_id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 360
    .local v3, "whereClause":Ljava/lang/String;
    const-wide/high16 v8, -0x8000000000000000L

    .line 362
    .local v8, "doNotShow":J
    const/4 v6, 0x0

    .line 365
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$EventPopups;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 366
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 367
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 368
    const-string v0, "do_not_show_time"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 370
    const-string v0, "EventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSavedDoNotShowTime of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    :cond_0
    if-eqz v6, :cond_1

    .line 374
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 378
    :cond_1
    return-wide v8

    .line 373
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 374
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private isImageLoaded(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 382
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mLoadedImageUrl:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mLoadedImageUrl:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private loadImage(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 386
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 387
    :cond_0
    const-string v1, "EventManager"

    const-string v2, "loadImage : url is null!!"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    :goto_0
    return-void

    .line 391
    :cond_1
    const-string v1, "EventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadImage :  url : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/event/EventManager;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "encodedUrl":Ljava/lang/String;
    const v1, 0x7f0d0061

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->withDimension(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->withFullUri(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    new-instance v3, Lcom/samsung/android/app/music/milk/event/EventManager$2;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/app/music/milk/event/EventManager$2;-><init>(Lcom/samsung/android/app/music/milk/event/EventManager;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 396
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->loadToHandler(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private removeDoNotShowEvents(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    .local p1, "popups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .local v1, "filteredPopups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;>;"
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mActivity:Landroid/app/Activity;

    if-eqz v8, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 340
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 341
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 343
    .local v2, "currTime":J
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_1

    .line 344
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;

    .line 346
    .local v5, "item":Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->getPopupId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/event/EventManager;->getSavedDoNotShowTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v6

    .line 348
    .local v6, "savedTime":J
    cmp-long v8, v2, v6

    if-ltz v8, :cond_0

    .line 349
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    const-string v8, "EventManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "removeDoNotShowEvents - Add popup "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->getPopupId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 355
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v2    # "currTime":J
    .end local v4    # "index":I
    .end local v5    # "item":Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;
    .end local v6    # "savedTime":J
    :cond_1
    return-object v1
.end method

.method private showEventPopup(Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;)V
    .locals 8
    .param p1, "popup"    # Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;

    .prologue
    .line 271
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->getPopupType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;->getTypeByValue(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;

    move-result-object v4

    .line 272
    .local v4, "popupType":Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;
    if-nez v4, :cond_0

    .line 273
    const-string v5, "EventManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showPopup - Wrong popup Type : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->getPopupType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :goto_0
    :pswitch_0
    return-void

    .line 277
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/app/music/milk/event/EventManager;->isImageLoaded(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 278
    const-string v5, "EventManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showPopup - Popup image not loaded : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->getImageUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 282
    :cond_1
    sget-object v5, Lcom/samsung/android/app/music/milk/event/EventManager$3;->$SwitchMap$com$samsung$android$app$music$milk$event$EventManager$PopupType:[I

    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/event/EventManager$PopupType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 288
    :pswitch_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 289
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "popup"

    invoke-virtual {v0, v5, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 291
    new-instance v1, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;-><init>()V

    .line 292
    .local v1, "dialog":Lcom/samsung/android/app/music/milk/event/EventPopupDialog;
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->setArguments(Landroid/os/Bundle;)V

    .line 293
    new-instance v5, Lcom/samsung/android/app/music/milk/event/EventManager$1;

    invoke-direct {v5, p0, p1}, Lcom/samsung/android/app/music/milk/event/EventManager$1;-><init>(Lcom/samsung/android/app/music/milk/event/EventManager;Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;)V

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/music/milk/event/EventPopupDialog;->setOnEventPopupListener(Lcom/samsung/android/app/music/milk/event/EventPopupDialog$EventPopupListener;)V

    .line 306
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 307
    .local v2, "ft":Landroid/app/FragmentTransaction;
    const-string v5, "LOG_TAG"

    invoke-virtual {v2, v1, v5}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 308
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 310
    iget-object v5, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mEventPopupList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 311
    .end local v2    # "ft":Landroid/app/FragmentTransaction;
    :catch_0
    move-exception v3

    .line 312
    .local v3, "ise":Ljava/lang/IllegalStateException;
    invoke-virtual {v3}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 282
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public launchEventWeb()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 222
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mEventWeb:Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;

    if-eqz v3, :cond_3

    .line 223
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mActivity:Landroid/app/Activity;

    instance-of v3, v3, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;

    if-eqz v3, :cond_1

    .line 224
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mActivity:Landroid/app/Activity;

    check-cast v3, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;

    invoke-interface {v3}, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getUser()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v2

    .line 225
    .local v2, "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserStatus()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 226
    :cond_0
    const-string v3, "EventManager"

    const-string v4, "launchEventWeb - not signed in"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0a02ef

    invoke-static {v3, v4, v5}, Lcom/samsung/android/app/music/milk/MilkToast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 228
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 229
    iput-boolean v5, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mIsWaitingSigning:Z

    .line 251
    .end local v2    # "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    :goto_0
    return-void

    .line 234
    :cond_1
    new-instance v3, Ljava/util/Date;

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v6

    int-to-long v6, v6

    sub-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 234
    invoke-static {v3}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->convertDateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "checkTime":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v3

    const-string v4, "event_latest_check_time"

    invoke-virtual {v3, v4, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v3

    const-string v4, "event_badge_exist"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    .line 238
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_2

    .line 239
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 242
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 243
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 244
    const-string/jumbo v3, "web_url"

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mEventWeb:Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;->getLinkUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 246
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 248
    .end local v0    # "checkTime":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    const-string v3, "EventManager"

    const-string v4, "launchEventWeb - not receive event data"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iput-boolean v5, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mIsWaitingEventWeb:Z

    goto :goto_0
.end method

.method public onApiCalled(II)V
    .locals 3
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I

    .prologue
    .line 125
    const-string v0, "EventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApiCalled - reqtype : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public onApiHandled(IIILjava/lang/Object;[Ljava/lang/Object;)V
    .locals 14
    .param p1, "reqId"    # I
    .param p2, "reqType"    # I
    .param p3, "rspType"    # I
    .param p4, "rspData"    # Ljava/lang/Object;
    .param p5, "extra"    # [Ljava/lang/Object;

    .prologue
    .line 130
    const-string v8, "EventManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onApiHandled - reqtype : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", rspType : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p3

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    sparse-switch p2, :sswitch_data_0

    .line 212
    .end local p4    # "rspData":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 134
    .restart local p4    # "rspData":Ljava/lang/Object;
    :sswitch_0
    const-string v8, "EventManager"

    const-string v9, "onApiHandled - Signed in"

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-boolean v8, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mIsWaitingSigning:Z

    if-eqz v8, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/event/EventManager;->launchEventWeb()V

    .line 137
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mIsWaitingSigning:Z

    goto :goto_0

    .line 141
    :sswitch_1
    packed-switch p3, :pswitch_data_0

    .line 175
    const-string v8, "EventManager"

    const-string v9, "onApiHandled - Get event web failure"

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :pswitch_0
    const-string v8, "EventManager"

    const-string v9, "onApiHandled - Get event web success"

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    if-eqz p4, :cond_0

    move-object/from16 v0, p4

    instance-of v8, v0, Lcom/samsung/android/app/music/common/model/milkevent/EventWebList;

    if-eqz v8, :cond_0

    .line 145
    check-cast p4, Lcom/samsung/android/app/music/common/model/milkevent/EventWebList;

    .line 146
    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/app/music/common/model/milkevent/EventWebList;->getEventWebList()Ljava/util/ArrayList;

    move-result-object v3

    .line 147
    .local v3, "eventWebList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 148
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;

    iput-object v8, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mEventWeb:Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;

    .line 150
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v8

    const-string v9, "event_latest_check_time"

    new-instance v10, Ljava/util/Date;

    const-wide/16 v12, 0x0

    invoke-direct {v10, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 152
    invoke-static {v10}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->convertDateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    .line 151
    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 153
    .local v4, "latestCheckTime":Ljava/lang/String;
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mEventWeb:Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;

    invoke-virtual {v8}, Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;->getRegDate()Ljava/lang/String;

    move-result-object v5

    .line 155
    .local v5, "latestEventRegTime":Ljava/lang/String;
    const-string v8, "EventManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onApiHandled - Get event list, latest check : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", latest reg time : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v8

    const-string v9, "event_badge_exist"

    .line 160
    invoke-static {v5, v4}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->compareBigger(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 159
    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    .line 163
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mActivity:Landroid/app/Activity;

    if-eqz v8, :cond_1

    .line 164
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 167
    :cond_1
    iget-boolean v8, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mIsWaitingEventWeb:Z

    if-eqz v8, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/event/EventManager;->launchEventWeb()V

    .line 169
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mIsWaitingEventWeb:Z

    goto/16 :goto_0

    .line 179
    .end local v3    # "eventWebList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkevent/EventWeb;>;"
    .end local v4    # "latestCheckTime":Ljava/lang/String;
    .end local v5    # "latestEventRegTime":Ljava/lang/String;
    .restart local p4    # "rspData":Ljava/lang/Object;
    :sswitch_2
    packed-switch p3, :pswitch_data_1

    .line 208
    const-string v8, "EventManager"

    const-string v9, "onApiHandled - Get event popup failure"

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 181
    :pswitch_1
    const-string v8, "EventManager"

    const-string v9, "onApiHandled - Get event popup success"

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    if-eqz p4, :cond_0

    move-object/from16 v0, p4

    instance-of v8, v0, Lcom/samsung/android/app/music/common/model/milkevent/EventPopupList;

    if-eqz v8, :cond_0

    .line 183
    check-cast p4, Lcom/samsung/android/app/music/common/model/milkevent/EventPopupList;

    .line 184
    .end local p4    # "rspData":Ljava/lang/Object;
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/app/music/common/model/milkevent/EventPopupList;->getEventPopupList()Ljava/util/ArrayList;

    move-result-object v2

    .line 185
    .local v2, "eventPopupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;>;"
    if-eqz v2, :cond_0

    .line 186
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/milk/event/EventManager;->deleteExpiredNoticesFromDB(Ljava/util/ArrayList;)V

    .line 188
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/milk/event/EventManager;->removeDoNotShowEvents(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mEventPopupList:Ljava/util/ArrayList;

    .line 190
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mEventPopupList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;

    .line 191
    .local v6, "popup":Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;
    invoke-virtual {v6}, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->getImageUrl()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/samsung/android/app/music/milk/event/EventManager;->loadImage(Ljava/lang/String;)V

    goto :goto_1

    .line 194
    .end local v6    # "popup":Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;
    :cond_2
    iget-boolean v8, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mIsWaitingEventPopup:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mActivity:Landroid/app/Activity;

    instance-of v8, v8, Lcom/samsung/android/app/music/milk/event/EventManageable;

    if-eqz v8, :cond_0

    .line 195
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mActivity:Landroid/app/Activity;

    check-cast v8, Lcom/samsung/android/app/music/milk/event/EventManageable;

    .line 196
    invoke-interface {v8}, Lcom/samsung/android/app/music/milk/event/EventManageable;->getSelectedTabPosition()I

    move-result v7

    .line 198
    .local v7, "position":I
    const-string v8, "EventManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onApiHandled - Current tab position : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0, v7}, Lcom/samsung/android/app/music/milk/event/EventManager;->onTabSelected(I)V

    .line 202
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mIsWaitingEventPopup:Z

    goto/16 :goto_0

    .line 132
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x2779 -> :sswitch_1
        0x277a -> :sswitch_2
    .end sparse-switch

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 179
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public onNetworkStateChanged(Lcom/samsung/android/app/music/network/NetworkInfo;)V
    .locals 3
    .param p1, "networkInfo"    # Lcom/samsung/android/app/music/network/NetworkInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 448
    const-string v0, "EventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNetworkStateChanged - networkInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v0, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->all:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v0, v0, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->connected:Z

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;

    invoke-interface {v0}, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getEventWeb(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)I

    .line 451
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;

    invoke-interface {v0}, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getEventPopup(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)I

    .line 453
    :cond_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 107
    const-string v0, "com.samsung.android.app.music.service.milk.MilkService"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;

    invoke-interface {v0}, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    const/4 v1, 0x3

    .line 110
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->registerBroadcastCallback(ILcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)V

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->canAccessNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;

    invoke-interface {v0}, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getEventWeb(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)I

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;

    invoke-interface {v0}, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getEventPopup(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)I

    .line 117
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 121
    return-void
.end method

.method public onTabSelected(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 254
    const-string v1, "EventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTabSelected - tab position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mEventPopupList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 257
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mEventPopupList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;

    .line 258
    .local v0, "popup":Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;
    const/16 v2, 0x31

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;->getPopupCombination()Ljava/lang/String;

    move-result-object v3

    rsub-int/lit8 v4, p1, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_0

    .line 259
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/event/EventManager;->showEventPopup(Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;)V

    .line 268
    .end local v0    # "popup":Lcom/samsung/android/app/music/common/model/milkevent/EventPopup;
    :goto_0
    return-void

    .line 263
    :cond_1
    const-string v1, "EventManager"

    const-string/jumbo v2, "onTabSelected - No Event Popup exist on this tab"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 265
    :cond_2
    const-string v1, "EventManager"

    const-string/jumbo v2, "onTabSelected - Event Popup data not received yet"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mIsWaitingEventPopup:Z

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/event/EventManager;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;

    invoke-interface {v0}, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    const/4 v1, 0x3

    .line 217
    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->unregisterBroadcastCallback(ILcom/samsung/android/app/music/service/milk/OnApiHandleCallback;)V

    .line 219
    :cond_0
    return-void
.end method
