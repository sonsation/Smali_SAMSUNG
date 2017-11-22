.class public Lcom/android/server/content/SyncStorageEngine;
.super Landroid/os/Handler;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;,
        Lcom/android/server/content/SyncStorageEngine$AccountInfo;,
        Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;,
        Lcom/android/server/content/SyncStorageEngine$DayStats;,
        Lcom/android/server/content/SyncStorageEngine$EndPoint;,
        Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;,
        Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;,
        Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;,
        Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    }
.end annotation


# static fields
.field private static final ACCOUNTS_VERSION:I = 0x2

.field private static final DEFAULT_FLEX_PERCENT_SYNC:D = 0.04

.field private static final DEFAULT_MIN_FLEX_ALLOWED_SECS:J = 0x5L

.field private static final DEFAULT_POLL_FREQUENCY_SECONDS:J = 0x15180L

.field public static final EVENT_START:I = 0x0

.field public static final EVENT_STOP:I = 0x1

.field public static final MAX_HISTORY:I = 0x64

.field public static final MESG_CANCELED:Ljava/lang/String; = "canceled"

.field public static final MESG_SUCCESS:Ljava/lang/String; = "success"

.field static final MILLIS_IN_4WEEKS:J = 0x90321000L

.field private static final MSG_WRITE_STATISTICS:I = 0x2

.field private static final MSG_WRITE_STATUS:I = 0x1

.field public static final NOT_IN_BACKOFF_MODE:J = -0x1L

.field public static final SOURCES:[Ljava/lang/String;

.field public static final SOURCE_LOCAL:I = 0x1

.field public static final SOURCE_PERIODIC:I = 0x4

.field public static final SOURCE_POLL:I = 0x2

.field public static final SOURCE_SERVER:I = 0x0

.field public static final SOURCE_USER:I = 0x3

.field public static final STATISTICS_FILE_END:I = 0x0

.field public static final STATISTICS_FILE_ITEM:I = 0x65

.field public static final STATISTICS_FILE_ITEM_OLD:I = 0x64

.field public static final STATUS_FILE_END:I = 0x0

.field public static final STATUS_FILE_ITEM:I = 0x64

.field private static final SYNC_ENABLED_DEFAULT:Z = false

.field private static final TAG:Ljava/lang/String; = "SyncManager"

.field private static final TAG_FILE:Ljava/lang/String; = "SyncManagerFile"

.field private static final WRITE_STATISTICS_DELAY:J = 0x1b7740L

.field private static final WRITE_STATUS_DELAY:J = 0x927c0L

.field private static final XML_ATTR_ENABLED:Ljava/lang/String; = "enabled"

.field private static final XML_ATTR_LISTEN_FOR_TICKLES:Ljava/lang/String; = "listen-for-tickles"

.field private static final XML_ATTR_NEXT_AUTHORITY_ID:Ljava/lang/String; = "nextAuthorityId"

.field private static final XML_ATTR_SYNC_RANDOM_OFFSET:Ljava/lang/String; = "offsetInSeconds"

.field private static final XML_ATTR_USER:Ljava/lang/String; = "user"

.field private static final XML_TAG_LISTEN_FOR_TICKLES:Ljava/lang/String; = "listenForTickles"

.field private static mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

.field private static sAuthorityRenames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;


# instance fields
.field private final mAccountInfoFile:Landroid/util/AtomicFile;

.field private final mAccounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/accounts/AccountAndUser;",
            "Lcom/android/server/content/SyncStorageEngine$AccountInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAuthorities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

.field private final mCal:Ljava/util/Calendar;

.field private final mChangeListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/content/ISyncStatusObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mCurrentSyncs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/SyncInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

.field private mDefaultMasterSyncAutomatically:Z

.field private mMasterSyncAutomatically:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAuthorityId:I

.field private mNextHistoryId:I

.field private final mServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mStatisticsFile:Landroid/util/AtomicFile;

.field private final mStatusFile:Landroid/util/AtomicFile;

.field private final mSyncHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncRandomOffset:I

.field private mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

.field private final mSyncStatus:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mYear:I

.field private mYearInDays:I


# direct methods
.method static synthetic -get0()Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;
    .locals 1

    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 124
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "SERVER"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 125
    const-string/jumbo v1, "LOCAL"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 126
    const-string/jumbo v1, "POLL"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 127
    const-string/jumbo v1, "USER"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 128
    const-string/jumbo v1, "PERIODIC"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 129
    const-string/jumbo v1, "SERVICE"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 124
    sput-object v0, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    .line 153
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    const-string/jumbo v1, "contacts"

    const-string/jumbo v2, "com.android.contacts"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    const-string/jumbo v1, "calendar"

    const-string/jumbo v2, "com.android.calendar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 76
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataDir"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x0

    .line 455
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 393
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 392
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    .line 396
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 395
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    .line 399
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 398
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    .line 402
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 401
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    .line 405
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 404
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    .line 408
    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 407
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    .line 412
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 411
    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mServices:Landroid/util/ArrayMap;

    .line 414
    iput v3, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 417
    const/16 v2, 0x1c

    new-array v2, v2, [Lcom/android/server/content/SyncStorageEngine$DayStats;

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 448
    iput v3, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    .line 449
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    .line 456
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    .line 457
    sput-object p0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 459
    const-string/jumbo v2, "GMT+0"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    .line 461
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 462
    const v3, 0x1120076

    .line 461
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/content/SyncStorageEngine;->mDefaultMasterSyncAutomatically:Z

    .line 464
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 465
    .local v1, "systemDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "sync"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 466
    .local v0, "syncDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 468
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->maybeDeleteLegacyPendingInfoLocked(Ljava/io/File;)V

    .line 470
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "accounts.xml"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    .line 471
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "status.bin"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    .line 472
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "stats.bin"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    .line 474
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readAccountInfoLocked()V

    .line 475
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatusLocked()V

    .line 476
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatisticsLocked()V

    .line 477
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readAndDeleteLegacyAccountInfoLocked()V

    .line 478
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 479
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 480
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V

    .line 455
    return-void
.end method

.method public static calculateDefaultFlexTime(J)J
    .locals 4
    .param p0, "syncTimeSeconds"    # J

    .prologue
    .line 557
    const-wide/16 v0, 0x5

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 561
    const-wide/16 v0, 0x0

    return-wide v0

    .line 562
    :cond_0
    const-wide/32 v0, 0x15180

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    .line 563
    long-to-double v0, p0

    const-wide v2, 0x3fa47ae147ae147bL    # 0.04

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0

    .line 566
    :cond_1
    const-wide/16 v0, 0xd80

    return-wide v0
.end method

.method private createAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .locals 4
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "ident"    # I
    .param p3, "doWrite"    # Z

    .prologue
    .line 1407
    if-gez p2, :cond_0

    .line 1408
    iget p2, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1409
    iget v1, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1410
    const/4 p3, 0x1

    .line 1412
    .end local p3    # "doWrite":Z
    :cond_0
    const-string/jumbo v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1413
    const-string/jumbo v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "created a new AuthorityInfo for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    :cond_1
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;I)V

    .line 1416
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1417
    if-eqz p3, :cond_2

    .line 1418
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1420
    :cond_2
    return-object v0
.end method

.method private createCopyPairOfAuthorityWithSyncStatusLocked(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/util/Pair;
    .locals 3
    .param p1, "authorityInfo"    # Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1336
    iget v1, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-direct {p0, v1}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v0

    .line 1337
    .local v0, "syncStatusInfo":Landroid/content/SyncStatusInfo;
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    invoke-direct {v1, p1}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;-><init>(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)V

    new-instance v2, Landroid/content/SyncStatusInfo;

    invoke-direct {v2, v0}, Landroid/content/SyncStatusInfo;-><init>(Landroid/content/SyncStatusInfo;)V

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    return-object v1
.end method

.method private getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .locals 7
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 1360
    new-instance v1, Landroid/accounts/AccountAndUser;

    iget-object v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {v1, v3, v4}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    .line 1361
    .local v1, "au":Landroid/accounts/AccountAndUser;
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 1362
    .local v0, "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    if-nez v0, :cond_1

    .line 1363
    if-eqz p2, :cond_0

    .line 1364
    const-string/jumbo v3, "SyncManager"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1365
    const-string/jumbo v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": unknown account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    :cond_0
    return-object v6

    .line 1370
    :cond_1
    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1371
    .local v2, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v2, :cond_3

    .line 1372
    if-eqz p2, :cond_2

    .line 1373
    const-string/jumbo v3, "SyncManager"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1374
    const-string/jumbo v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": unknown provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    :cond_2
    return-object v6

    .line 1379
    :cond_3
    return-object v2
.end method

.method private getCurrentDayLocked()I
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 1341
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1342
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1343
    .local v0, "dayOfYear":I
    iget v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYear:I

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1344
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYear:I

    .line 1345
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    .line 1346
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    iget v2, p0, Lcom/android/server/content/SyncStorageEngine;->mYear:I

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 1347
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCal:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    long-to-int v1, v2

    iput v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYearInDays:I

    .line 1349
    :cond_0
    iget v1, p0, Lcom/android/server/content/SyncStorageEngine;->mYearInDays:I

    add-int/2addr v1, v0

    return v1
.end method

.method private getCurrentSyncs(I)Ljava/util/List;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1212
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncsLocked(I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1211
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getCurrentSyncsLocked(I)Ljava/util/List;
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1240
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1241
    .local v0, "syncs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/SyncInfo;>;"
    if-nez v0, :cond_0

    .line 1242
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "syncs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/SyncInfo;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1243
    .restart local v0    # "syncs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/SyncInfo;>;"
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mCurrentSyncs:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1245
    :cond_0
    return-object v0
.end method

.method static getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 1
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1895
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method static getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J
    .locals 2
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1899
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .locals 5
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "ident"    # I
    .param p3, "doWrite"    # Z

    .prologue
    .line 1390
    const/4 v2, 0x0

    .line 1391
    .local v2, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    new-instance v1, Landroid/accounts/AccountAndUser;

    iget-object v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {v1, v3, v4}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    .line 1392
    .local v1, "au":Landroid/accounts/AccountAndUser;
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 1393
    .local v0, "account":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    if-nez v0, :cond_0

    .line 1394
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .end local v0    # "account":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    invoke-direct {v0, v1}, Lcom/android/server/content/SyncStorageEngine$AccountInfo;-><init>(Landroid/accounts/AccountAndUser;)V

    .line 1395
    .restart local v0    # "account":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1397
    :cond_0
    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1398
    .local v2, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v2, :cond_1

    .line 1399
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/content/SyncStorageEngine;->createAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v2

    .line 1400
    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1402
    :cond_1
    return-object v2
.end method

.method private getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;
    .locals 2
    .param p1, "authorityId"    # I

    .prologue
    .line 1452
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncStatusInfo;

    .line 1453
    .local v0, "status":Landroid/content/SyncStatusInfo;
    if-nez v0, :cond_0

    .line 1454
    new-instance v0, Landroid/content/SyncStatusInfo;

    .end local v0    # "status":Landroid/content/SyncStatusInfo;
    invoke-direct {v0, p1}, Landroid/content/SyncStatusInfo;-><init>(I)V

    .line 1455
    .restart local v0    # "status":Landroid/content/SyncStatusInfo;
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1457
    :cond_0
    return-object v0
.end method

.method public static getSingleton()Lcom/android/server/content/SyncStorageEngine;
    .locals 2

    .prologue
    .line 496
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    if-nez v0, :cond_0

    .line 497
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_0
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 488
    sget-object v1, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    if-eqz v1, :cond_0

    .line 489
    return-void

    .line 491
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 492
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Lcom/android/server/content/SyncStorageEngine;

    invoke-direct {v1, p0, v0}, Lcom/android/server/content/SyncStorageEngine;-><init>(Landroid/content/Context;Ljava/io/File;)V

    sput-object v1, Lcom/android/server/content/SyncStorageEngine;->sSyncStorageEngine:Lcom/android/server/content/SyncStorageEngine;

    .line 487
    return-void
.end method

.method private maybeDeleteLegacyPendingInfoLocked(Ljava/io/File;)V
    .locals 2
    .param p1, "syncDir"    # Ljava/io/File;

    .prologue
    .line 1601
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "pending.bin"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1602
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1603
    return-void

    .line 1605
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1600
    return-void
.end method

.method private maybeMigrateSettingsForRenamedAuthorities()Z
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 1614
    const/4 v9, 0x0

    .line 1616
    .local v9, "writeNeeded":Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1617
    .local v1, "authoritiesToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    iget-object v10, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1618
    .local v0, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_2

    .line 1619
    iget-object v10, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1621
    .local v2, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    sget-object v10, Lcom/android/server/content/SyncStorageEngine;->sAuthorityRenames:Ljava/util/HashMap;

    iget-object v11, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v11, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1622
    .local v7, "newAuthorityName":Ljava/lang/String;
    if-nez v7, :cond_1

    .line 1618
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1628
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1632
    iget-boolean v10, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-eqz v10, :cond_0

    .line 1638
    new-instance v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v10, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v10, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 1640
    iget-object v11, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v11, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 1638
    invoke-direct {v8, v10, v7, v11}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1641
    .local v8, "newInfo":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    const-string/jumbo v10, "cleanup"

    invoke-direct {p0, v8, v10}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v10

    if-nez v10, :cond_0

    .line 1646
    const/4 v10, -0x1

    invoke-direct {p0, v8, v10, v13}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v6

    .line 1647
    .local v6, "newAuthority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const/4 v10, 0x1

    iput-boolean v10, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 1648
    const/4 v9, 0x1

    goto :goto_1

    .line 1651
    .end local v2    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v6    # "newAuthority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v7    # "newAuthorityName":Ljava/lang/String;
    .end local v8    # "newInfo":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "authorityInfo$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1653
    .local v3, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v10, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v10, v10, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 1654
    iget-object v11, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v11, v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 1655
    iget-object v12, v3, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v12, v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 1652
    invoke-direct {p0, v10, v11, v12, v13}, Lcom/android/server/content/SyncStorageEngine;->removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V

    .line 1657
    const/4 v9, 0x1

    goto :goto_2

    .line 1660
    .end local v3    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_3
    return v9
.end method

.method public static newTestInstance(Landroid/content/Context;)Lcom/android/server/content/SyncStorageEngine;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 484
    new-instance v0, Lcom/android/server/content/SyncStorageEngine;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/content/SyncStorageEngine;-><init>(Landroid/content/Context;Ljava/io/File;)V

    return-object v0
.end method

.method private parseAuthority(Lorg/xmlpull/v1/XmlPullParser;ILcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .locals 20
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "version"    # I
    .param p3, "validator"    # Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;

    .prologue
    .line 1680
    const/4 v5, 0x0

    .line 1681
    .local v5, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const/4 v11, -0x1

    .line 1683
    .local v11, "id":I
    :try_start_0
    const-string/jumbo v17, "id"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 1689
    :goto_0
    if-ltz v11, :cond_4

    .line 1690
    const-string/jumbo v17, "authority"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1691
    .local v6, "authorityName":Ljava/lang/String;
    const-string/jumbo v17, "enabled"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1692
    .local v10, "enabled":Ljava/lang/String;
    const-string/jumbo v17, "syncable"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1693
    .local v14, "syncable":Ljava/lang/String;
    const-string/jumbo v17, "account"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1694
    .local v3, "accountName":Ljava/lang/String;
    const-string/jumbo v17, "type"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1695
    .local v4, "accountType":Ljava/lang/String;
    const-string/jumbo v17, "user"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1696
    .local v15, "user":Ljava/lang/String;
    const-string/jumbo v17, "package"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1697
    .local v13, "packageName":Ljava/lang/String;
    const-string/jumbo v17, "class"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1698
    .local v7, "className":Ljava/lang/String;
    if-nez v15, :cond_5

    const/16 v16, 0x0

    .line 1699
    .local v16, "userId":I
    :goto_1
    if-nez v4, :cond_0

    if-nez v13, :cond_0

    .line 1700
    const-string/jumbo v4, "com.google"

    .line 1701
    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 1703
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    check-cast v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1704
    .local v5, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const-string/jumbo v17, "SyncManagerFile"

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1705
    const-string/jumbo v17, "SyncManagerFile"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Adding authority: account="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1707
    const-string/jumbo v19, " accountType="

    .line 1705
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1708
    const-string/jumbo v19, " auth="

    .line 1705
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1709
    const-string/jumbo v19, " package="

    .line 1705
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1710
    const-string/jumbo v19, " class="

    .line 1705
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1711
    const-string/jumbo v19, " user="

    .line 1705
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1712
    const-string/jumbo v19, " enabled="

    .line 1705
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1713
    const-string/jumbo v19, " syncable="

    .line 1705
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    :cond_1
    if-nez v5, :cond_3

    .line 1716
    const-string/jumbo v17, "SyncManagerFile"

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1717
    const-string/jumbo v17, "SyncManagerFile"

    const-string/jumbo v18, "Creating authority entry"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    :cond_2
    if-eqz v3, :cond_3

    if-eqz v6, :cond_3

    .line 1720
    new-instance v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1721
    new-instance v17, Landroid/accounts/Account;

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-direct {v12, v0, v6, v1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1723
    .local v12, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    iget-object v0, v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    move-object/from16 v17, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->isAccountValid(Landroid/accounts/Account;I)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 1724
    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v6, v1}, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;->isAuthorityValid(Ljava/lang/String;I)Z

    move-result v17

    .line 1723
    if-eqz v17, :cond_6

    .line 1725
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v12, v11, v1}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v5

    .line 1732
    if-lez p2, :cond_3

    .line 1733
    iget-object v0, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 1742
    .end local v12    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_3
    :goto_2
    if-eqz v5, :cond_b

    .line 1743
    if-eqz v10, :cond_7

    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v17

    :goto_3
    move/from16 v0, v17

    iput-boolean v0, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 1745
    if-nez v14, :cond_8

    .line 1746
    const/16 v17, -0x1

    .line 1745
    :goto_4
    :try_start_1
    move/from16 v0, v17

    iput v0, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1765
    .end local v3    # "accountName":Ljava/lang/String;
    .end local v4    # "accountType":Ljava/lang/String;
    .end local v5    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v6    # "authorityName":Ljava/lang/String;
    .end local v7    # "className":Ljava/lang/String;
    .end local v10    # "enabled":Ljava/lang/String;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "syncable":Ljava/lang/String;
    .end local v15    # "user":Ljava/lang/String;
    .end local v16    # "userId":I
    :cond_4
    :goto_5
    return-object v5

    .line 1686
    .local v5, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catch_0
    move-exception v8

    .line 1687
    .local v8, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v17, "SyncManager"

    const-string/jumbo v18, "the id of the authority is null"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1684
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v9

    .line 1685
    .local v9, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v17, "SyncManager"

    const-string/jumbo v18, "error parsing the id of the authority"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1698
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "accountName":Ljava/lang/String;
    .restart local v4    # "accountType":Ljava/lang/String;
    .restart local v6    # "authorityName":Ljava/lang/String;
    .restart local v7    # "className":Ljava/lang/String;
    .restart local v10    # "enabled":Ljava/lang/String;
    .restart local v13    # "packageName":Ljava/lang/String;
    .restart local v14    # "syncable":Ljava/lang/String;
    .restart local v15    # "user":Ljava/lang/String;
    :cond_5
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .restart local v16    # "userId":I
    goto/16 :goto_1

    .line 1736
    .local v5, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v12    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_6
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const-string/jumbo v18, "35028827"

    const/16 v19, 0x0

    aput-object v18, v17, v19

    const/16 v18, -0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v19, 0x1

    aput-object v18, v17, v19

    .line 1737
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "account:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v12, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " provider:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " user:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x2

    aput-object v18, v17, v19

    .line 1736
    const v18, 0x534e4554

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto/16 :goto_2

    .line 1743
    .end local v12    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_7
    const/16 v17, 0x1

    goto/16 :goto_3

    .line 1746
    :cond_8
    :try_start_2
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v17

    goto/16 :goto_4

    .line 1747
    :catch_2
    move-exception v9

    .line 1750
    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v17, "unknown"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 1751
    const/16 v17, -0x1

    move/from16 v0, v17

    iput v0, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    goto/16 :goto_5

    .line 1753
    :cond_9
    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 1754
    const/16 v17, 0x1

    .line 1753
    :goto_6
    move/from16 v0, v17

    iput v0, v5, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    goto/16 :goto_5

    .line 1754
    :cond_a
    const/16 v17, 0x0

    goto :goto_6

    .line 1759
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :cond_b
    const-string/jumbo v17, "SyncManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Failure adding authority: account="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1760
    const-string/jumbo v19, " auth="

    .line 1759
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1761
    const-string/jumbo v19, " enabled="

    .line 1759
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1762
    const-string/jumbo v19, " syncable="

    .line 1759
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5
.end method

.method private parseExtra(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 1809
    const-string/jumbo v6, "name"

    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1810
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v6, "type"

    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1811
    .local v3, "type":Ljava/lang/String;
    const-string/jumbo v6, "value1"

    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1812
    .local v4, "value1":Ljava/lang/String;
    const-string/jumbo v6, "value2"

    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1815
    .local v5, "value2":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v6, "long"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1816
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p2, v2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1808
    :cond_0
    :goto_0
    return-void

    .line 1817
    :cond_1
    const-string/jumbo v6, "integer"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1818
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p2, v2, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1830
    :catch_0
    move-exception v1

    .line 1831
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v6, "SyncManager"

    const-string/jumbo v7, "error parsing bundle value"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1819
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    :try_start_1
    const-string/jumbo v6, "double"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1820
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {p2, v2, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1832
    :catch_1
    move-exception v0

    .line 1833
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "SyncManager"

    const-string/jumbo v7, "error parsing bundle value"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1821
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_3
    :try_start_2
    const-string/jumbo v6, "float"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1822
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p2, v2, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 1823
    :cond_4
    const-string/jumbo v6, "boolean"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1824
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {p2, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1825
    :cond_5
    const-string/jumbo v6, "string"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1826
    invoke-virtual {p2, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1827
    :cond_6
    const-string/jumbo v6, "account"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1828
    new-instance v6, Landroid/accounts/Account;

    invoke-direct {v6, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v2, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method private parseListenForTickles(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 9
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v8, 0x0

    .line 1664
    const-string/jumbo v6, "user"

    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1665
    .local v4, "user":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1667
    .local v5, "userId":I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 1673
    :goto_0
    const-string/jumbo v6, "enabled"

    invoke-interface {p1, v8, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1674
    .local v2, "enabled":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1675
    :goto_1
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1663
    return-void

    .line 1670
    .end local v2    # "enabled":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1671
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "SyncManager"

    const-string/jumbo v7, "the user in listen-for-tickles is null"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1668
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 1669
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v6, "SyncManager"

    const-string/jumbo v7, "error parsing the user for listen-for-tickles"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1674
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "enabled":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x1

    .local v3, "listen":Z
    goto :goto_1
.end method

.method private parsePeriodicSync(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/content/PeriodicSync;
    .locals 16
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "authorityInfo"    # Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .prologue
    .line 1772
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1773
    .local v5, "extras":Landroid/os/Bundle;
    const-string/jumbo v3, "period"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1774
    .local v14, "periodValue":Ljava/lang/String;
    const-string/jumbo v3, "flex"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1778
    .local v13, "flexValue":Ljava/lang/String;
    :try_start_0
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 1787
    .local v6, "period":J
    :try_start_1
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-wide v8

    .line 1800
    .local v8, "flextime":J
    :goto_0
    new-instance v2, Landroid/content/PeriodicSync;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 1801
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 1800
    invoke-direct/range {v2 .. v9}, Landroid/content/PeriodicSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JJ)V

    .line 1804
    .local v2, "periodicSync":Landroid/content/PeriodicSync;
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1805
    return-object v2

    .line 1782
    .end local v2    # "periodicSync":Landroid/content/PeriodicSync;
    .end local v6    # "period":J
    .end local v8    # "flextime":J
    :catch_0
    move-exception v10

    .line 1783
    .local v10, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "SyncManager"

    const-string/jumbo v4, "the period of a periodic sync is null"

    invoke-static {v3, v4, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1784
    const/4 v3, 0x0

    return-object v3

    .line 1779
    .end local v10    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v11

    .line 1780
    .local v11, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "SyncManager"

    const-string/jumbo v4, "error parsing the period of a periodic sync"

    invoke-static {v3, v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1781
    const/4 v3, 0x0

    return-object v3

    .line 1793
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    .restart local v6    # "period":J
    :catch_2
    move-exception v12

    .line 1794
    .local v12, "expected":Ljava/lang/NullPointerException;
    invoke-static {v6, v7}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    move-result-wide v8

    .line 1795
    .restart local v8    # "flextime":J
    const-string/jumbo v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "No flex time specified for this sync, using a default. period: "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1796
    const-string/jumbo v15, " flex: "

    .line 1795
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1788
    .end local v8    # "flextime":J
    .end local v12    # "expected":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v11

    .line 1789
    .restart local v11    # "e":Ljava/lang/NumberFormatException;
    invoke-static {v6, v7}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    move-result-wide v8

    .line 1790
    .restart local v8    # "flextime":J
    const-string/jumbo v3, "SyncManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Error formatting value parsed for periodic sync flex: "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1791
    const-string/jumbo v15, ", using default: "

    .line 1790
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private readAccountInfoLocked()V
    .locals 26

    .prologue
    .line 1493
    const/4 v11, -0x1

    .line 1494
    .local v11, "highestAuthorityId":I
    const/4 v10, 0x0

    .line 1496
    .local v10, "fis":Ljava/io/FileInputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v10

    .line 1497
    .local v10, "fis":Ljava/io/FileInputStream;
    const-string/jumbo v23, "SyncManagerFile"

    const/16 v24, 0x2

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 1498
    const-string/jumbo v23, "SyncManagerFile"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Reading "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    :cond_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v16

    .line 1501
    .local v16, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v23, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v23 .. v23}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-interface {v0, v10, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1502
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    .line 1503
    .local v9, "eventType":I
    :goto_0
    const/16 v23, 0x2

    move/from16 v0, v23

    if-eq v9, v0, :cond_1

    .line 1504
    const/16 v23, 0x1

    move/from16 v0, v23

    if-eq v9, v0, :cond_1

    .line 1505
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    goto :goto_0

    .line 1507
    :cond_1
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v9, v0, :cond_3

    .line 1508
    const-string/jumbo v23, "SyncManager"

    const-string/jumbo v24, "No initial accounts"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1583
    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1584
    if-eqz v10, :cond_2

    .line 1586
    :try_start_1
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1509
    :cond_2
    :goto_1
    return-void

    .line 1587
    :catch_0
    move-exception v8

    .local v8, "e1":Ljava/io/IOException;
    goto :goto_1

    .line 1512
    .end local v8    # "e1":Ljava/io/IOException;
    :cond_3
    :try_start_2
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1513
    .local v19, "tagName":Ljava/lang/String;
    const-string/jumbo v23, "accounts"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 1514
    const-string/jumbo v23, "listen-for-tickles"

    const/16 v24, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1515
    .local v13, "listen":Ljava/lang/String;
    const-string/jumbo v23, "version"

    const/16 v24, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1518
    .local v22, "versionString":Ljava/lang/String;
    if-nez v22, :cond_9

    const/16 v21, 0x0

    .line 1522
    .local v21, "version":I
    :goto_2
    const-string/jumbo v23, "nextAuthorityId"

    const/16 v24, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v14

    .line 1524
    .local v14, "nextIdString":Ljava/lang/String;
    if-nez v14, :cond_a

    const/4 v12, 0x0

    .line 1525
    .local v12, "id":I
    :goto_3
    :try_start_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1529
    .end local v12    # "id":I
    :goto_4
    :try_start_4
    const-string/jumbo v23, "offsetInSeconds"

    const/16 v24, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v15

    .line 1531
    .local v15, "offsetString":Ljava/lang/String;
    if-nez v15, :cond_b

    const/16 v23, 0x0

    :goto_5
    :try_start_5
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1535
    :goto_6
    :try_start_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    move/from16 v23, v0

    if-nez v23, :cond_4

    .line 1536
    new-instance v18, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-object/from16 v0, v18

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 1537
    .local v18, "random":Ljava/util/Random;
    const v23, 0x15180

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    .line 1539
    .end local v18    # "random":Ljava/util/Random;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    if-eqz v13, :cond_d

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v23

    :goto_7
    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1540
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .line 1541
    const/4 v4, 0x0

    .line 1542
    .local v4, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const/16 v17, 0x0

    .line 1543
    .local v17, "periodicSync":Landroid/content/PeriodicSync;
    new-instance v20, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;-><init>(Landroid/content/Context;)V

    .line 1545
    .end local v4    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v17    # "periodicSync":Landroid/content/PeriodicSync;
    .local v20, "validator":Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;
    :cond_5
    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v9, v0, :cond_6

    .line 1546
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    .line 1547
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_12

    .line 1548
    const-string/jumbo v23, "authority"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_10

    .line 1549
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v21

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/content/SyncStorageEngine;->parseAuthority(Lorg/xmlpull/v1/XmlPullParser;ILcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v4

    .line 1550
    .local v4, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    const/16 v17, 0x0

    .line 1551
    .restart local v17    # "periodicSync":Landroid/content/PeriodicSync;
    if-eqz v4, :cond_e

    .line 1552
    iget v0, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-le v0, v11, :cond_6

    .line 1553
    iget v11, v4, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    .line 1572
    .end local v4    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v17    # "periodicSync":Landroid/content/PeriodicSync;
    :cond_6
    :goto_8
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v9

    .line 1573
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v9, v0, :cond_5

    .line 1583
    .end local v13    # "listen":Ljava/lang/String;
    .end local v14    # "nextIdString":Ljava/lang/String;
    .end local v15    # "offsetString":Ljava/lang/String;
    .end local v20    # "validator":Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;
    .end local v21    # "version":I
    .end local v22    # "versionString":Ljava/lang/String;
    :cond_7
    add-int/lit8 v23, v11, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1584
    if-eqz v10, :cond_8

    .line 1586
    :try_start_7
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1592
    :cond_8
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->maybeMigrateSettingsForRenamedAuthorities()Z

    .line 1492
    return-void

    .line 1518
    .restart local v13    # "listen":Ljava/lang/String;
    .restart local v22    # "versionString":Ljava/lang/String;
    :cond_9
    :try_start_8
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v21

    .restart local v21    # "version":I
    goto/16 :goto_2

    .line 1519
    .end local v21    # "version":I
    :catch_1
    move-exception v6

    .line 1520
    .local v6, "e":Ljava/lang/NumberFormatException;
    const/16 v21, 0x0

    .restart local v21    # "version":I
    goto/16 :goto_2

    .line 1524
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .restart local v14    # "nextIdString":Ljava/lang/String;
    :cond_a
    :try_start_9
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v12

    .restart local v12    # "id":I
    goto/16 :goto_3

    .line 1531
    .end local v12    # "id":I
    .restart local v15    # "offsetString":Ljava/lang/String;
    :cond_b
    :try_start_a
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v23

    goto/16 :goto_5

    .line 1532
    :catch_2
    move-exception v6

    .line 1533
    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    const/16 v23, 0x0

    :try_start_b
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_6

    .line 1575
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .end local v9    # "eventType":I
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v13    # "listen":Ljava/lang/String;
    .end local v14    # "nextIdString":Ljava/lang/String;
    .end local v15    # "offsetString":Ljava/lang/String;
    .end local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v19    # "tagName":Ljava/lang/String;
    .end local v21    # "version":I
    .end local v22    # "versionString":Ljava/lang/String;
    :catch_3
    move-exception v7

    .line 1576
    .local v7, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_c
    const-string/jumbo v23, "SyncManager"

    const-string/jumbo v24, "Error reading accounts"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1583
    add-int/lit8 v23, v11, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1584
    if-eqz v10, :cond_c

    .line 1586
    :try_start_d
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 1577
    :cond_c
    :goto_a
    return-void

    .line 1539
    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v9    # "eventType":I
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "listen":Ljava/lang/String;
    .restart local v14    # "nextIdString":Ljava/lang/String;
    .restart local v15    # "offsetString":Ljava/lang/String;
    .restart local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v19    # "tagName":Ljava/lang/String;
    .restart local v21    # "version":I
    .restart local v22    # "versionString":Ljava/lang/String;
    :cond_d
    const/16 v23, 0x1

    goto/16 :goto_7

    .line 1556
    .restart local v4    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v17    # "periodicSync":Landroid/content/PeriodicSync;
    .restart local v20    # "validator":Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;
    :cond_e
    const/16 v23, 0x3

    :try_start_e
    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const-string/jumbo v24, "26513719"

    const/16 v25, 0x0

    aput-object v24, v23, v25

    const/16 v24, -0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v25, 0x1

    aput-object v24, v23, v25

    .line 1557
    const-string/jumbo v24, "Malformed authority"

    const/16 v25, 0x2

    aput-object v24, v23, v25

    .line 1556
    const v24, 0x534e4554

    move/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_8

    .line 1578
    .end local v4    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v9    # "eventType":I
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v13    # "listen":Ljava/lang/String;
    .end local v14    # "nextIdString":Ljava/lang/String;
    .end local v15    # "offsetString":Ljava/lang/String;
    .end local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "periodicSync":Landroid/content/PeriodicSync;
    .end local v19    # "tagName":Ljava/lang/String;
    .end local v20    # "validator":Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;
    .end local v21    # "version":I
    .end local v22    # "versionString":Ljava/lang/String;
    :catch_4
    move-exception v5

    .line 1579
    .local v5, "e":Ljava/io/IOException;
    if-nez v10, :cond_14

    :try_start_f
    const-string/jumbo v23, "SyncManager"

    const-string/jumbo v24, "No initial accounts"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 1583
    :goto_b
    add-int/lit8 v23, v11, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1584
    if-eqz v10, :cond_f

    .line 1586
    :try_start_10
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    .line 1581
    :cond_f
    :goto_c
    return-void

    .line 1559
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v9    # "eventType":I
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "listen":Ljava/lang/String;
    .restart local v14    # "nextIdString":Ljava/lang/String;
    .restart local v15    # "offsetString":Ljava/lang/String;
    .restart local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v19    # "tagName":Ljava/lang/String;
    .restart local v20    # "validator":Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;
    .restart local v21    # "version":I
    .restart local v22    # "versionString":Ljava/lang/String;
    :cond_10
    :try_start_11
    const-string/jumbo v23, "listenForTickles"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 1560
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/content/SyncStorageEngine;->parseListenForTickles(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_8

    .line 1582
    .end local v9    # "eventType":I
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v13    # "listen":Ljava/lang/String;
    .end local v14    # "nextIdString":Ljava/lang/String;
    .end local v15    # "offsetString":Ljava/lang/String;
    .end local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v19    # "tagName":Ljava/lang/String;
    .end local v20    # "validator":Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;
    .end local v21    # "version":I
    .end local v22    # "versionString":Ljava/lang/String;
    :catchall_0
    move-exception v23

    .line 1583
    add-int/lit8 v24, v11, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    move/from16 v25, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(II)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    .line 1584
    if-eqz v10, :cond_11

    .line 1586
    :try_start_12
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8

    .line 1582
    :cond_11
    :goto_d
    throw v23

    .line 1562
    .restart local v9    # "eventType":I
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "listen":Ljava/lang/String;
    .restart local v14    # "nextIdString":Ljava/lang/String;
    .restart local v15    # "offsetString":Ljava/lang/String;
    .restart local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v19    # "tagName":Ljava/lang/String;
    .restart local v20    # "validator":Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;
    .restart local v21    # "version":I
    .restart local v22    # "versionString":Ljava/lang/String;
    :cond_12
    :try_start_13
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v23

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_13

    .line 1563
    const-string/jumbo v23, "periodicSync"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    if-eqz v4, :cond_6

    .line 1564
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v4}, Lcom/android/server/content/SyncStorageEngine;->parsePeriodicSync(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/content/PeriodicSync;

    move-result-object v17

    .local v17, "periodicSync":Landroid/content/PeriodicSync;
    goto/16 :goto_8

    .line 1566
    .end local v17    # "periodicSync":Landroid/content/PeriodicSync;
    :cond_13
    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v23

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    if-eqz v17, :cond_6

    .line 1567
    const-string/jumbo v23, "extra"

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 1568
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->parseExtra(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    :try_end_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_8

    .line 1587
    .end local v13    # "listen":Ljava/lang/String;
    .end local v14    # "nextIdString":Ljava/lang/String;
    .end local v15    # "offsetString":Ljava/lang/String;
    .end local v20    # "validator":Lcom/android/server/content/SyncStorageEngine$AccountAuthorityValidator;
    .end local v21    # "version":I
    .end local v22    # "versionString":Ljava/lang/String;
    :catch_5
    move-exception v8

    .restart local v8    # "e1":Ljava/io/IOException;
    goto/16 :goto_9

    .line 1580
    .end local v8    # "e1":Ljava/io/IOException;
    .end local v9    # "eventType":I
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v19    # "tagName":Ljava/lang/String;
    .restart local v5    # "e":Ljava/io/IOException;
    :cond_14
    :try_start_14
    const-string/jumbo v23, "SyncManager"

    const-string/jumbo v24, "Error reading accounts"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_b

    .line 1587
    :catch_6
    move-exception v8

    .restart local v8    # "e1":Ljava/io/IOException;
    goto/16 :goto_c

    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "e1":Ljava/io/IOException;
    .restart local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_7
    move-exception v8

    .restart local v8    # "e1":Ljava/io/IOException;
    goto/16 :goto_a

    .end local v7    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v8    # "e1":Ljava/io/IOException;
    :catch_8
    move-exception v8

    .restart local v8    # "e1":Ljava/io/IOException;
    goto :goto_d

    .line 1526
    .end local v8    # "e1":Ljava/io/IOException;
    .restart local v9    # "eventType":I
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v13    # "listen":Ljava/lang/String;
    .restart local v14    # "nextIdString":Ljava/lang/String;
    .restart local v16    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v19    # "tagName":Ljava/lang/String;
    .restart local v21    # "version":I
    .restart local v22    # "versionString":Ljava/lang/String;
    :catch_9
    move-exception v6

    .restart local v6    # "e":Ljava/lang/NumberFormatException;
    goto/16 :goto_4
.end method

.method private readAndDeleteLegacyAccountInfoLocked()V
    .locals 26

    .prologue
    .line 1909
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "syncmanager.db"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    .line 1910
    .local v16, "file":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1911
    return-void

    .line 1913
    :cond_0
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v22

    .line 1914
    .local v22, "path":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1916
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x0

    .line 1917
    const/4 v5, 0x1

    .line 1916
    :try_start_0
    move-object/from16 v0, v22

    invoke-static {v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1921
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    if-eqz v3, :cond_12

    .line 1922
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v4

    const/16 v5, 0xb

    if-lt v4, v5, :cond_8

    const/16 v18, 0x1

    .line 1925
    .local v18, "hasType":Z
    :goto_1
    const-string/jumbo v4, "SyncManagerFile"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1926
    const-string/jumbo v4, "SyncManagerFile"

    const-string/jumbo v5, "Reading legacy sync accounts db"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1928
    :cond_1
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1929
    .local v2, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v4, "stats, status"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1930
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 1931
    .local v20, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "_id"

    const-string/jumbo v5, "status._id as _id"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1932
    const-string/jumbo v4, "account"

    const-string/jumbo v5, "stats.account as account"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1933
    if-eqz v18, :cond_2

    .line 1934
    const-string/jumbo v4, "account_type"

    const-string/jumbo v5, "stats.account_type as account_type"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1936
    :cond_2
    const-string/jumbo v4, "authority"

    const-string/jumbo v5, "stats.authority as authority"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1937
    const-string/jumbo v4, "totalElapsedTime"

    const-string/jumbo v5, "totalElapsedTime"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1938
    const-string/jumbo v4, "numSyncs"

    const-string/jumbo v5, "numSyncs"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1939
    const-string/jumbo v4, "numSourceLocal"

    const-string/jumbo v5, "numSourceLocal"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1940
    const-string/jumbo v4, "numSourcePoll"

    const-string/jumbo v5, "numSourcePoll"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1941
    const-string/jumbo v4, "numSourceServer"

    const-string/jumbo v5, "numSourceServer"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1942
    const-string/jumbo v4, "numSourceUser"

    const-string/jumbo v5, "numSourceUser"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1943
    const-string/jumbo v4, "lastSuccessSource"

    const-string/jumbo v5, "lastSuccessSource"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1944
    const-string/jumbo v4, "lastSuccessTime"

    const-string/jumbo v5, "lastSuccessTime"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1945
    const-string/jumbo v4, "lastFailureSource"

    const-string/jumbo v5, "lastFailureSource"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1946
    const-string/jumbo v4, "lastFailureTime"

    const-string/jumbo v5, "lastFailureTime"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1947
    const-string/jumbo v4, "lastFailureMesg"

    const-string/jumbo v5, "lastFailureMesg"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1948
    const-string/jumbo v4, "pending"

    const-string/jumbo v5, "pending"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1949
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1950
    const-string/jumbo v4, "stats._id = status.stats_id"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1951
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1952
    .local v14, "c":Landroid/database/Cursor;
    :cond_3
    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1953
    const-string/jumbo v4, "account"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1954
    .local v10, "accountName":Ljava/lang/String;
    if-eqz v18, :cond_9

    .line 1955
    const-string/jumbo v4, "account_type"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1956
    .local v11, "accountType":Ljava/lang/String;
    :goto_3
    if-nez v11, :cond_4

    .line 1957
    const-string/jumbo v11, "com.google"

    .line 1959
    :cond_4
    const-string/jumbo v4, "authority"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1962
    .local v13, "authorityName":Ljava/lang/String;
    new-instance v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    new-instance v5, Landroid/accounts/Account;

    invoke-direct {v5, v10, v11}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1964
    const/4 v6, 0x0

    .line 1962
    invoke-direct {v4, v5, v13, v6}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 1965
    const/4 v5, -0x1

    .line 1966
    const/4 v6, 0x0

    .line 1961
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v12

    .line 1967
    .local v12, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v12, :cond_3

    .line 1968
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v19

    .line 1969
    .local v19, "i":I
    const/16 v17, 0x0

    .line 1970
    .local v17, "found":Z
    const/16 v24, 0x0

    .line 1971
    :cond_5
    if-lez v19, :cond_6

    .line 1972
    add-int/lit8 v19, v19, -0x1

    .line 1973
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/SyncStatusInfo;

    .line 1974
    .local v24, "st":Landroid/content/SyncStatusInfo;
    move-object/from16 v0, v24

    iget v4, v0, Landroid/content/SyncStatusInfo;->authorityId:I

    iget v5, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    if-ne v4, v5, :cond_5

    .line 1975
    const/16 v17, 0x1

    .line 1979
    .end local v24    # "st":Landroid/content/SyncStatusInfo;
    :cond_6
    if-nez v17, :cond_7

    .line 1980
    new-instance v24, Landroid/content/SyncStatusInfo;

    iget v4, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Landroid/content/SyncStatusInfo;-><init>(I)V

    .line 1981
    .restart local v24    # "st":Landroid/content/SyncStatusInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    iget v5, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    move-object/from16 v0, v24

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1983
    .end local v24    # "st":Landroid/content/SyncStatusInfo;
    :cond_7
    const-string/jumbo v4, "totalElapsedTime"

    invoke-static {v14, v4}, Lcom/android/server/content/SyncStorageEngine;->getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, v24

    iput-wide v4, v0, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    .line 1984
    const-string/jumbo v4, "numSyncs"

    invoke-static {v14, v4}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v24

    iput v4, v0, Landroid/content/SyncStatusInfo;->numSyncs:I

    .line 1985
    const-string/jumbo v4, "numSourceLocal"

    invoke-static {v14, v4}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v24

    iput v4, v0, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    .line 1986
    const-string/jumbo v4, "numSourcePoll"

    invoke-static {v14, v4}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v24

    iput v4, v0, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    .line 1987
    const-string/jumbo v4, "numSourceServer"

    invoke-static {v14, v4}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v24

    iput v4, v0, Landroid/content/SyncStatusInfo;->numSourceServer:I

    .line 1988
    const-string/jumbo v4, "numSourceUser"

    invoke-static {v14, v4}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v24

    iput v4, v0, Landroid/content/SyncStatusInfo;->numSourceUser:I

    .line 1989
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iput v4, v0, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    .line 1990
    const-string/jumbo v4, "lastSuccessSource"

    invoke-static {v14, v4}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v24

    iput v4, v0, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    .line 1991
    const-string/jumbo v4, "lastSuccessTime"

    invoke-static {v14, v4}, Lcom/android/server/content/SyncStorageEngine;->getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, v24

    iput-wide v4, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    .line 1992
    const-string/jumbo v4, "lastFailureSource"

    invoke-static {v14, v4}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v24

    iput v4, v0, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    .line 1993
    const-string/jumbo v4, "lastFailureTime"

    invoke-static {v14, v4}, Lcom/android/server/content/SyncStorageEngine;->getLongColumn(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, v24

    iput-wide v4, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    .line 1994
    const-string/jumbo v4, "lastFailureMesg"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    iput-object v4, v0, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    .line 1995
    const-string/jumbo v4, "pending"

    invoke-static {v14, v4}, Lcom/android/server/content/SyncStorageEngine;->getIntColumn(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, v24

    iput-boolean v4, v0, Landroid/content/SyncStatusInfo;->pending:Z

    goto/16 :goto_2

    .line 1918
    .end local v2    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v10    # "accountName":Ljava/lang/String;
    .end local v11    # "accountType":Ljava/lang/String;
    .end local v12    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v13    # "authorityName":Ljava/lang/String;
    .end local v14    # "c":Landroid/database/Cursor;
    .end local v17    # "found":Z
    .end local v18    # "hasType":Z
    .end local v19    # "i":I
    .end local v20    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v15

    .local v15, "e":Landroid/database/sqlite/SQLiteException;
    goto/16 :goto_0

    .line 1922
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v15    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_8
    const/16 v18, 0x0

    .restart local v18    # "hasType":Z
    goto/16 :goto_1

    .line 1955
    .restart local v2    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v10    # "accountName":Ljava/lang/String;
    .restart local v14    # "c":Landroid/database/Cursor;
    .restart local v20    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 1995
    .restart local v11    # "accountType":Ljava/lang/String;
    .restart local v12    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v13    # "authorityName":Ljava/lang/String;
    .restart local v17    # "found":Z
    .restart local v19    # "i":I
    :cond_a
    const/4 v4, 0x0

    goto :goto_4

    .line 1999
    .end local v10    # "accountName":Ljava/lang/String;
    .end local v11    # "accountType":Ljava/lang/String;
    .end local v12    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v13    # "authorityName":Ljava/lang/String;
    .end local v17    # "found":Z
    .end local v19    # "i":I
    :cond_b
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2002
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    .end local v2    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2003
    .restart local v2    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v4, "settings"

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2004
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 2005
    :cond_c
    :goto_5
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2006
    const-string/jumbo v4, "name"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 2007
    .local v21, "name":Ljava/lang/String;
    const-string/jumbo v4, "value"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 2008
    .local v25, "value":Ljava/lang/String;
    if-eqz v21, :cond_c

    .line 2009
    const-string/jumbo v4, "listen_for_tickles"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 2010
    if-eqz v25, :cond_d

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    :goto_6
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/server/content/SyncStorageEngine;->setMasterSyncAutomatically(ZI)V

    goto :goto_5

    :cond_d
    const/4 v4, 0x1

    goto :goto_6

    .line 2011
    :cond_e
    const-string/jumbo v4, "sync_provider_"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2012
    const-string/jumbo v4, "sync_provider_"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 2013
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v5

    .line 2012
    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 2014
    .local v23, "provider":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v19

    .line 2015
    .restart local v19    # "i":I
    :cond_f
    :goto_7
    if-lez v19, :cond_c

    .line 2016
    add-int/lit8 v19, v19, -0x1

    .line 2017
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 2018
    .restart local v12    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v4, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v4, v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2019
    if-eqz v25, :cond_10

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    :goto_8
    iput-boolean v4, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 2020
    const/4 v4, 0x1

    iput v4, v12, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    goto :goto_7

    .line 2019
    :cond_10
    const/4 v4, 0x1

    goto :goto_8

    .line 2026
    .end local v12    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v19    # "i":I
    .end local v21    # "name":Ljava/lang/String;
    .end local v23    # "provider":Ljava/lang/String;
    .end local v25    # "value":Ljava/lang/String;
    :cond_11
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2028
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2030
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1907
    .end local v2    # "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v14    # "c":Landroid/database/Cursor;
    .end local v18    # "hasType":Z
    .end local v20    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_12
    return-void
.end method

.method private readStatisticsLocked()V
    .locals 11

    .prologue
    const/16 v10, 0x64

    .line 2146
    :try_start_0
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v0

    .line 2147
    .local v0, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 2148
    .local v4, "in":Landroid/os/Parcel;
    array-length v7, v0

    const/4 v8, 0x0

    invoke-virtual {v4, v0, v8, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2149
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2151
    const/4 v5, 0x0

    .line 2152
    .local v5, "index":I
    :cond_0
    :goto_0
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "token":I
    if-eqz v6, :cond_4

    .line 2153
    const/16 v7, 0x65

    if-eq v6, v7, :cond_1

    .line 2154
    if-ne v6, v10, :cond_3

    .line 2155
    :cond_1
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2156
    .local v1, "day":I
    if-ne v6, v10, :cond_2

    .line 2157
    add-int/lit16 v7, v1, -0x7d9

    add-int/lit16 v1, v7, 0x37a5

    .line 2159
    :cond_2
    new-instance v2, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v2, v1}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    .line 2160
    .local v2, "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 2161
    invoke-virtual {v4}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    .line 2162
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 2163
    invoke-virtual {v4}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    .line 2164
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v7, v7

    if-ge v5, v7, :cond_0

    .line 2165
    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    aput-object v2, v7, v5

    .line 2166
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2170
    .end local v1    # "day":I
    .end local v2    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_3
    const-string/jumbo v7, "SyncManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unknown stats token: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2144
    .end local v0    # "data":[B
    .end local v4    # "in":Landroid/os/Parcel;
    .end local v5    # "index":I
    .end local v6    # "token":I
    :cond_4
    :goto_1
    return-void

    .line 2174
    :catch_0
    move-exception v3

    .line 2175
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v7, "SyncManager"

    const-string/jumbo v8, "No initial statistics"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private readStatusLocked()V
    .locals 8

    .prologue
    const/4 v6, 0x2

    .line 2041
    const-string/jumbo v5, "SyncManagerFile"

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2042
    const-string/jumbo v5, "SyncManagerFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Reading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v0

    .line 2046
    .local v0, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2047
    .local v2, "in":Landroid/os/Parcel;
    array-length v5, v0

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2048
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2050
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "token":I
    if-eqz v4, :cond_3

    .line 2051
    const/16 v5, 0x64

    if-ne v4, v5, :cond_4

    .line 2052
    new-instance v3, Landroid/content/SyncStatusInfo;

    invoke-direct {v3, v2}, Landroid/content/SyncStatusInfo;-><init>(Landroid/os/Parcel;)V

    .line 2053
    .local v3, "status":Landroid/content/SyncStatusInfo;
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v6, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_1

    .line 2054
    const/4 v5, 0x0

    iput-boolean v5, v3, Landroid/content/SyncStatusInfo;->pending:Z

    .line 2055
    const-string/jumbo v5, "SyncManagerFile"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2056
    const-string/jumbo v5, "SyncManagerFile"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Adding status for id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    :cond_2
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    iget v6, v3, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v5, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2066
    .end local v0    # "data":[B
    .end local v2    # "in":Landroid/os/Parcel;
    .end local v3    # "status":Landroid/content/SyncStatusInfo;
    .end local v4    # "token":I
    :catch_0
    move-exception v1

    .line 2067
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v5, "SyncManager"

    const-string/jumbo v6, "No initial status"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    :goto_1
    return-void

    .line 2062
    .restart local v0    # "data":[B
    .restart local v2    # "in":Landroid/os/Parcel;
    .restart local v4    # "token":I
    :cond_4
    :try_start_1
    const-string/jumbo v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown status token: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V
    .locals 4
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "authorityName"    # Ljava/lang/String;
    .param p4, "doWrite"    # Z

    .prologue
    .line 1436
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    new-instance v3, Landroid/accounts/AccountAndUser;

    invoke-direct {v3, p1, p2}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 1437
    .local v0, "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    if-eqz v0, :cond_1

    .line 1438
    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1439
    .local v1, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v1, :cond_1

    .line 1440
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    if-eqz v2, :cond_0

    .line 1441
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    iget-object v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-interface {v2, v3}, Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;->onAuthorityRemoved(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 1443
    :cond_0
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 1444
    if-eqz p4, :cond_1

    .line 1445
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1435
    .end local v1    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_1
    return-void
.end method

.method private requestSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "reason"    # I
    .param p4, "authority"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2126
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 2127
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    if-eqz v0, :cond_0

    .line 2128
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    .line 2129
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v1, p1, p4, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 2128
    invoke-interface {v0, v1, p3, p5}, Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;->onSyncRequest(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILandroid/os/Bundle;)V

    .line 2121
    :goto_0
    return-void

    .line 2133
    :cond_0
    invoke-static {p1, p4, p5}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private requestSync(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "authorityInfo"    # Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .param p2, "reason"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2107
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    .line 2108
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    if-eqz v1, :cond_0

    .line 2109
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-interface {v1, v2, p2, p3}, Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;->onSyncRequest(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILandroid/os/Bundle;)V

    .line 2106
    :goto_0
    return-void

    .line 2112
    :cond_0
    new-instance v1, Landroid/content/SyncRequest$Builder;

    invoke-direct {v1}, Landroid/content/SyncRequest$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/content/SyncRequest$Builder;->syncOnce()Landroid/content/SyncRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/SyncRequest$Builder;->setExtras(Landroid/os/Bundle;)Landroid/content/SyncRequest$Builder;

    move-result-object v0

    .line 2115
    .local v0, "req":Landroid/content/SyncRequest$Builder;
    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/SyncRequest$Builder;->setSyncAdapter(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncRequest$Builder;

    .line 2116
    invoke-virtual {v0}, Landroid/content/SyncRequest$Builder;->build()Landroid/content/SyncRequest;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentResolver;->requestSync(Landroid/content/SyncRequest;)V

    goto :goto_0
.end method

.method private setBackoffLocked(Landroid/accounts/Account;ILjava/lang/String;JJ)Z
    .locals 8
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;
    .param p4, "nextSyncTime"    # J
    .param p6, "nextDelay"    # J

    .prologue
    .line 781
    const/4 v4, 0x0

    .line 782
    .local v4, "changed":Z
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "accountInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 783
    .local v0, "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    if-eqz p1, :cond_1

    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget-object v5, v5, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {p1, v5}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 787
    :cond_1
    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "authorityInfo$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 788
    .local v2, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz p3, :cond_3

    .line 789
    iget-object v5, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v5, v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 792
    :cond_3
    iget-wide v6, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v5, v6, p4

    if-nez v5, :cond_4

    .line 793
    iget-wide v6, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v5, v6, p6

    if-eqz v5, :cond_2

    .line 794
    :cond_4
    iput-wide p4, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 795
    iput-wide p6, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 796
    const/4 v4, 0x1

    goto :goto_1

    .line 784
    .end local v2    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v3    # "authorityInfo$iterator":Ljava/util/Iterator;
    :cond_5
    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v5, v5, Landroid/accounts/AccountAndUser;->userId:I

    if-eq p2, v5, :cond_1

    goto :goto_0

    .line 800
    .end local v0    # "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    :cond_6
    return v4
.end method

.method private setSyncableStateForEndPoint(Lcom/android/server/content/SyncStorageEngine$EndPoint;I)V
    .locals 6
    .param p1, "target"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "syncable"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 700
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 701
    const/4 v1, -0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 702
    .local v0, "aInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-ge p2, v4, :cond_0

    .line 703
    const/4 p2, -0x1

    .line 705
    :cond_0
    const-string/jumbo v1, "SyncManager"

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 706
    const-string/jumbo v1, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setIsSyncable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_1
    iget v1, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    if-ne v1, p2, :cond_3

    .line 709
    const-string/jumbo v1, "SyncManager"

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 710
    const-string/jumbo v1, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setIsSyncable: already set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", doing nothing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v2

    .line 712
    return-void

    .line 714
    :cond_3
    :try_start_1
    iput p2, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 715
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 717
    if-ne p2, v5, :cond_4

    .line 718
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, -0x5

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/content/SyncStorageEngine;->requestSync(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;ILandroid/os/Bundle;)V

    .line 720
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    .line 698
    return-void

    .line 700
    .end local v0    # "aInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private writeAccountInfoLocked()V
    .locals 14

    .prologue
    const/4 v12, 0x2

    .line 1841
    const-string/jumbo v11, "SyncManagerFile"

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1842
    const-string/jumbo v11, "SyncManagerFile"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Writing new "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v13}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    :cond_0
    const/4 v4, 0x0

    .line 1847
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v11, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v11}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    .line 1848
    .local v4, "fos":Ljava/io/FileOutputStream;
    new-instance v9, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v9}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 1849
    .local v9, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v4, v11}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1850
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v9, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1851
    const-string/jumbo v11, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v12, 0x1

    invoke-interface {v9, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1853
    const-string/jumbo v11, "accounts"

    const/4 v12, 0x0

    invoke-interface {v9, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1854
    const-string/jumbo v11, "version"

    const/4 v12, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v9, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1855
    const-string/jumbo v11, "nextAuthorityId"

    iget v12, p0, Lcom/android/server/content/SyncStorageEngine;->mNextAuthorityId:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v9, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1856
    const-string/jumbo v11, "offsetInSeconds"

    iget v12, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v9, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1859
    iget-object v11, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1860
    .local v0, "M":I
    const/4 v8, 0x0

    .local v8, "m":I
    :goto_0
    if-ge v8, v0, :cond_1

    .line 1861
    iget-object v11, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 1862
    .local v10, "userId":I
    iget-object v11, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v11, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    .line 1863
    .local v7, "listen":Ljava/lang/Boolean;
    const-string/jumbo v11, "listenForTickles"

    const/4 v12, 0x0

    invoke-interface {v9, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1864
    const-string/jumbo v11, "user"

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v9, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1865
    const-string/jumbo v11, "enabled"

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v9, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1866
    const-string/jumbo v11, "listenForTickles"

    const/4 v12, 0x0

    invoke-interface {v9, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1860
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1869
    .end local v7    # "listen":Ljava/lang/Boolean;
    .end local v10    # "userId":I
    :cond_1
    iget-object v11, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1870
    .local v1, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v1, :cond_2

    .line 1871
    iget-object v11, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v11, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1872
    .local v2, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v6, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1873
    .local v6, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    const-string/jumbo v11, "authority"

    const/4 v12, 0x0

    invoke-interface {v9, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1874
    const-string/jumbo v11, "id"

    iget v12, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v9, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1875
    const-string/jumbo v11, "user"

    iget v12, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v9, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1876
    const-string/jumbo v11, "enabled"

    iget-boolean v12, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    invoke-static {v12}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v9, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1877
    const-string/jumbo v11, "account"

    iget-object v12, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v12, v12, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-interface {v9, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1878
    const-string/jumbo v11, "type"

    iget-object v12, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v12, v12, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-interface {v9, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1879
    const-string/jumbo v11, "authority"

    iget-object v12, v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-interface {v9, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1880
    const-string/jumbo v11, "syncable"

    iget v12, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v9, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1881
    const-string/jumbo v11, "authority"

    const/4 v12, 0x0

    invoke-interface {v9, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1870
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1883
    .end local v2    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v6    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :cond_2
    const-string/jumbo v11, "accounts"

    const/4 v12, 0x0

    invoke-interface {v9, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1884
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1885
    iget-object v11, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v11, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1840
    .end local v0    # "M":I
    .end local v1    # "N":I
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "i":I
    .end local v8    # "m":I
    .end local v9    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_3
    :goto_2
    return-void

    .line 1886
    :catch_0
    move-exception v3

    .line 1887
    .local v3, "e1":Ljava/io/IOException;
    const-string/jumbo v11, "SyncManager"

    const-string/jumbo v12, "Error writing accounts"

    invoke-static {v11, v12, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1888
    if-eqz v4, :cond_3

    .line 1889
    iget-object v11, p0, Lcom/android/server/content/SyncStorageEngine;->mAccountInfoFile:Landroid/util/AtomicFile;

    invoke-virtual {v11, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_2
.end method

.method private writeStatisticsLocked()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    .line 2183
    const-string/jumbo v6, "SyncManagerFile"

    invoke-static {v6, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2184
    const-string/jumbo v6, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Writing new "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    :cond_0
    invoke-virtual {p0, v9}, Lcom/android/server/content/SyncStorageEngine;->removeMessages(I)V

    .line 2191
    const/4 v3, 0x0

    .line 2193
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 2194
    .local v3, "fos":Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 2195
    .local v5, "out":Landroid/os/Parcel;
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v0, v6

    .line 2196
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 2197
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    aget-object v1, v6, v4

    .line 2198
    .local v1, "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    if-nez v1, :cond_3

    .line 2208
    .end local v1    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2209
    invoke-virtual {v5}, Landroid/os/Parcel;->marshall()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 2210
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 2212
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 2182
    .end local v0    # "N":I
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "i":I
    .end local v5    # "out":Landroid/os/Parcel;
    :cond_2
    :goto_1
    return-void

    .line 2201
    .restart local v0    # "N":I
    .restart local v1    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "i":I
    .restart local v5    # "out":Landroid/os/Parcel;
    :cond_3
    const/16 v6, 0x65

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2202
    iget v6, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2203
    iget v6, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2204
    iget-wide v6, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    invoke-virtual {v5, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 2205
    iget v6, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2206
    iget-wide v6, v1, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    invoke-virtual {v5, v6, v7}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2196
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2213
    .end local v0    # "N":I
    .end local v1    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "i":I
    .end local v5    # "out":Landroid/os/Parcel;
    :catch_0
    move-exception v2

    .line 2214
    .local v2, "e1":Ljava/io/IOException;
    const-string/jumbo v6, "SyncManager"

    const-string/jumbo v7, "Error writing stats"

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2215
    if-eqz v3, :cond_2

    .line 2216
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mStatisticsFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_1
.end method

.method private writeStatusLocked()V
    .locals 9

    .prologue
    .line 2075
    const-string/jumbo v6, "SyncManagerFile"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2076
    const-string/jumbo v6, "SyncManagerFile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Writing new "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    :cond_0
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/android/server/content/SyncStorageEngine;->removeMessages(I)V

    .line 2083
    const/4 v2, 0x0

    .line 2085
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 2086
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 2087
    .local v4, "out":Landroid/os/Parcel;
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2088
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 2089
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/SyncStatusInfo;

    .line 2090
    .local v5, "status":Landroid/content/SyncStatusInfo;
    const/16 v6, 0x64

    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2091
    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/SyncStatusInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2088
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2093
    .end local v5    # "status":Landroid/content/SyncStatusInfo;
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2094
    invoke-virtual {v4}, Landroid/os/Parcel;->marshall()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/FileOutputStream;->write([B)V

    .line 2095
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 2097
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2074
    .end local v0    # "N":I
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "i":I
    .end local v4    # "out":Landroid/os/Parcel;
    :cond_2
    :goto_1
    return-void

    .line 2098
    :catch_0
    move-exception v1

    .line 2099
    .local v1, "e1":Ljava/io/IOException;
    const-string/jumbo v6, "SyncManager"

    const-string/jumbo v7, "Error writing status"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2100
    if-eqz v2, :cond_2

    .line 2101
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mStatusFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_1
.end method


# virtual methods
.method public addActiveSync(Lcom/android/server/content/SyncManager$ActiveSyncContext;)Landroid/content/SyncInfo;
    .locals 9
    .param p1, "activeSyncContext"    # Lcom/android/server/content/SyncManager$ActiveSyncContext;

    .prologue
    .line 1016
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v8

    .line 1017
    :try_start_0
    const-string/jumbo v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1018
    const-string/jumbo v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setActiveSync: account= auth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1019
    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v3, v3, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1018
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1020
    const-string/jumbo v3, " src="

    .line 1018
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1020
    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget v3, v3, Lcom/android/server/content/SyncOperation;->syncSource:I

    .line 1018
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1021
    const-string/jumbo v3, " extras="

    .line 1018
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1021
    iget-object v3, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v3, v3, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    .line 1018
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    :cond_0
    iget-object v1, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mSyncOperation:Lcom/android/server/content/SyncOperation;

    iget-object v7, v1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 1026
    .local v7, "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    const/4 v1, -0x1

    .line 1027
    const/4 v2, 0x1

    .line 1024
    invoke-direct {p0, v7, v1, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v6

    .line 1028
    .local v6, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    new-instance v0, Landroid/content/SyncInfo;

    .line 1029
    iget v1, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    .line 1030
    iget-object v2, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 1031
    iget-object v3, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 1032
    iget-wide v4, p1, Lcom/android/server/content/SyncManager$ActiveSyncContext;->mStartTime:J

    .line 1028
    invoke-direct/range {v0 .. v5}, Landroid/content/SyncInfo;-><init>(ILandroid/accounts/Account;Ljava/lang/String;J)V

    .line 1033
    .local v0, "syncInfo":Landroid/content/SyncInfo;
    iget-object v1, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {p0, v1}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncs(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    .line 1035
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->reportActiveChange()V

    .line 1036
    return-object v0

    .line 1016
    .end local v0    # "syncInfo":Landroid/content/SyncInfo;
    .end local v6    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v7    # "info":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    :catchall_0
    move-exception v1

    monitor-exit v8

    throw v1
.end method

.method public addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    .locals 3
    .param p1, "mask"    # I
    .param p2, "callback"    # Landroid/content/ISyncStatusObserver;

    .prologue
    .line 537
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 538
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 536
    return-void

    .line 537
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public clearAllBackoffsLocked()V
    .locals 12

    .prologue
    const-wide/16 v10, -0x1

    .line 804
    const/4 v4, 0x0

    .line 805
    .local v4, "changed":Z
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v6

    .line 807
    :try_start_0
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "accountInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 808
    .local v0, "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    iget-object v5, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "authorityInfo$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 809
    .local v2, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-wide v8, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v5, v8, v10

    if-nez v5, :cond_2

    .line 810
    iget-wide v8, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v5, v8, v10

    if-eqz v5, :cond_1

    .line 811
    :cond_2
    const-string/jumbo v5, "SyncManager"

    const/4 v7, 0x2

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 812
    const-string/jumbo v5, "SyncManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "clearAllBackoffsLocked: authority:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 813
    iget-object v8, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 812
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 814
    const-string/jumbo v8, " account:"

    .line 812
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 814
    iget-object v8, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget-object v8, v8, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    iget-object v8, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 812
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 815
    const-string/jumbo v8, " user:"

    .line 812
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 815
    iget-object v8, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v8, v8, Landroid/accounts/AccountAndUser;->userId:I

    .line 812
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 816
    const-string/jumbo v8, " backoffTime was: "

    .line 812
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 816
    iget-wide v8, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 812
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 817
    const-string/jumbo v8, " backoffDelay was: "

    .line 812
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 817
    iget-wide v8, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 812
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :cond_3
    const-wide/16 v8, -0x1

    iput-wide v8, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 820
    const-wide/16 v8, -0x1

    iput-wide v8, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 821
    const/4 v4, 0x1

    goto/16 :goto_0

    .end local v0    # "accountInfo":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    .end local v2    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v3    # "authorityInfo$iterator":Ljava/util/Iterator;
    :cond_4
    monitor-exit v6

    .line 827
    if-eqz v4, :cond_5

    .line 828
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    .line 803
    :cond_5
    return-void

    .line 805
    .end local v1    # "accountInfo$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public clearAndReadState()V
    .locals 2

    .prologue
    .line 1472
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1473
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1474
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1475
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1476
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1477
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1479
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readAccountInfoLocked()V

    .line 1480
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatusLocked()V

    .line 1481
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readStatisticsLocked()V

    .line 1482
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->readAndDeleteLegacyAccountInfoLocked()V

    .line 1483
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1484
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 1485
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1471
    return-void

    .line 1472
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public doDatabaseCleanup([Landroid/accounts/Account;I)V
    .locals 12
    .param p1, "accounts"    # [Landroid/accounts/Account;
    .param p2, "userId"    # I

    .prologue
    const/4 v9, 0x0

    .line 953
    const-string/jumbo v8, "ro.alarm_boot"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 954
    return-void

    .line 956
    :cond_0
    iget-object v9, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v9

    .line 957
    :try_start_0
    const-string/jumbo v8, "SyncManager"

    const/4 v10, 0x2

    invoke-static {v8, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 958
    const-string/jumbo v8, "SyncManager"

    const-string/jumbo v10, "Updating for new accounts..."

    invoke-static {v8, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    :cond_1
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 961
    .local v7, "removing":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mAccounts:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 962
    .local v1, "accIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/content/SyncStorageEngine$AccountInfo;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 963
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;

    .line 964
    .local v0, "acc":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    iget-object v8, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget-object v8, v8, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-static {p1, v8}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 965
    iget-object v8, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    iget v8, v8, Landroid/accounts/AccountAndUser;->userId:I

    if-ne v8, p2, :cond_2

    .line 967
    const-string/jumbo v8, "SyncManager"

    const/4 v10, 0x2

    invoke-static {v8, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 968
    const-string/jumbo v8, "SyncManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Account removed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->accountAndUser:Landroid/accounts/AccountAndUser;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :cond_3
    iget-object v8, v0, Lcom/android/server/content/SyncStorageEngine$AccountInfo;->authorities:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "auth$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 971
    .local v2, "auth":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget v8, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-virtual {v7, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 956
    .end local v0    # "acc":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    .end local v1    # "accIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/content/SyncStorageEngine$AccountInfo;>;"
    .end local v2    # "auth":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v3    # "auth$iterator":Ljava/util/Iterator;
    .end local v7    # "removing":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 973
    .restart local v0    # "acc":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    .restart local v1    # "accIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/content/SyncStorageEngine$AccountInfo;>;"
    .restart local v3    # "auth$iterator":Ljava/util/Iterator;
    .restart local v7    # "removing":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;>;"
    :cond_4
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 978
    .end local v0    # "acc":Lcom/android/server/content/SyncStorageEngine$AccountInfo;
    .end local v3    # "auth$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 979
    .local v4, "i":I
    if-lez v4, :cond_c

    .line 980
    :cond_6
    if-lez v4, :cond_b

    .line 981
    add-int/lit8 v4, v4, -0x1

    .line 982
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 983
    .local v5, "ident":I
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 984
    .restart local v2    # "auth":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    if-eqz v8, :cond_7

    .line 985
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    iget-object v10, v2, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-interface {v8, v10}, Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;->onAuthorityRemoved(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V

    .line 987
    :cond_7
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 988
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 989
    .local v6, "j":I
    :cond_8
    :goto_2
    if-lez v6, :cond_9

    .line 990
    add-int/lit8 v6, v6, -0x1

    .line 991
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    if-ne v8, v5, :cond_8

    .line 992
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    iget-object v10, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2

    .line 995
    :cond_9
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 996
    :cond_a
    :goto_3
    if-lez v6, :cond_6

    .line 997
    add-int/lit8 v6, v6, -0x1

    .line 998
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    iget v8, v8, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    if-ne v8, v5, :cond_a

    .line 999
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 1003
    .end local v2    # "auth":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v5    # "ident":I
    .end local v6    # "j":I
    :cond_b
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V

    .line 1004
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 1005
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_c
    monitor-exit v9

    .line 949
    return-void
.end method

.method public getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .locals 2
    .param p1, "authorityId"    # I

    .prologue
    .line 910
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 911
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 910
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;
    .locals 6
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$EndPoint;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 724
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 725
    :try_start_0
    const-string/jumbo v1, "getBackoff"

    invoke-direct {p0, p1, v1}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 726
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v0, :cond_0

    .line 727
    iget-wide v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    :cond_0
    monitor-exit v2

    .line 729
    return-object v3

    .line 724
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getCopyOfAuthorityWithSyncStatus(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/util/Pair;
    .locals 4
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/content/SyncStorageEngine$EndPoint;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;",
            "Landroid/content/SyncStatusInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1252
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1254
    const/4 v1, -0x1

    .line 1255
    const/4 v3, 0x1

    .line 1253
    :try_start_0
    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 1256
    .local v0, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->createCopyPairOfAuthorityWithSyncStatusLocked(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)Landroid/util/Pair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 1252
    .end local v0    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getCurrentSyncsCopy(IZ)Ljava/util/List;
    .locals 10
    .param p1, "userId"    # I
    .param p2, "canAccessAccounts"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1222
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v6

    .line 1223
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncsLocked(I)Ljava/util/List;

    move-result-object v3

    .line 1224
    .local v3, "syncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1225
    .local v4, "syncsCopy":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "sync$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncInfo;

    .line 1227
    .local v1, "sync":Landroid/content/SyncInfo;
    if-nez p2, :cond_0

    .line 1229
    iget v5, v1, Landroid/content/SyncInfo;->authorityId:I

    iget-object v7, v1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    iget-wide v8, v1, Landroid/content/SyncInfo;->startTime:J

    .line 1228
    invoke-static {v5, v7, v8, v9}, Landroid/content/SyncInfo;->createAccountRedacted(ILjava/lang/String;J)Landroid/content/SyncInfo;

    move-result-object v0

    .line 1233
    .local v0, "copy":Landroid/content/SyncInfo;
    :goto_1
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1222
    .end local v0    # "copy":Landroid/content/SyncInfo;
    .end local v1    # "sync":Landroid/content/SyncInfo;
    .end local v2    # "sync$iterator":Ljava/util/Iterator;
    .end local v3    # "syncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    .end local v4    # "syncsCopy":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 1231
    .restart local v1    # "sync":Landroid/content/SyncInfo;
    .restart local v2    # "sync$iterator":Ljava/util/Iterator;
    .restart local v3    # "syncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    .restart local v4    # "syncsCopy":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/SyncInfo;

    invoke-direct {v0, v1}, Landroid/content/SyncInfo;-><init>(Landroid/content/SyncInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v0    # "copy":Landroid/content/SyncInfo;
    goto :goto_1

    .end local v0    # "copy":Landroid/content/SyncInfo;
    .end local v1    # "sync":Landroid/content/SyncInfo;
    :cond_1
    monitor-exit v6

    .line 1235
    return-object v4
.end method

.method public getDayStatistics()[Lcom/android/server/content/SyncStorageEngine$DayStats;
    .locals 6

    .prologue
    .line 1327
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1328
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v1, v1

    new-array v0, v1, [Lcom/android/server/content/SyncStorageEngine$DayStats;

    .line 1329
    .local v0, "ds":[Lcom/android/server/content/SyncStorageEngine$DayStats;
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 1330
    return-object v0

    .line 1327
    .end local v0    # "ds":[Lcom/android/server/content/SyncStorageEngine$DayStats;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;)J
    .locals 6
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .prologue
    .line 833
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 834
    :try_start_0
    const-string/jumbo v1, "getDelayUntil"

    invoke-direct {p0, p1, v1}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 835
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v0, :cond_0

    .line 836
    const-wide/16 v4, 0x0

    monitor-exit v2

    return-wide v4

    .line 838
    :cond_0
    :try_start_1
    iget-wide v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-wide v4

    .line 833
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    .line 664
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v4

    .line 665
    if-eqz p1, :cond_1

    .line 667
    :try_start_0
    new-instance v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v3, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 668
    const-string/jumbo v5, "get authority syncable"

    .line 666
    invoke-direct {p0, v3, v5}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 669
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v0, :cond_0

    monitor-exit v4

    .line 670
    return v6

    .line 672
    :cond_0
    :try_start_1
    iget v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return v3

    .line 675
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 676
    .local v2, "i":I
    :cond_2
    if-lez v2, :cond_3

    .line 677
    add-int/lit8 v2, v2, -0x1

    .line 678
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 679
    .local v1, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    if-eqz v3, :cond_2

    .line 680
    iget-object v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 679
    if-eqz v3, :cond_2

    .line 681
    iget v3, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return v3

    .end local v1    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_3
    monitor-exit v4

    .line 684
    return v6

    .line 664
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getMasterSyncAutomatically(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 898
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 899
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 902
    .local v0, "auto":Ljava/lang/Boolean;
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 903
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .line 905
    :cond_1
    if-nez v0, :cond_2

    iget-boolean v1, p0, Lcom/android/server/content/SyncStorageEngine;->mDefaultMasterSyncAutomatically:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v2

    return v1

    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    goto :goto_1

    .line 898
    .end local v0    # "auto":Ljava/lang/Boolean;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getStatusByAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Landroid/content/SyncStatusInfo;
    .locals 8
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .prologue
    const/4 v7, 0x0

    .line 1267
    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 1268
    :cond_0
    return-object v7

    .line 1270
    :cond_1
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v5

    .line 1271
    :try_start_0
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1272
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 1273
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncStatusInfo;

    .line 1274
    .local v2, "cur":Landroid/content/SyncStatusInfo;
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v6, v2, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1275
    .local v1, "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v1, :cond_2

    .line 1276
    iget-object v4, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v4, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 1275
    if-eqz v4, :cond_2

    monitor-exit v5

    .line 1277
    return-object v2

    .line 1272
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1    # "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v2    # "cur":Landroid/content/SyncStatusInfo;
    :cond_3
    monitor-exit v5

    .line 1280
    return-object v7

    .line 1270
    .end local v0    # "N":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 606
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v4

    .line 607
    if-eqz p1, :cond_1

    .line 609
    :try_start_0
    new-instance v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v5, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 610
    const-string/jumbo v6, "getSyncAutomatically"

    .line 608
    invoke-direct {p0, v5, v6}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 611
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v0, :cond_0

    iget-boolean v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v4

    return v3

    .line 614
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 615
    .local v2, "i":I
    :cond_2
    if-lez v2, :cond_3

    .line 616
    add-int/lit8 v2, v2, -0x1

    .line 617
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 618
    .local v1, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v5, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    new-instance v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v6, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-virtual {v5, v6}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 619
    iget-boolean v5, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 618
    if-eqz v5, :cond_2

    .line 620
    const/4 v3, 0x1

    monitor-exit v4

    return v3

    .end local v1    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :cond_3
    monitor-exit v4

    .line 623
    return v3

    .line 606
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getSyncHistory()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1311
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v4

    .line 1312
    :try_start_0
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1313
    .local v0, "N":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1314
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1315
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1314
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v4

    .line 1317
    return-object v2

    .line 1311
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getSyncRandomOffset()I
    .locals 1

    .prologue
    .line 533
    iget v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRandomOffset:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 521
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 522
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 523
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    .line 520
    :cond_0
    return-void

    .line 522
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 525
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 526
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v0

    .line 527
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 526
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public insertStartSyncEvent(Lcom/android/server/content/SyncOperation;J)J
    .locals 8
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;
    .param p2, "now"    # J

    .prologue
    .line 1067
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v5

    .line 1068
    :try_start_0
    const-string/jumbo v4, "SyncManager"

    const/4 v6, 0x2

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1069
    const-string/jumbo v4, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "insertStartSyncEvent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :cond_0
    iget-object v4, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const-string/jumbo v6, "insertStartSyncEvent"

    invoke-direct {p0, v4, v6}, Lcom/android/server/content/SyncStorageEngine;->getAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1072
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v0, :cond_1

    .line 1073
    const-wide/16 v6, -0x1

    monitor-exit v5

    return-wide v6

    .line 1075
    :cond_1
    :try_start_1
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    invoke-direct {v1}, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;-><init>()V

    .line 1076
    .local v1, "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    move-result v4

    iput-boolean v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->initialization:Z

    .line 1077
    iget v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    iput v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    .line 1078
    iget v4, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    iput v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    .line 1079
    iget v4, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    if-gez v4, :cond_2

    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/content/SyncStorageEngine;->mNextHistoryId:I

    .line 1080
    :cond_2
    iput-wide p2, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    .line 1081
    iget v4, p1, Lcom/android/server/content/SyncOperation;->syncSource:I

    iput v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    .line 1082
    iget v4, p1, Lcom/android/server/content/SyncOperation;->reason:I

    iput v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->reason:I

    .line 1083
    iget-object v4, p1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    iput-object v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->extras:Landroid/os/Bundle;

    .line 1084
    const/4 v4, 0x0

    iput v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    .line 1085
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1086
    :goto_0
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v6, 0x64

    if-le v4, v6, :cond_3

    .line 1087
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1067
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v1    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1089
    .restart local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v1    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    :cond_3
    :try_start_2
    iget v4, v1, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    int-to-long v2, v4

    .line 1090
    .local v2, "id":J
    const-string/jumbo v4, "SyncManager"

    const/4 v6, 0x2

    invoke-static {v4, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "returning historyId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    monitor-exit v5

    .line 1093
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    .line 1094
    return-wide v2
.end method

.method public isSyncActive(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .locals 5
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .prologue
    .line 920
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v4

    .line 921
    :try_start_0
    iget v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-direct {p0, v3}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncs(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "syncInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncInfo;

    .line 922
    .local v1, "syncInfo":Landroid/content/SyncInfo;
    iget v3, v1, Landroid/content/SyncInfo;->authorityId:I

    invoke-virtual {p0, v3}, Lcom/android/server/content/SyncStorageEngine;->getAuthority(I)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 923
    .local v0, "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v3, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 924
    const/4 v3, 0x1

    monitor-exit v4

    return v3

    .end local v0    # "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v1    # "syncInfo":Landroid/content/SyncInfo;
    :cond_1
    monitor-exit v4

    .line 928
    const/4 v3, 0x0

    return v3

    .line 920
    .end local v2    # "syncInfo$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public isSyncPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z
    .locals 7
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .prologue
    .line 1286
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v5

    .line 1287
    :try_start_0
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1288
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 1289
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncStatus:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncStatusInfo;

    .line 1290
    .local v2, "cur":Landroid/content/SyncStatusInfo;
    iget-object v4, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    iget v6, v2, Landroid/content/SyncStatusInfo;->authorityId:I

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 1291
    .local v1, "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v1, :cond_1

    .line 1288
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1294
    :cond_1
    iget-object v4, v1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v4, p1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1297
    iget-boolean v4, v2, Landroid/content/SyncStatusInfo;->pending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 1298
    const/4 v4, 0x1

    monitor-exit v5

    return v4

    .line 1301
    .end local v1    # "ainfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v2    # "cur":Landroid/content/SyncStatusInfo;
    :cond_2
    const/4 v4, 0x0

    monitor-exit v5

    return v4

    .line 1286
    .end local v0    # "N":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public markPending(Lcom/android/server/content/SyncStorageEngine$EndPoint;Z)V
    .locals 5
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "pendingValue"    # Z

    .prologue
    .line 932
    iget-object v3, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v3

    .line 934
    const/4 v2, -0x1

    .line 935
    const/4 v4, 0x1

    .line 933
    :try_start_0
    invoke-direct {p0, p1, v2, v4}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 936
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    if-nez v0, :cond_0

    monitor-exit v3

    .line 937
    return-void

    .line 939
    :cond_0
    :try_start_1
    iget v2, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    invoke-direct {p0, v2}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v1

    .line 940
    .local v1, "status":Landroid/content/SyncStatusInfo;
    iput-boolean p2, v1, Landroid/content/SyncStatusInfo;->pending:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 942
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    .line 931
    return-void

    .line 932
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v1    # "status":Landroid/content/SyncStatusInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public queueBackup()V
    .locals 1

    .prologue
    .line 2226
    const-string/jumbo v0, "android"

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 2225
    return-void
.end method

.method public removeActiveSync(Landroid/content/SyncInfo;I)V
    .locals 4
    .param p1, "syncInfo"    # Landroid/content/SyncInfo;
    .param p2, "userId"    # I

    .prologue
    .line 1043
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1044
    :try_start_0
    const-string/jumbo v0, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1045
    const-string/jumbo v0, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeActiveSync: account="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1046
    const-string/jumbo v3, " user="

    .line 1045
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1047
    const-string/jumbo v3, " auth="

    .line 1045
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1047
    iget-object v3, p1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    .line 1045
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/content/SyncStorageEngine;->getCurrentSyncs(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1052
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->reportActiveChange()V

    .line 1042
    return-void

    .line 1043
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeAuthority(Lcom/android/server/content/SyncStorageEngine$EndPoint;)V
    .locals 5
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .prologue
    .line 1424
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1425
    :try_start_0
    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/server/content/SyncStorageEngine;->removeAuthorityLocked(Landroid/accounts/Account;ILjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1423
    return-void

    .line 1424
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    .locals 2
    .param p1, "callback"    # Landroid/content/ISyncStatusObserver;

    .prologue
    .line 543
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 544
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 542
    return-void

    .line 543
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public reportActiveChange()V
    .locals 1

    .prologue
    .line 1059
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    .line 1058
    return-void
.end method

.method reportChange(I)V
    .locals 8
    .param p1, "which"    # I

    .prologue
    .line 571
    const/4 v3, 0x0

    .line 572
    .local v3, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    iget-object v6, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v6

    .line 573
    :try_start_0
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .local v1, "i":I
    move-object v4, v3

    .line 574
    .end local v3    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .local v4, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    :cond_0
    :goto_0
    if-lez v1, :cond_1

    .line 575
    add-int/lit8 v1, v1, -0x1

    .line 576
    :try_start_1
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 577
    .local v2, "mask":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    and-int/2addr v5, p1

    if-eqz v5, :cond_0

    .line 580
    if-nez v4, :cond_4

    .line 581
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 583
    .end local v4    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .local v3, "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    :goto_1
    :try_start_2
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/content/ISyncStatusObserver;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v3

    .end local v3    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v4    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    goto :goto_0

    .line 585
    .end local v2    # "mask":Ljava/lang/Integer;
    :cond_1
    :try_start_3
    iget-object v5, p0, Lcom/android/server/content/SyncStorageEngine;->mChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v6

    .line 588
    const-string/jumbo v5, "SyncManager"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 589
    const-string/jumbo v5, "SyncManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "reportChange "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " to: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_2
    if-eqz v4, :cond_3

    .line 593
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 594
    :goto_2
    if-lez v1, :cond_3

    .line 595
    add-int/lit8 v1, v1, -0x1

    .line 597
    :try_start_4
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ISyncStatusObserver;

    invoke-interface {v5, p1}, Landroid/content/ISyncStatusObserver;->onStatusChanged(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 598
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_2

    .line 572
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v4    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    :catchall_0
    move-exception v5

    :goto_3
    monitor-exit v6

    throw v5

    .line 570
    .restart local v1    # "i":I
    .restart local v4    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    :cond_3
    return-void

    .line 572
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v3    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    goto :goto_3

    .end local v3    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v2    # "mask":Ljava/lang/Integer;
    .restart local v4    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    :cond_4
    move-object v3, v4

    .end local v4    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    .restart local v3    # "reports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ISyncStatusObserver;>;"
    goto :goto_1
.end method

.method restoreAllPeriodicSyncs()Z
    .locals 12

    .prologue
    .line 862
    sget-object v1, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    if-nez v1, :cond_0

    .line 863
    const/4 v1, 0x0

    return v1

    .line 865
    :cond_0
    iget-object v11, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v11

    .line 866
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v8, v1, :cond_2

    .line 867
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .line 868
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-object v1, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "periodicSync$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/PeriodicSync;

    .line 869
    .local v9, "periodicSync":Landroid/content/PeriodicSync;
    sget-object v1, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 870
    iget-object v3, v9, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    iget-wide v4, v9, Landroid/content/PeriodicSync;->period:J

    iget-wide v6, v9, Landroid/content/PeriodicSync;->flexTime:J

    .line 869
    invoke-interface/range {v1 .. v7}, Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;->onPeriodicSyncAdded(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 865
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v9    # "periodicSync":Landroid/content/PeriodicSync;
    .end local v10    # "periodicSync$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v11

    throw v1

    .line 872
    .restart local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .restart local v10    # "periodicSync$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v1, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 866
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 874
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v10    # "periodicSync$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v11

    .line 876
    const/4 v1, 0x1

    return v1
.end method

.method public setBackoff(Lcom/android/server/content/SyncStorageEngine$EndPoint;JJ)V
    .locals 14
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "nextSyncTime"    # J
    .param p4, "nextDelay"    # J

    .prologue
    .line 738
    const-string/jumbo v2, "SyncManager"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 739
    const-string/jumbo v2, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBackoff: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 740
    const-string/jumbo v4, " -> nextSyncTime "

    .line 739
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 740
    const-string/jumbo v4, ", nextDelay "

    .line 739
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :cond_0
    iget-object v12, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v12

    .line 744
    :try_start_0
    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 748
    :cond_1
    iget-object v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 749
    iget v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 750
    iget-object v5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    move-object v2, p0

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    .line 747
    invoke-direct/range {v2 .. v9}, Lcom/android/server/content/SyncStorageEngine;->setBackoffLocked(Landroid/accounts/Account;ILjava/lang/String;JJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    :goto_0
    monitor-exit v12

    .line 765
    if-eqz v11, :cond_2

    .line 766
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    .line 737
    :cond_2
    return-void

    .line 754
    :cond_3
    const/4 v2, -0x1

    const/4 v3, 0x1

    :try_start_1
    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v10

    .line 755
    .local v10, "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-wide v2, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_4

    .line 756
    iget-wide v2, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    cmp-long v2, v2, p4

    if-nez v2, :cond_4

    .line 757
    const/4 v11, 0x0

    .line 756
    .local v11, "changed":Z
    goto :goto_0

    .line 759
    .end local v11    # "changed":Z
    :cond_4
    move-wide/from16 v0, p2

    iput-wide v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 760
    move-wide/from16 v0, p4

    iput-wide v0, v10, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 761
    const/4 v11, 0x1

    .restart local v11    # "changed":Z
    goto :goto_0

    .line 743
    .end local v10    # "authorityInfo":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .end local v11    # "changed":Z
    :catchall_0
    move-exception v2

    monitor-exit v12

    throw v2
.end method

.method public setDelayUntilTime(Lcom/android/server/content/SyncStorageEngine$EndPoint;J)V
    .locals 8
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "delayUntil"    # J

    .prologue
    const/4 v6, 0x1

    .line 843
    const-string/jumbo v1, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 844
    const-string/jumbo v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDelayUntil: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 845
    const-string/jumbo v3, " -> delayUntil "

    .line 844
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_0
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 848
    const/4 v1, -0x1

    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v0

    .line 849
    .local v0, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-wide v4, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v1, v4, p2

    if-nez v1, :cond_1

    monitor-exit v2

    .line 850
    return-void

    .line 852
    :cond_1
    :try_start_1
    iput-wide p2, v0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 854
    invoke-virtual {p0, v6}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    .line 842
    return-void

    .line 847
    .end local v0    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;I)V
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;
    .param p4, "syncable"    # I

    .prologue
    .line 689
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    invoke-direct {p0, v0, p4}, Lcom/android/server/content/SyncStorageEngine;->setSyncableStateForEndPoint(Lcom/android/server/content/SyncStorageEngine$EndPoint;I)V

    .line 688
    return-void
.end method

.method public setMasterSyncAutomatically(ZI)V
    .locals 7
    .param p1, "flag"    # Z
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 880
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v2

    .line 881
    :try_start_0
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    .line 882
    .local v6, "auto":Ljava/lang/Boolean;
    if-eqz v6, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v2

    .line 883
    return-void

    .line 885
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mMasterSyncAutomatically:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 886
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 888
    if-eqz p1, :cond_1

    .line 890
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 889
    const/4 v3, -0x7

    move-object v0, p0

    move v2, p2

    move-object v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/content/SyncStorageEngine;->requestSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;)V

    .line 892
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    .line 893
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/content/ContentResolver;->ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 894
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->queueBackup()V

    .line 879
    return-void

    .line 880
    .end local v6    # "auto":Ljava/lang/Boolean;
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method protected setOnAuthorityRemovedListener(Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    if-nez v0, :cond_0

    .line 510
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorityRemovedListener:Lcom/android/server/content/SyncStorageEngine$OnAuthorityRemovedListener;

    .line 508
    :cond_0
    return-void
.end method

.method protected setOnSyncRequestListener(Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    if-nez v0, :cond_0

    .line 504
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine;->mSyncRequestListener:Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;

    .line 502
    :cond_0
    return-void
.end method

.method protected setPeriodicSyncAddedListener(Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    .prologue
    .line 515
    sget-object v0, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    if-nez v0, :cond_0

    .line 516
    sput-object p1, Lcom/android/server/content/SyncStorageEngine;->mPeriodicSyncAddedListener:Lcom/android/server/content/SyncStorageEngine$PeriodicSyncAddedListener;

    .line 514
    :cond_0
    return-void
.end method

.method public setSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;Z)V
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "providerName"    # Ljava/lang/String;
    .param p4, "sync"    # Z

    .prologue
    const/4 v4, 0x2

    .line 629
    const-string/jumbo v0, "SyncManager"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    const-string/jumbo v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSyncAutomatically:  provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 631
    const-string/jumbo v2, ", user "

    .line 630
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 631
    const-string/jumbo v2, " -> "

    .line 630
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 636
    :try_start_0
    new-instance v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 637
    const/4 v2, -0x1

    .line 638
    const/4 v3, 0x0

    .line 635
    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateAuthorityLocked(Lcom/android/server/content/SyncStorageEngine$EndPoint;IZ)Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    move-result-object v6

    .line 639
    .local v6, "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    iget-boolean v0, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    if-ne v0, p4, :cond_2

    .line 640
    const-string/jumbo v0, "SyncManager"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 641
    const-string/jumbo v0, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSyncAutomatically: already set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", doing nothing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 643
    return-void

    .line 648
    :cond_2
    if-eqz p4, :cond_3

    :try_start_1
    iget v0, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    if-ne v0, v4, :cond_3

    .line 649
    const/4 v0, -0x1

    iput v0, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 651
    :cond_3
    iput-boolean p4, v6, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 652
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeAccountInfoLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 655
    if-eqz p4, :cond_4

    .line 657
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 656
    const/4 v3, -0x6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/content/SyncStorageEngine;->requestSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;)V

    .line 659
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    .line 660
    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine;->queueBackup()V

    .line 628
    return-void

    .line 633
    .end local v6    # "authority":Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public stopSyncEvent(JJLjava/lang/String;JJ)V
    .locals 19
    .param p1, "historyId"    # J
    .param p3, "elapsedTime"    # J
    .param p5, "resultMessage"    # Ljava/lang/String;
    .param p6, "downstreamActivity"    # J
    .param p8, "upstreamActivity"    # J

    .prologue
    .line 1099
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v12

    .line 1100
    :try_start_0
    const-string/jumbo v11, "SyncManager"

    const/4 v13, 0x2

    invoke-static {v11, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1101
    const-string/jumbo v11, "SyncManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "stopSyncEvent: historyId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p1

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :cond_0
    const/4 v5, 0x0

    .line 1104
    .local v5, "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1105
    .local v4, "i":I
    :goto_0
    if-lez v4, :cond_1

    .line 1106
    add-int/lit8 v4, v4, -0x1

    .line 1107
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine;->mSyncHistory:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    check-cast v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;

    .line 1108
    .local v5, "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    iget v11, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->historyId:I

    int-to-long v14, v11

    cmp-long v11, v14, p1

    if-nez v11, :cond_2

    .line 1114
    .end local v5    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    :cond_1
    if-nez v5, :cond_3

    .line 1115
    const-string/jumbo v11, "SyncManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "stopSyncEvent: no history for id "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p1

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v12

    .line 1116
    return-void

    .line 1111
    .restart local v5    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    :cond_2
    const/4 v5, 0x0

    .local v5, "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    goto :goto_0

    .line 1119
    .end local v5    # "item":Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;
    :cond_3
    :try_start_1
    move-wide/from16 v0, p3

    iput-wide v0, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->elapsedTime:J

    .line 1120
    const/4 v11, 0x1

    iput v11, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->event:I

    .line 1121
    move-object/from16 v0, p5

    iput-object v0, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->mesg:Ljava/lang/String;

    .line 1122
    move-wide/from16 v0, p6

    iput-wide v0, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->downstreamActivity:J

    .line 1123
    move-wide/from16 v0, p8

    iput-wide v0, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->upstreamActivity:J

    .line 1125
    iget v11, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->authorityId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/content/SyncStorageEngine;->getOrCreateSyncStatusLocked(I)Landroid/content/SyncStatusInfo;

    move-result-object v8

    .line 1127
    .local v8, "status":Landroid/content/SyncStatusInfo;
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSyncs:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v8, Landroid/content/SyncStatusInfo;->numSyncs:I

    .line 1128
    iget-wide v14, v8, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    add-long v14, v14, p3

    iput-wide v14, v8, Landroid/content/SyncStatusInfo;->totalElapsedTime:J

    .line 1129
    iget v11, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    packed-switch v11, :pswitch_data_0

    .line 1147
    :goto_1
    const/4 v9, 0x0

    .line 1148
    .local v9, "writeStatisticsNow":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->getCurrentDayLocked()I

    move-result v2

    .line 1149
    .local v2, "day":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v13, 0x0

    aget-object v11, v11, v13

    if-nez v11, :cond_a

    .line 1150
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    new-instance v13, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v13, v2}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    const/4 v14, 0x0

    aput-object v13, v11, v14

    .line 1157
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v13, 0x0

    aget-object v3, v11, v13

    .line 1159
    .local v3, "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    iget-wide v14, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->eventTime:J

    add-long v6, v14, p3

    .line 1160
    .local v6, "lastSyncTime":J
    const/4 v10, 0x0

    .line 1161
    .local v10, "writeStatusNow":Z
    const-string/jumbo v11, "success"

    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 1163
    iget-wide v14, v8, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-eqz v11, :cond_5

    iget-wide v14, v8, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-eqz v11, :cond_6

    .line 1164
    :cond_5
    const/4 v10, 0x1

    .line 1166
    :cond_6
    iput-wide v6, v8, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    .line 1167
    iget v11, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    iput v11, v8, Landroid/content/SyncStatusInfo;->lastSuccessSource:I

    .line 1168
    const-wide/16 v14, 0x0

    iput-wide v14, v8, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    .line 1169
    const/4 v11, -0x1

    iput v11, v8, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    .line 1170
    const/4 v11, 0x0

    iput-object v11, v8, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    .line 1171
    const-wide/16 v14, 0x0

    iput-wide v14, v8, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    .line 1172
    iget v11, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successCount:I

    .line 1173
    iget-wide v14, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    add-long v14, v14, p3

    iput-wide v14, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->successTime:J

    .line 1188
    :cond_7
    :goto_3
    if-eqz v10, :cond_f

    .line 1189
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 1194
    :cond_8
    :goto_4
    if-eqz v9, :cond_10

    .line 1195
    invoke-direct/range {p0 .. p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    :goto_5
    monitor-exit v12

    .line 1202
    const/16 v11, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/content/SyncStorageEngine;->reportChange(I)V

    .line 1098
    return-void

    .line 1131
    .end local v2    # "day":I
    .end local v3    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .end local v6    # "lastSyncTime":J
    .end local v9    # "writeStatisticsNow":Z
    .end local v10    # "writeStatusNow":Z
    :pswitch_0
    :try_start_2
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSourceLocal:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v8, Landroid/content/SyncStatusInfo;->numSourceLocal:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1099
    .end local v4    # "i":I
    .end local v8    # "status":Landroid/content/SyncStatusInfo;
    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11

    .line 1134
    .restart local v4    # "i":I
    .restart local v8    # "status":Landroid/content/SyncStatusInfo;
    :pswitch_1
    :try_start_3
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v8, Landroid/content/SyncStatusInfo;->numSourcePoll:I

    goto/16 :goto_1

    .line 1137
    :pswitch_2
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSourceUser:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v8, Landroid/content/SyncStatusInfo;->numSourceUser:I

    goto/16 :goto_1

    .line 1140
    :pswitch_3
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSourceServer:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v8, Landroid/content/SyncStatusInfo;->numSourceServer:I

    goto/16 :goto_1

    .line 1143
    :pswitch_4
    iget v11, v8, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v8, Landroid/content/SyncStatusInfo;->numSourcePeriodic:I

    goto/16 :goto_1

    .line 1151
    .restart local v2    # "day":I
    .restart local v9    # "writeStatisticsNow":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v13, 0x0

    aget-object v11, v11, v13

    iget v11, v11, Lcom/android/server/content/SyncStorageEngine$DayStats;->day:I

    if-eq v2, v11, :cond_b

    .line 1152
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    array-length v14, v14

    add-int/lit8 v14, v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v11, v15, v13, v0, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1153
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    new-instance v13, Lcom/android/server/content/SyncStorageEngine$DayStats;

    invoke-direct {v13, v2}, Lcom/android/server/content/SyncStorageEngine$DayStats;-><init>(I)V

    const/4 v14, 0x0

    aput-object v13, v11, v14

    .line 1154
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 1155
    :cond_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/content/SyncStorageEngine;->mDayStats:[Lcom/android/server/content/SyncStorageEngine$DayStats;

    const/4 v13, 0x0

    aget-object v11, v11, v13

    if-nez v11, :cond_4

    goto/16 :goto_2

    .line 1174
    .restart local v3    # "ds":Lcom/android/server/content/SyncStorageEngine$DayStats;
    .restart local v6    # "lastSyncTime":J
    .restart local v10    # "writeStatusNow":Z
    :cond_c
    const-string/jumbo v11, "canceled"

    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 1175
    iget-wide v14, v8, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_d

    .line 1176
    const/4 v10, 0x1

    .line 1178
    :cond_d
    iput-wide v6, v8, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    .line 1179
    iget v11, v5, Lcom/android/server/content/SyncStorageEngine$SyncHistoryItem;->source:I

    iput v11, v8, Landroid/content/SyncStatusInfo;->lastFailureSource:I

    .line 1180
    move-object/from16 v0, p5

    iput-object v0, v8, Landroid/content/SyncStatusInfo;->lastFailureMesg:Ljava/lang/String;

    .line 1181
    iget-wide v14, v8, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_e

    .line 1182
    iput-wide v6, v8, Landroid/content/SyncStatusInfo;->initialFailureTime:J

    .line 1184
    :cond_e
    iget v11, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureCount:I

    .line 1185
    iget-wide v14, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    add-long v14, v14, p3

    iput-wide v14, v3, Lcom/android/server/content/SyncStorageEngine$DayStats;->failureTime:J

    goto/16 :goto_3

    .line 1190
    :cond_f
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/content/SyncStorageEngine;->hasMessages(I)Z

    move-result v11

    if-nez v11, :cond_8

    .line 1191
    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/content/SyncStorageEngine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 1192
    const-wide/32 v14, 0x927c0

    .line 1191
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v14, v15}, Lcom/android/server/content/SyncStorageEngine;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_4

    .line 1196
    :cond_10
    const/4 v11, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/content/SyncStorageEngine;->hasMessages(I)Z

    move-result v11

    if-nez v11, :cond_9

    .line 1197
    const/4 v11, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/content/SyncStorageEngine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 1198
    const-wide/32 v14, 0x1b7740

    .line 1197
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v14, v15}, Lcom/android/server/content/SyncStorageEngine;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_5

    .line 1129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public writeAllState()V
    .locals 2

    .prologue
    .line 1461
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine;->mAuthorities:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1463
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatusLocked()V

    .line 1464
    invoke-direct {p0}, Lcom/android/server/content/SyncStorageEngine;->writeStatisticsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1460
    return-void

    .line 1461
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
