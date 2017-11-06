.class public final Lcom/samsung/android/app/music/common/util/SmartStationUtils;
.super Ljava/lang/Object;
.source "SmartStationUtils.java"


# static fields
.field private static final LOCAL_SEED_PROJECTION:[Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String; = "SmartStationUtils"

.field private static final RADIO_HISTORY_PROJECTION:[Ljava/lang/String;

.field static final SEED_BELONGS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sCleanupDay:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->SEED_BELONGS:Ljava/util/ArrayList;

    .line 65
    sget-object v0, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->SEED_BELONGS:Ljava/util/ArrayList;

    const-string/jumbo v1, "radio"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->SEED_BELONGS:Ljava/util/ArrayList;

    const-string v1, "mod"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->SEED_BELONGS:Ljava/util/ArrayList;

    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->SEED_BELONGS:Ljava/util/ArrayList;

    const-string v1, "local"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    sput v2, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->sCleanupDay:I

    .line 407
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "title"

    aput-object v1, v0, v3

    const-string v1, "artist"

    aput-object v1, v0, v4

    const-string v1, "album"

    aput-object v1, v0, v5

    const-string/jumbo v1, "recently_played"

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->LOCAL_SEED_PROJECTION:[Ljava/lang/String;

    .line 446
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "track_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "title"

    aput-object v1, v0, v3

    const-string v1, "date_long"

    aput-object v1, v0, v4

    const-string v1, "explicit"

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->RADIO_HISTORY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->isUserAllowedExplicit(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;

    .prologue
    .line 56
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->createSmartStationSeed(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;)Z

    move-result v0

    return v0
.end method

.method static cleanUpExpiredSeed(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 312
    const/4 v1, 0x0

    .line 313
    .local v1, "total":I
    sget-object v2, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->SEED_BELONGS:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 314
    .local v0, "belong":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->deleteUnusableSeed(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    add-int/2addr v1, v3

    .line 315
    goto :goto_0

    .line 316
    .end local v0    # "belong":Ljava/lang/String;
    :cond_0
    const-string v2, "SmartStationUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cleanUpExpiredSeed. count - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return v1
.end method

.method private static createSmartStationSeed(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "seed"    # Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;

    .prologue
    .line 158
    const/4 v0, 0x0

    .line 160
    .local v0, "cleanUp":Z
    sget v1, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->sCleanupDay:I

    invoke-static {}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->getTodayTime()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 161
    invoke-static {}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->getTodayTime()I

    move-result v1

    sput v1, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->sCleanupDay:I

    .line 162
    const/4 v0, 0x1

    .line 164
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->createSmartStationSeed(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;Z)Z

    move-result v1

    return v1
.end method

.method static createSmartStationSeed(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;Z)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "seed"    # Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;
    .param p2, "cleanUpExpiredSeed"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 129
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getSeedId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 130
    :cond_0
    const-string v4, "SmartStationUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createSmartStationSeed. seed or id null. seed - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :goto_0
    return v5

    .line 134
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getBelongTo()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "belong":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 136
    const-string v4, "SmartStationUtils"

    const-string v6, "createSmartStationSeed. belong is null!"

    invoke-static {v4, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_2
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->insert(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;)Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_5

    move v3, v4

    .line 143
    .local v3, "ret":Z
    :goto_1
    if-eqz p2, :cond_3

    .line 144
    sget v2, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->sCleanupDay:I

    .line 145
    .local v2, "lastCleanUpDay":I
    invoke-static {}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->getTodayTime()I

    move-result v6

    sput v6, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->sCleanupDay:I

    .line 146
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->cleanUpExpiredSeed(Landroid/content/Context;)I

    move-result v1

    .line 147
    .local v1, "cleanupCount":I
    const-string v6, "SmartStationUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createSmartStationSeed. clean up expired seed. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", last clean up day - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .end local v1    # "cleanupCount":I
    .end local v2    # "lastCleanUpDay":I
    :cond_3
    if-nez v3, :cond_4

    .line 151
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->increaseHitCount(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;)I

    move-result v6

    if-lez v6, :cond_6

    move v3, v4

    :cond_4
    :goto_2
    move v5, v3

    .line 154
    goto :goto_0

    .end local v3    # "ret":Z
    :cond_5
    move v3, v5

    .line 140
    goto :goto_1

    .restart local v3    # "ret":Z
    :cond_6
    move v3, v5

    .line 151
    goto :goto_2
.end method

.method public static createSmartStationSeedAsync(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "seed"    # Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;

    .prologue
    .line 109
    const-string v0, "SmartStationUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createSmartStationSeedAsync. seed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v0, Lcom/samsung/android/app/music/common/util/SmartStationUtils$4;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/common/util/SmartStationUtils$4;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    .line 117
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/common/util/SmartStationUtils$3;

    invoke-direct {v1}, Lcom/samsung/android/app/music/common/util/SmartStationUtils$3;-><init>()V

    .line 118
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 124
    return-void
.end method

.method public static createSmartStationSeedAsync(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "seedBelongs"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "seeds":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const-string v0, "SmartStationUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createSmartStationSeedAsync. seed size - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v0, Lcom/samsung/android/app/music/common/util/SmartStationUtils$2;

    invoke-direct {v0, p1, p0, p2}, Lcom/samsung/android/app/music/common/util/SmartStationUtils$2;-><init>(Ljava/util/Collection;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    .line 98
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/common/util/SmartStationUtils$1;

    invoke-direct {v1}, Lcom/samsung/android/app/music/common/util/SmartStationUtils$1;-><init>()V

    .line 99
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    goto :goto_0
.end method

.method private static deleteUnusableSeed(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "belong"    # Ljava/lang/String;

    .prologue
    .line 321
    invoke-static {}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->getTodayTime()I

    move-result v1

    .line 322
    .local v1, "today":I
    invoke-static {p1}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getValidInterval(Ljava/lang/String;)I

    move-result v2

    sub-int v0, v1, v2

    .line 323
    .local v0, "deadLineDay":I
    const-string v2, "SmartStationUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteUnusableSeed. belong - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", deadline - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$SmartStationSeedInfo;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "seed_belong_to=? AND seed_added_date<? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    .line 326
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 324
    invoke-static {p0, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private static getCountTodayCandidateList(Landroid/content/Context;ILjava/lang/String;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "today"    # I
    .param p2, "belong"    # Ljava/lang/String;

    .prologue
    .line 366
    const/4 v8, 0x0

    .line 367
    .local v8, "ret":I
    const/4 v6, 0x0

    .line 370
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$SmartStationSeedInfo;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "count(_id)"

    aput-object v3, v2, v0

    const-string/jumbo v3, "seed_belong_to =? AND seed_added_date=?  "

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v0, 0x1

    .line 373
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    .line 370
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 375
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 381
    :cond_0
    if-eqz v6, :cond_1

    .line 382
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 385
    :cond_1
    :goto_0
    return v8

    .line 378
    :catch_0
    move-exception v7

    .line 379
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    if-eqz v6, :cond_1

    .line 382
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 381
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 382
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private static getHitCount(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "model"    # Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 330
    const/4 v9, -0x1

    .line 331
    .local v9, "ret":I
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getAddedDate()J

    move-result-wide v0

    long-to-int v7, v0

    .line 332
    .local v7, "days":I
    const/4 v6, 0x0

    .line 335
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$SmartStationSeedInfo;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "seed_hit_count"

    aput-object v3, v2, v0

    const-string/jumbo v3, "seed_belong_to=? AND seed_added_date=?  AND seed_id=? "

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 339
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getBelongTo()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getSeedId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    .line 335
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 341
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 347
    :cond_0
    if-eqz v6, :cond_1

    .line 348
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 351
    :cond_1
    :goto_0
    return v9

    .line 344
    :catch_0
    move-exception v8

    .line 345
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 347
    if-eqz v6, :cond_1

    .line 348
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 347
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 348
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private static getLatestFixedListDay(Landroid/content/Context;ILjava/lang/String;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "today"    # I
    .param p2, "belong"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 355
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$SmartStationSeedInfo;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "max(seed_added_date)"

    aput-object v0, v2, v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "seed_belong_to=? AND seed_added_date!="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v7

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 358
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 359
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    .line 361
    if-eqz v6, :cond_0

    if-eqz v5, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 362
    :cond_0
    :goto_0
    return v0

    .line 361
    :catch_0
    move-exception v1

    invoke-virtual {v5, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    if-eqz v5, :cond_4

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_1
    move v0, v7

    .line 362
    goto :goto_0

    .line 361
    :catch_1
    move-exception v0

    invoke-virtual {v5, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 355
    :catch_2
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 361
    :catchall_0
    move-exception v1

    move-object v5, v0

    move-object v0, v1

    :goto_2
    if-eqz v6, :cond_5

    if-eqz v5, :cond_6

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v5, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public static getSmartStationIdInGenre(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 221
    const/4 v7, 0x0

    .line 223
    .local v7, "ret":Ljava/lang/String;
    const/4 v8, 0x0

    .line 225
    .local v8, "smartStation":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$AllStations;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "station_id"

    aput-object v3, v2, v0

    const-string/jumbo v3, "station_type=\'03\'  AND is_mystation=0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 230
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 236
    :cond_0
    if-eqz v8, :cond_1

    .line 237
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 240
    :cond_1
    :goto_0
    return-object v7

    .line 233
    :catch_0
    move-exception v6

    .line 234
    .local v6, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    if-eqz v8, :cond_1

    .line 237
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 236
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 237
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method static getTotalSeedCount(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 174
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$SmartStationSeedInfo;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "count(_id)"

    aput-object v0, v2, v7

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 175
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    .line 178
    if-eqz v6, :cond_0

    if-eqz v3, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 179
    :cond_0
    :goto_0
    return v0

    .line 178
    :catch_0
    move-exception v1

    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    if-eqz v3, :cond_4

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_1
    move v0, v7

    .line 179
    goto :goto_0

    .line 178
    :catch_1
    move-exception v0

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 174
    :catch_2
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 178
    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_2
    if-eqz v6, :cond_5

    if-eqz v3, :cond_6

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public static hasSmartStationSeed(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    .line 205
    invoke-static {}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->getTodayTime()I

    move-result v1

    .line 206
    .local v1, "today":I
    invoke-static {p0, v1}, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->hasSmartStationSeed(Landroid/content/Context;I)Z

    move-result v0

    .line 208
    .local v0, "hasSeed":Z
    const-string v2, "com.samsung.radio.smart_station_migration_time"

    invoke-static {p0, v2, v4, v5}, Lcom/samsung/android/app/music/common/preferences/Pref;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 209
    if-eqz v0, :cond_1

    .line 210
    const-string v2, "com.samsung.radio.smart_station_migration_time"

    const-wide/16 v4, 0x1

    invoke-static {p0, v2, v4, v5}, Lcom/samsung/android/app/music/common/preferences/Pref;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 217
    :cond_0
    :goto_0
    return v0

    .line 212
    :cond_1
    const-string v2, "com.samsung.radio.smart_station_migration_time"

    invoke-static {}, Lcom/samsung/android/app/music/common/util/DateTimeUtils;->getTodayTime()I

    move-result v3

    int-to-long v4, v3

    invoke-static {p0, v2, v4, v5}, Lcom/samsung/android/app/music/common/preferences/Pref;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 213
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->migrateSeedFromDb(Landroid/content/Context;)I

    .line 214
    invoke-static {p0, v1}, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->hasSmartStationSeed(Landroid/content/Context;I)Z

    move-result v0

    goto :goto_0
.end method

.method static hasSmartStationSeed(Landroid/content/Context;I)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "day"    # I

    .prologue
    const/4 v11, 0x3

    const/4 v7, 0x1

    .line 183
    const-string v8, "mod"

    invoke-static {p0, p1, v8}, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->getLatestFixedListDay(Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    .line 184
    .local v1, "modDeadline":I
    const-string v8, "local"

    invoke-static {p0, p1, v8}, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->getLatestFixedListDay(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    .line 185
    .local v0, "localDeadLine":I
    const-string/jumbo v8, "radio"

    invoke-static {p0, p1, v8}, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->getLatestFixedListDay(Landroid/content/Context;ILjava/lang/String;)I

    move-result v3

    .line 186
    .local v3, "radioDeadline":I
    const-string/jumbo v8, "search"

    invoke-static {p0, p1, v8}, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->getLatestFixedListDay(Landroid/content/Context;ILjava/lang/String;)I

    move-result v5

    .line 187
    .local v5, "searchDeadline":I
    const-string v8, "mod"

    invoke-static {p1, v1, v8}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->isAvailableDeadline(IILjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "local"

    .line 188
    invoke-static {p1, v0, v8}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->isAvailableDeadline(IILjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "radio"

    .line 189
    invoke-static {p1, v3, v8}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->isAvailableDeadline(IILjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "search"

    .line 190
    invoke-static {p1, v5, v8}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->isAvailableDeadline(IILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 191
    :cond_0
    const-string v8, "SmartStationUtils"

    const-string v9, "hasSmartStationSeed. have fixed list."

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_1
    :goto_0
    return v7

    .line 196
    :cond_2
    const-string v8, "mod"

    invoke-static {p0, p1, v8}, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->getCountTodayCandidateList(Landroid/content/Context;ILjava/lang/String;)I

    move-result v8

    const-string v9, "local"

    invoke-static {p0, p1, v9}, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->getCountTodayCandidateList(Landroid/content/Context;ILjava/lang/String;)I

    move-result v9

    add-int v2, v8, v9

    .line 197
    .local v2, "modSeedCount":I
    const-string/jumbo v8, "search"

    invoke-static {p0, p1, v8}, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->getCountTodayCandidateList(Landroid/content/Context;ILjava/lang/String;)I

    move-result v6

    .line 198
    .local v6, "searchSeedCount":I
    const-string/jumbo v8, "radio"

    invoke-static {p0, p1, v8}, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->getCountTodayCandidateList(Landroid/content/Context;ILjava/lang/String;)I

    move-result v4

    .line 200
    .local v4, "radioSeedCount":I
    const-string v8, "SmartStationUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "hasSmartStationSeed. mod - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", search - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", radio - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    if-ge v2, v11, :cond_1

    const/4 v8, 0x2

    if-lt v2, v8, :cond_3

    if-ge v6, v7, :cond_1

    :cond_3
    if-ge v4, v11, :cond_1

    const/4 v7, 0x0

    goto :goto_0
.end method

.method private static increaseHitCount(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "seed"    # Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;

    .prologue
    const/4 v5, 0x1

    .line 244
    if-nez p1, :cond_0

    .line 245
    const/4 v3, -0x1

    .line 273
    :goto_0
    return v3

    .line 248
    :cond_0
    const/4 v3, -0x1

    .line 249
    .local v3, "ret":I
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getAddedDate()J

    move-result-wide v6

    long-to-int v0, v6

    .line 251
    .local v0, "days":I
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->getHitCount(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;)I

    move-result v2

    .line 252
    .local v2, "hitCount":I
    if-ge v2, v5, :cond_1

    .line 253
    const/4 v2, 0x1

    .line 255
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 258
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 259
    .local v4, "trackValue":Landroid/content/ContentValues;
    const-string/jumbo v5, "seed_added_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 260
    const-string/jumbo v5, "seed_hit_count"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 262
    const-string v5, "SmartStationUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "increaseHitCount. count - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$SmartStationSeedInfo;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    const-string/jumbo v6, "seed_belong_to=? AND seed_added_date=?  AND seed_id=? "

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    .line 268
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getBelongTo()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    .line 269
    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getSeedId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 265
    invoke-static {p0, v5, v4, v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->update(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 270
    .end local v4    # "trackValue":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 271
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "SmartStationUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "insert. Insert to SmartStation DB is fail !! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static insert(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;)Landroid/net/Uri;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "seed"    # Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;

    .prologue
    const/4 v3, 0x0

    .line 277
    const/4 v1, 0x0

    .line 279
    .local v1, "ret":Landroid/net/Uri;
    if-nez p1, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-object v3

    .line 284
    :cond_1
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 285
    .local v2, "trackValue":Landroid/content/ContentValues;
    const-string/jumbo v4, "seed_type"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getSeedType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string/jumbo v4, "seed_id"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getSeedId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string/jumbo v4, "seed_title"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getSeedTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string/jumbo v4, "seed_album"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getAlbumTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string/jumbo v4, "seed_artist"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getArtistName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string/jumbo v4, "seed_belong_to"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getBelongTo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string/jumbo v4, "seed_added_date"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getAddedDate()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 292
    const-string/jumbo v4, "seed_added_time"

    invoke-virtual {p1}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->getAddedTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 293
    const-string/jumbo v4, "seed_hit_count"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 296
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$SmartStationSeedInfo;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {p0, v4, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->insert(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 301
    .end local v2    # "trackValue":Landroid/content/ContentValues;
    :goto_1
    if-eqz v1, :cond_0

    .line 304
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$SmartStationSeedInfo;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v3, v1

    .line 308
    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "SmartStationUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insert. Insert to SmartStation DB is fail !! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static isUserAllowedExplicit(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    .line 169
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getUser()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->getUserExplicitType(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/UserInfo;)I

    move-result v0

    .line 170
    .local v0, "explicit":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static migrateLocalTracks(Landroid/content/Context;JI)I
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "endDate"    # J
    .param p3, "limit"    # I

    .prologue
    .line 424
    const/16 v18, 0x0

    .line 425
    .local v18, "count":I
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->getLimitAppendedUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 426
    .local v3, "local":Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x10001

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->buildCpAttrSelection(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "recently_played"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "<"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "recently_played"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ">"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 427
    .local v5, "selection":Ljava/lang/String;
    sget-object v4, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->LOCAL_SEED_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "recently_played DESC"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .local v19, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 428
    if-eqz v19, :cond_2

    :try_start_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 430
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 431
    .local v8, "id":Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 432
    .local v9, "title":Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 433
    .local v12, "artist":Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 434
    .local v11, "album":Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 435
    .local v14, "recentlyPlayed":J
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v9, v2, v6

    const/4 v6, 0x1

    aput-object v11, v2, v6

    const/4 v6, 0x2

    aput-object v12, v2, v6

    invoke-static {v2}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;->canUseAsSeed([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 436
    new-instance v7, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;

    const-string v10, "local"

    const/4 v13, 0x1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 437
    invoke-virtual {v2, v14, v15}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v16

    invoke-direct/range {v7 .. v17}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJ)V

    const/4 v2, 0x0

    .line 436
    move-object/from16 v0, p0

    invoke-static {v0, v7, v2}, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->createSmartStationSeed(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;Z)Z

    .line 438
    add-int/lit8 v18, v18, 0x1

    .line 440
    :cond_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    if-nez v2, :cond_0

    .line 442
    .end local v8    # "id":Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    .end local v11    # "album":Ljava/lang/String;
    .end local v12    # "artist":Ljava/lang/String;
    .end local v14    # "recentlyPlayed":J
    :cond_2
    if-eqz v19, :cond_3

    if-eqz v4, :cond_4

    :try_start_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 443
    :cond_3
    :goto_0
    return v18

    .line 442
    :catch_0
    move-exception v2

    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 427
    :catch_1
    move-exception v2

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 442
    :catchall_0
    move-exception v4

    move-object/from16 v20, v4

    move-object v4, v2

    move-object/from16 v2, v20

    :goto_1
    if-eqz v19, :cond_5

    if-eqz v4, :cond_6

    :try_start_3
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_5
    :goto_2
    throw v2

    :catch_2
    move-exception v6

    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v2

    goto :goto_1
.end method

.method private static migrateRadioTracks(Landroid/content/Context;JI)I
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "endDate"    # J
    .param p3, "limit"    # I

    .prologue
    .line 456
    const/16 v18, 0x0

    .line 457
    .local v18, "count":I
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$RadioHistory;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    .line 458
    .local v3, "uri":Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "date_long<"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "date_long"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ">"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "play_length"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " >= 60000"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 459
    .local v5, "selection":Ljava/lang/String;
    sget-object v4, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->RADIO_HISTORY_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "date_long DESC limit "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .local v19, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 460
    if-eqz v19, :cond_3

    :try_start_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 462
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 463
    .local v8, "trackId":Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 464
    .local v9, "trackTitle":Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 465
    .local v14, "dateAdded":J
    const/4 v2, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 466
    .local v20, "explicit":I
    if-eqz v20, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->isUserAllowedExplicit(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 467
    :cond_1
    new-instance v7, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;

    const-string/jumbo v10, "radio"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 468
    invoke-virtual {v2, v14, v15}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v16

    invoke-direct/range {v7 .. v17}, Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJ)V

    const/4 v2, 0x0

    .line 467
    move-object/from16 v0, p0

    invoke-static {v0, v7, v2}, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->createSmartStationSeed(Landroid/content/Context;Lcom/samsung/android/app/music/common/model/smartstation/SmartStationSeed;Z)Z

    .line 469
    add-int/lit8 v18, v18, 0x1

    .line 471
    :cond_2
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    if-nez v2, :cond_0

    .line 473
    .end local v8    # "trackId":Ljava/lang/String;
    .end local v9    # "trackTitle":Ljava/lang/String;
    .end local v14    # "dateAdded":J
    .end local v20    # "explicit":I
    :cond_3
    if-eqz v19, :cond_4

    if-eqz v4, :cond_5

    :try_start_1
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 474
    :cond_4
    :goto_0
    return v18

    .line 473
    :catch_0
    move-exception v2

    invoke-virtual {v4, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_5
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 459
    :catch_1
    move-exception v2

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 473
    :catchall_0
    move-exception v4

    move-object/from16 v21, v4

    move-object v4, v2

    move-object/from16 v2, v21

    :goto_1
    if-eqz v19, :cond_6

    if-eqz v4, :cond_7

    :try_start_3
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_6
    :goto_2
    throw v2

    :catch_2
    move-exception v6

    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_7
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v2

    goto :goto_1
.end method

.method public static migrateSeedFromDb(Landroid/content/Context;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 397
    .local v8, "firstSeedDate":J
    invoke-static {}, Lcom/samsung/android/app/music/provider/MilkContents$SmartStationSeedInfo;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "seed_added_time"

    aput-object v0, v2, v4

    const-string/jumbo v5, "seed_added_time ASC limit 1"

    move-object v0, p0

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 398
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v8

    .line 401
    :cond_0
    if-eqz v6, :cond_1

    if-eqz v3, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 402
    :cond_1
    :goto_0
    const-string v0, "SmartStationUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "migrateSeedFromDb. firstSeed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-static {p0, v8, v9}, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->migrateSeedFromDb(Landroid/content/Context;J)I

    move-result v0

    return v0

    .line 401
    :catch_0
    move-exception v0

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 397
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 401
    :catchall_0
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_1
    if-eqz v6, :cond_3

    if-eqz v3, :cond_4

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_2
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public static migrateSeedFromDb(Landroid/content/Context;J)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "endDate"    # J

    .prologue
    const/16 v2, 0x1e

    .line 416
    invoke-static {p0, p1, p2, v2}, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->migrateLocalTracks(Landroid/content/Context;JI)I

    move-result v0

    .line 417
    .local v0, "localSeedCount":I
    invoke-static {p0, p1, p2, v2}, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->migrateRadioTracks(Landroid/content/Context;JI)I

    move-result v1

    .line 418
    .local v1, "radioSeedCount":I
    const-string v2, "SmartStationUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "migrateSeedFromDb. local - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", radio - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    add-int v2, v0, v1

    return v2
.end method
