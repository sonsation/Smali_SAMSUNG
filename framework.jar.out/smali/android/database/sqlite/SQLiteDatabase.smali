.class public final Landroid/database/sqlite/SQLiteDatabase;
.super Landroid/database/sqlite/SQLiteClosable;
.source "SQLiteDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteDatabase$1;,
        Landroid/database/sqlite/SQLiteDatabase$CursorFactory;,
        Landroid/database/sqlite/SQLiteDatabase$CustomFunction;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final CONFLICT_ABORT:I = 0x2

.field public static final CONFLICT_FAIL:I = 0x3

.field public static final CONFLICT_IGNORE:I = 0x4

.field public static final CONFLICT_NONE:I = 0x0

.field public static final CONFLICT_REPLACE:I = 0x5

.field public static final CONFLICT_ROLLBACK:I = 0x1

.field private static final CONFLICT_VALUES:[Ljava/lang/String;

.field public static final CREATE_IF_NECESSARY:I = 0x10000000

.field public static final ENABLE_WRITE_AHEAD_LOGGING:I = 0x20000000

.field private static final EVENT_DB_CORRUPT:I = 0x124fc

.field public static final MAX_SQL_CACHE_SIZE:I = 0x64

.field public static final NO_LOCALIZED_COLLATORS:I = 0x10

.field public static final OPEN_READONLY:I = 0x1

.field public static final OPEN_READWRITE:I = 0x0

.field private static final OPEN_READ_MASK:I = 0x1

.field public static final SQLITE_MAX_LIKE_PATTERN_LENGTH:I = 0xc350

.field private static final TAG:Ljava/lang/String; = "SQLiteDatabase"

.field private static final mSecureLock:Ljava/lang/Object;

.field private static sActiveDatabases:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCloseGuardLocked:Ldalvik/system/CloseGuard;

.field private final mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

.field private mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

.field private mCorrupt_code:I

.field private final mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private final mDefaultErrorHandler:Landroid/database/DatabaseErrorHandler;

.field private final mErrorHandler:Landroid/database/DatabaseErrorHandler;

.field private mHasAttachedDbsLocked:Z

.field private mInCorruptionHandling:Z

.field private mIntegrityErrorString:Ljava/lang/String;

.field private mIsDatabaseCorrupted:Z

.field private final mLock:Ljava/lang/Object;

.field private mSdpHelper:Landroid/database/sqlite/SQLiteSdpHelper;

.field private final mThreadSession:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/database/sqlite/SQLiteSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-class v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/database/sqlite/SQLiteDatabase;->-assertionsDisabled:Z

    .line 80
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 79
    sput-object v0, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    .line 128
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/database/sqlite/SQLiteDatabase;->mSecureLock:Ljava/lang/Object;

    .line 202
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, ""

    aput-object v3, v0, v1

    const-string/jumbo v1, " OR ROLLBACK "

    aput-object v1, v0, v2

    const-string/jumbo v1, " OR ABORT "

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, " OR FAIL "

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, " OR IGNORE "

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, " OR REPLACE "

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 201
    sput-object v0, Landroid/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    .line 71
    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "openFlags"    # I
    .param p3, "cursorFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 272
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteClosable;-><init>()V

    .line 85
    new-instance v2, Landroid/database/sqlite/SQLiteDatabase$1;

    invoke-direct {v2, p0}, Landroid/database/sqlite/SQLiteDatabase$1;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mThreadSession:Ljava/lang/ThreadLocal;

    .line 100
    iput-boolean v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mInCorruptionHandling:Z

    .line 105
    iput-boolean v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mIsDatabaseCorrupted:Z

    .line 108
    iput-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mIntegrityErrorString:Ljava/lang/String;

    .line 124
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    .line 132
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v2

    iput-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Ldalvik/system/CloseGuard;

    .line 1135
    iput-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mSdpHelper:Landroid/database/sqlite/SQLiteSdpHelper;

    .line 2536
    iput v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mCorrupt_code:I

    .line 274
    iput-object p3, p0, Landroid/database/sqlite/SQLiteDatabase;->mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 275
    iput-object p4, p0, Landroid/database/sqlite/SQLiteDatabase;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    .line 276
    new-instance v0, Landroid/database/DefaultDatabaseErrorHandler;

    invoke-direct {v0}, Landroid/database/DefaultDatabaseErrorHandler;-><init>()V

    .line 277
    .local v0, "defaultErrorHandler":Landroid/database/DefaultDatabaseErrorHandler;
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/database/DefaultDatabaseErrorHandler;->setDeleteDatabaseIfCorrupted(Z)V

    .line 278
    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mDefaultErrorHandler:Landroid/database/DatabaseErrorHandler;

    .line 279
    new-instance v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-direct {v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .line 273
    return-void
.end method

.method public static backupDatabase(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "dstPath"    # Ljava/lang/String;

    .prologue
    .line 2432
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2433
    :cond_0
    const-string/jumbo v0, "SQLiteDatabase"

    const-string/jumbo v1, "path should not be null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2434
    const/4 v0, -0x1

    return v0

    .line 2436
    :cond_1
    invoke-static {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->native_backup(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V
    .locals 5
    .param p1, "transactionListener"    # Landroid/database/sqlite/SQLiteTransactionListener;
    .param p2, "exclusive"    # Z

    .prologue
    .line 628
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 630
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v2

    .line 631
    if-eqz p2, :cond_0

    const/4 v1, 0x2

    .line 634
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/database/sqlite/SQLiteDatabase;->getThreadDefaultConnectionFlags(Z)I

    move-result v3

    const/4 v4, 0x0

    .line 630
    invoke-virtual {v2, v1, p1, v3, v4}, Landroid/database/sqlite/SQLiteSession;->beginTransaction(ILandroid/database/sqlite/SQLiteTransactionListener;ILandroid/os/CancellationSignal;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 627
    return-void

    .line 632
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 635
    :catch_0
    move-exception v0

    .line 636
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getCorruptCode()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption(I)V

    .line 637
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 638
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_0
    move-exception v1

    .line 639
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 638
    throw v1
.end method

.method private collectDbStats(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/sqlite/SQLiteDebug$DbStats;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2584
    .local p1, "dbStatsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDebug$DbStats;>;"
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2585
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    if-eqz v0, :cond_0

    .line 2586
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->collectDbStats(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 2583
    return-void

    .line 2584
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static convertByte2HexString([B)Ljava/lang/String;
    .locals 4
    .param p0, "password"    # [B

    .prologue
    .line 881
    const-string/jumbo v1, ""

    .line 882
    .local v1, "rst":Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 883
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 884
    aget-byte v2, p0, v0

    if-ltz v2, :cond_0

    aget-byte v2, p0, v0

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 885
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 887
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 883
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 890
    .end local v0    # "i":I
    :cond_1
    return-object v1
.end method

.method public static convertToPlainDatabase(Ljava/io/File;Ljava/io/File;[B)V
    .locals 12
    .param p0, "sourceDbFile"    # Ljava/io/File;
    .param p1, "destDbFile"    # Ljava/io/File;
    .param p2, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 895
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 896
    :cond_0
    const-string/jumbo v5, "SQLiteDatabase"

    const-string/jumbo v6, "convertToPlainDatabase() parameters should not be null."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "parameters should not be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 895
    :cond_1
    if-eqz p2, :cond_0

    .line 899
    sget-object v6, Landroid/database/sqlite/SQLiteDatabase;->mSecureLock:Ljava/lang/Object;

    monitor-enter v6

    .line 900
    :try_start_0
    const-string/jumbo v5, "SQLiteDatabase"

    const-string/jumbo v7, "convertToPlainDatabase() start..."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_2

    .line 905
    const-string/jumbo v5, "SQLiteDatabase"

    const-string/jumbo v7, "convertToPlainDatabase() Destination file should not be exist. Please delete it first."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "Destination file should not be exist. Please delete it first."

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 899
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 908
    :cond_2
    const/4 v0, 0x0

    .line 909
    .local v0, "destDb":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v7, v8, v9, p2}, Landroid/database/sqlite/SQLiteDatabase;->openSecureDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;[B)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 910
    .local v3, "sourceDb":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v3, :cond_3

    .line 911
    const-string/jumbo v5, "SQLiteDatabase"

    const-string/jumbo v7, "convertToPlainDatabase() Source DB open failed"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "Source DB open failed"

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 915
    :cond_3
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v4

    .line 917
    .local v4, "sourceDbVer":I
    :try_start_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 924
    :try_start_4
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    .line 925
    const v8, 0x10000010

    const/4 v9, 0x0

    .line 924
    invoke-static {v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 926
    .local v0, "destDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v5, "attach database \'%s\' as secureDb key x\'%s\'"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 927
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {p2}, Landroid/database/sqlite/SQLiteDatabase;->convertByte2HexString([B)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    .line 926
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 928
    const-string/jumbo v5, "secureDb"

    invoke-direct {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->exportDB(Ljava/lang/String;)V

    .line 929
    const-string/jumbo v5, "detach database secureDb"

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 930
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    .line 931
    .local v1, "destDbVer":I
    if-eq v1, v4, :cond_4

    .line 932
    const-string/jumbo v5, "SQLiteDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Note: sourceDb version was changed during conversion ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 935
    :cond_4
    if-eqz v0, :cond_5

    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 936
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 944
    :cond_5
    :try_start_6
    const-string/jumbo v5, "SQLiteDatabase"

    const-string/jumbo v7, "convertToPlainDatabase() finished"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v6

    .line 894
    return-void

    .line 916
    .end local v1    # "destDbVer":I
    .end local v4    # "sourceDbVer":I
    .local v0, "destDb":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v5

    .line 917
    :try_start_7
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 916
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 934
    .end local v0    # "destDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "sourceDbVer":I
    :catchall_2
    move-exception v5

    .line 935
    if-eqz v0, :cond_6

    :try_start_8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 936
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 934
    :cond_6
    throw v5
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 939
    :catch_0
    move-exception v2

    .line 940
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_9
    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    .line 941
    const-string/jumbo v5, "SQLiteDatabase"

    const-string/jumbo v7, "convertToPlainDatabase() failed"

    invoke-static {v5, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 942
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method public static convertToSecureDatabase(Ljava/io/File;Ljava/io/File;[B)V
    .locals 12
    .param p0, "sourceDbFile"    # Ljava/io/File;
    .param p1, "destDbFile"    # Ljava/io/File;
    .param p2, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 950
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 951
    :cond_0
    const-string/jumbo v5, "SQLiteDatabase"

    const-string/jumbo v6, "convertToSecureDatabase() parameters should not be null."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "parameters should not be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 950
    :cond_1
    if-eqz p2, :cond_0

    .line 955
    sget-object v6, Landroid/database/sqlite/SQLiteDatabase;->mSecureLock:Ljava/lang/Object;

    monitor-enter v6

    .line 956
    :try_start_0
    const-string/jumbo v5, "SQLiteDatabase"

    const-string/jumbo v7, "convertToSecureDatabase() start..."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_2

    .line 961
    const-string/jumbo v5, "SQLiteDatabase"

    const-string/jumbo v7, "convertToSecureDatabase() Destination file should not be exist. Please delete it first"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "Destination file should not be exist. Please delete it first."

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 955
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 964
    :cond_2
    const/4 v0, 0x0

    .line 965
    .local v0, "destDb":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    .line 966
    const/16 v8, 0x10

    const/4 v9, 0x0

    .line 965
    invoke-static {v5, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 967
    .local v3, "sourceDb":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v3, :cond_3

    .line 968
    const-string/jumbo v5, "SQLiteDatabase"

    const-string/jumbo v7, "convertToSecureDatabase() Source DB open failed"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "Source DB open failed"

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 972
    :cond_3
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v4

    .line 974
    .local v4, "sourceDbVer":I
    :try_start_3
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 979
    :try_start_4
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    .line 980
    const/high16 v8, 0x10000000

    const/4 v9, 0x0

    .line 979
    invoke-static {v5, v7, v8, v9, p2}, Landroid/database/sqlite/SQLiteDatabase;->openSecureDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;[B)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 981
    .local v0, "destDb":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v5, "attach database \'%s\' as plainDb key \'\'"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 982
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 981
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 983
    const-string/jumbo v5, "plainDb"

    invoke-direct {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->exportDB(Ljava/lang/String;)V

    .line 984
    const-string/jumbo v5, "detach database plainDb"

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 985
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    .line 986
    .local v1, "destDbVer":I
    if-eq v1, v4, :cond_4

    .line 987
    const-string/jumbo v5, "SQLiteDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Note: sourceDb version was changed during conversion ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 990
    :cond_4
    if-eqz v0, :cond_5

    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 991
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_5
    monitor-exit v6

    .line 1000
    const-string/jumbo v5, "SQLiteDatabase"

    const-string/jumbo v6, "convertToSecureDatabase() finished"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    return-void

    .line 973
    .end local v1    # "destDbVer":I
    .end local v4    # "sourceDbVer":I
    .local v0, "destDb":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v5

    .line 974
    :try_start_6
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 973
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 989
    .end local v0    # "destDb":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4    # "sourceDbVer":I
    :catchall_2
    move-exception v5

    .line 990
    if-eqz v0, :cond_6

    :try_start_7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 991
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 989
    :cond_6
    throw v5
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 994
    :catch_0
    move-exception v2

    .line 995
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_8
    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    .line 996
    const-string/jumbo v5, "SQLiteDatabase"

    const-string/jumbo v7, "convertToSecureDatabase() failed"

    invoke-static {v5, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 997
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public static create(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .param p0, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .prologue
    .line 1203
    const-string/jumbo v0, ":memory:"

    .line 1204
    const/high16 v1, 0x10000000

    .line 1203
    invoke-static {v0, p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static createSecureDatabase(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;[B)Landroid/database/sqlite/SQLiteDatabase;
    .locals 3
    .param p0, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p1, "password"    # [B

    .prologue
    .line 1218
    const-string/jumbo v0, ":memory:"

    .line 1219
    const/high16 v1, 0x10000000

    const/4 v2, 0x0

    .line 1218
    invoke-static {v0, p0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->openSecureDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;[B)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static deleteDatabase(Ljava/io/File;)Z
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 1033
    if-nez p0, :cond_0

    .line 1034
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "file must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1038
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 1039
    .local v0, "deleted":Z
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-journal"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    or-int/2addr v0, v5

    .line 1040
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-shm"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    or-int/2addr v0, v5

    .line 1041
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-wal"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    or-int/2addr v0, v5

    .line 1042
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-se"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    or-int/2addr v0, v5

    .line 1044
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 1045
    .local v1, "dir":Ljava/io/File;
    if-eqz v1, :cond_1

    .line 1046
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "-mj"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1047
    .local v4, "prefix":Ljava/lang/String;
    new-instance v5, Landroid/database/sqlite/SQLiteDatabase$2;

    invoke-direct {v5, v4}, Landroid/database/sqlite/SQLiteDatabase$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 1053
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_1

    .line 1054
    const/4 v5, 0x0

    array-length v6, v2

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v3, v2, v5

    .line 1055
    .local v3, "masterJournal":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v7

    or-int/2addr v0, v7

    .line 1054
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1059
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "masterJournal":Ljava/io/File;
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_1
    return v0
.end method

.method public static deleteDatabaseFile(Ljava/lang/String;)Z
    .locals 4
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    .line 2817
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2818
    .local v0, "fi":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 2820
    .local v1, "ret":Z
    if-eqz v1, :cond_3

    .line 2821
    new-instance v0, Ljava/io/File;

    .end local v0    # "fi":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-journal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2822
    .restart local v0    # "fi":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2823
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2825
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "fi":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-wal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2826
    .restart local v0    # "fi":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2827
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2829
    :cond_1
    new-instance v0, Ljava/io/File;

    .end local v0    # "fi":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-shm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2830
    .restart local v0    # "fi":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2831
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2833
    :cond_2
    new-instance v0, Ljava/io/File;

    .end local v0    # "fi":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-se"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2834
    .restart local v0    # "fi":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2835
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2838
    :cond_3
    return v1
.end method

.method private dispose(Z)V
    .locals 4
    .param p1, "finalized"    # Z

    .prologue
    .line 301
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 302
    :try_start_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Ldalvik/system/CloseGuard;

    if-eqz v2, :cond_1

    .line 303
    if-eqz p1, :cond_0

    .line 304
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Ldalvik/system/CloseGuard;

    invoke-virtual {v2}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 306
    :cond_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Ldalvik/system/CloseGuard;

    invoke-virtual {v2}, Ldalvik/system/CloseGuard;->close()V

    .line 309
    :cond_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    .line 310
    .local v0, "pool":Landroid/database/sqlite/SQLiteConnectionPool;
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    .line 313
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mSdpHelper:Landroid/database/sqlite/SQLiteSdpHelper;

    .line 314
    .local v1, "sdpHelper":Landroid/database/sqlite/SQLiteSdpHelper;
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mSdpHelper:Landroid/database/sqlite/SQLiteSdpHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 319
    if-eqz v1, :cond_2

    .line 320
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteSdpHelper;->unregisterListener()V

    .line 324
    :cond_2
    if-nez p1, :cond_3

    .line 325
    sget-object v3, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    monitor-enter v3

    .line 326
    :try_start_1
    sget-object v2, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v3

    .line 329
    if-eqz v0, :cond_3

    .line 330
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConnectionPool;->close()V

    .line 296
    :cond_3
    return-void

    .line 301
    .end local v0    # "pool":Landroid/database/sqlite/SQLiteConnectionPool;
    .end local v1    # "sdpHelper":Landroid/database/sqlite/SQLiteSdpHelper;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 325
    .restart local v0    # "pool":Landroid/database/sqlite/SQLiteConnectionPool;
    .restart local v1    # "sdpHelper":Landroid/database/sqlite/SQLiteSdpHelper;
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private dump(Landroid/util/Printer;Z)V
    .locals 3
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "verbose"    # Z

    .prologue
    .line 2610
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2611
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    if-eqz v0, :cond_0

    .line 2612
    const-string/jumbo v0, ""

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2613
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteConnectionPool;->dump(Landroid/util/Printer;Z)V

    .line 2614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Attached db: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mHasAttachedDbsLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 2609
    return-void

    .line 2610
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static dumpAll(Landroid/util/Printer;Z)V
    .locals 3
    .param p0, "printer"    # Landroid/util/Printer;
    .param p1, "verbose"    # Z

    .prologue
    .line 2604
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->getActiveDatabases()Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "db$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    .line 2605
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {v0, p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->dump(Landroid/util/Printer;Z)V

    goto :goto_0

    .line 2603
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    return-void
.end method

.method private executeSql(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 4
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 2050
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 2052
    :try_start_0
    invoke-static {p1}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 2053
    const/4 v0, 0x0

    .line 2054
    .local v0, "disableWal":Z
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2055
    :try_start_1
    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mHasAttachedDbsLocked:Z

    if-nez v2, :cond_0

    .line 2056
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mHasAttachedDbsLocked:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2057
    const/4 v0, 0x1

    :cond_0
    :try_start_2
    monitor-exit v3

    .line 2060
    if-eqz v0, :cond_1

    .line 2061
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->disableWriteAheadLogging()V

    .line 2065
    .end local v0    # "disableWal":Z
    :cond_1
    new-instance v1, Landroid/database/sqlite/SQLiteStatement;

    invoke-direct {v1, p0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2067
    .local v1, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v2

    .line 2069
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2072
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2067
    return v2

    .line 2054
    .end local v1    # "statement":Landroid/database/sqlite/SQLiteStatement;
    .restart local v0    # "disableWal":Z
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v3

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2071
    .end local v0    # "disableWal":Z
    :catchall_1
    move-exception v2

    .line 2072
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2071
    throw v2

    .line 2068
    .restart local v1    # "statement":Landroid/database/sqlite/SQLiteStatement;
    :catchall_2
    move-exception v2

    .line 2069
    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2068
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method private exportDB(Ljava/lang/String;)V
    .locals 2
    .param p1, "attachedDB"    # Ljava/lang/String;

    .prologue
    .line 1183
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1184
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 1186
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->exportDB(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1182
    return-void

    .line 1183
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static findEditTable(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "tables"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1352
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1354
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1355
    .local v1, "spacepos":I
    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1357
    .local v0, "commapos":I
    if-lez v1, :cond_1

    if-lt v1, v0, :cond_0

    if-gez v0, :cond_1

    .line 1358
    :cond_0
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1359
    :cond_1
    if-lez v0, :cond_3

    if-lt v0, v1, :cond_2

    if-gez v1, :cond_3

    .line 1360
    :cond_2
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1362
    :cond_3
    return-object p0

    .line 1364
    .end local v0    # "commapos":I
    .end local v1    # "spacepos":I
    :cond_4
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Invalid tables"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static getActiveDatabases()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2592
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2593
    .local v0, "databases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDatabase;>;"
    sget-object v2, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    monitor-enter v2

    .line 2594
    :try_start_0
    sget-object v1, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 2596
    return-object v0

    .line 2593
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static getDbStats()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/sqlite/SQLiteDebug$DbStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2576
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2577
    .local v2, "dbStatsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDebug$DbStats;>;"
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->getActiveDatabases()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "db$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    .line 2578
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->collectDbStats(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 2580
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    return-object v2
.end method

.method private static isMainThread()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 515
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 516
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isReadOnlyLocked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2103
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private open()V
    .locals 5

    .prologue
    .line 1097
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->openInner()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1094
    :goto_0
    return-void

    .line 1098
    :catch_0
    move-exception v0

    .line 1099
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getCorruptCode()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption(I)V

    .line 1100
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->openInner()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1102
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catch_1
    move-exception v1

    .line 1103
    .local v1, "ex":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v2, "SQLiteDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to open database \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1104
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1105
    throw v1
.end method

.method public static openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "flags"    # I

    .prologue
    .line 803
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "flags"    # I
    .param p3, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    .prologue
    .line 827
    new-instance v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, p0, p2, p1, p3}, Landroid/database/sqlite/SQLiteDatabase;-><init>(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)V

    .line 828
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {v0}, Landroid/database/sqlite/SQLiteDatabase;->open()V

    .line 829
    return-object v0
.end method

.method private openInner()V
    .locals 3

    .prologue
    .line 1150
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1151
    :try_start_0
    sget-boolean v0, Landroid/database/sqlite/SQLiteDatabase;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1150
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1151
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1152
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-static {v0}, Landroid/database/sqlite/SQLiteConnectionPool;->open(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)Landroid/database/sqlite/SQLiteConnectionPool;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    .line 1153
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Ldalvik/system/CloseGuard;

    const-string/jumbo v2, "close"

    invoke-virtual {v0, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 1157
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1158
    :try_start_2
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mSdpHelper:Landroid/database/sqlite/SQLiteSdpHelper;

    if-nez v0, :cond_2

    .line 1159
    new-instance v0, Landroid/database/sqlite/SQLiteSdpHelper;

    invoke-direct {v0, p0}, Landroid/database/sqlite/SQLiteSdpHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mSdpHelper:Landroid/database/sqlite/SQLiteSdpHelper;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    monitor-exit v1

    .line 1162
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mSdpHelper:Landroid/database/sqlite/SQLiteSdpHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteSdpHelper;->registerListener()V

    .line 1165
    sget-object v1, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 1166
    :try_start_3
    sget-object v0, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v1

    .line 1149
    return-void

    .line 1157
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1165
    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private openInnerSecureDatabase([B)V
    .locals 3
    .param p1, "password"    # [B

    .prologue
    .line 1171
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1172
    :try_start_0
    sget-boolean v0, Landroid/database/sqlite/SQLiteDatabase;->-assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1171
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1172
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1173
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-static {v0, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->openSecure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;[B)Landroid/database/sqlite/SQLiteConnectionPool;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    .line 1174
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCloseGuardLocked:Ldalvik/system/CloseGuard;

    const-string/jumbo v2, "close"

    invoke-virtual {v0, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 1177
    sget-object v1, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 1178
    :try_start_2
    sget-object v0, Landroid/database/sqlite/SQLiteDatabase;->sActiveDatabases:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    .line 1170
    return-void

    .line 1177
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .prologue
    .line 836
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .prologue
    .line 843
    const/high16 v0, 0x10000000

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    .prologue
    .line 851
    const/high16 v0, 0x10000000

    invoke-static {p0, p1, v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static openSecureDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;[B)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "flags"    # I
    .param p3, "errorHandler"    # Landroid/database/DatabaseErrorHandler;
    .param p4, "password"    # [B

    .prologue
    .line 874
    new-instance v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v0, p0, p2, p1, p3}, Landroid/database/sqlite/SQLiteDatabase;-><init>(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)V

    .line 875
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {v0, p4}, Landroid/database/sqlite/SQLiteDatabase;->openSecureDatabase([B)V

    .line 876
    return-object v0
.end method

.method private openSecureDatabase([B)V
    .locals 6
    .param p1, "password"    # [B

    .prologue
    .line 1110
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1111
    if-eqz p1, :cond_0

    .line 1112
    :try_start_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/high16 v4, 0x20000000

    and-int/2addr v2, v4

    if-eqz v2, :cond_0

    .line 1114
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v4, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const v5, -0x20000001

    and-int/2addr v4, v5

    iput v4, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 1115
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    const/4 v4, 0x0

    iput-boolean v4, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->enableWALExplicitly:Z

    .line 1116
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    const/4 v4, 0x0

    iput-boolean v4, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->preloadWalDb:Z

    .line 1117
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    const/4 v4, 0x0

    iput-boolean v4, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->defaultWAL:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    .line 1122
    :try_start_1
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->openInnerSecureDatabase([B)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1109
    :goto_0
    return-void

    .line 1110
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1123
    :catch_0
    move-exception v0

    .line 1124
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getCorruptCode()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption(I)V

    .line 1125
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->openInnerSecureDatabase([B)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1127
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catch_1
    move-exception v1

    .line 1128
    .local v1, "ex":Landroid/database/sqlite/SQLiteException;
    const-string/jumbo v2, "SQLiteDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to open database \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1129
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1130
    throw v1
.end method

.method public static releaseMemory()I
    .locals 1

    .prologue
    .line 342
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->releaseMemory()I

    move-result v0

    return v0
.end method

.method public static renameDatabaseFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "from"    # Ljava/lang/String;
    .param p1, "to"    # Ljava/lang/String;

    .prologue
    .line 2798
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2799
    .local v0, "fi":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2801
    new-instance v0, Ljava/io/File;

    .end local v0    # "fi":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-wal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2802
    .restart local v0    # "fi":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2803
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-wal"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2805
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "fi":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-shm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2806
    .restart local v0    # "fi":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2807
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-shm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2809
    :cond_1
    new-instance v0, Ljava/io/File;

    .end local v0    # "fi":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-se"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2810
    .restart local v0    # "fi":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2811
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-se"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2797
    :cond_2
    return-void
.end method

.method public static semBackupDatabaseFile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "dstPath"    # Ljava/lang/String;

    .prologue
    .line 2452
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2453
    :cond_0
    const-string/jumbo v0, "SQLiteDatabase"

    const-string/jumbo v1, "path should not be null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2454
    const/4 v0, -0x1

    return v0

    .line 2456
    :cond_1
    invoke-static {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->native_backupDatabaseFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static semBackupSecureDatabaseFile(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 4
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "dstPath"    # Ljava/lang/String;
    .param p2, "password"    # [B

    .prologue
    .line 2473
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2474
    :cond_0
    const-string/jumbo v1, "SQLiteDatabase"

    const-string/jumbo v2, "path and password should not be null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2475
    const/4 v1, -0x1

    return v1

    .line 2473
    :cond_1
    if-eqz p2, :cond_0

    .line 2477
    sget-object v2, Landroid/database/sqlite/SQLiteDatabase;->mSecureLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2478
    :try_start_0
    const-string/jumbo v1, "SQLiteDatabase"

    const-string/jumbo v3, "semBackupSecureDatabaseFile() start..."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2479
    invoke-static {p0, p1, p2}, Landroid/database/sqlite/SQLiteConnection;->native_backupSecureDatabaseFile(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v0

    .line 2480
    .local v0, "rc":I
    const-string/jumbo v1, "SQLiteDatabase"

    const-string/jumbo v3, "semBackupSecureDatabaseFile() finished"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 2481
    return v0

    .line 2477
    .end local v0    # "rc":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static semDeleteAllDatabases(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 8
    .param p0, "dbObj"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 435
    if-nez p0, :cond_0

    .line 436
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "SQLiteDatabase should not be null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 439
    :cond_0
    const/4 v0, 0x0

    .line 440
    .local v0, "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v4, 0x0

    .line 442
    .local v4, "path":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object v0

    .line 443
    .local v0, "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 444
    .local v4, "path":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 445
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 449
    :cond_1
    if-eqz v0, :cond_2

    .line 450
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "p$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 451
    .local v2, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "SQLiteDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "!@ Delete DB File : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    new-instance v6, Ljava/io/File;

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 459
    .end local v0    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "p$iterator":Ljava/util/Iterator;
    .end local v4    # "path":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 460
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "SQLiteDatabase"

    const-string/jumbo v6, "!@ semDeleteAllDatabase - Exception during deleting"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const/4 v5, 0x0

    return v5

    .line 456
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v4    # "path":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string/jumbo v5, "SQLiteDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "!@ Failed to get attachedDbs, just delete "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 463
    :cond_3
    const/4 v5, 0x1

    return v5
.end method

.method public static semRestoreDatabaseFile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "dstPath"    # Ljava/lang/String;

    .prologue
    .line 2498
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2499
    :cond_0
    const-string/jumbo v0, "SQLiteDatabase"

    const-string/jumbo v1, "path should not be null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2500
    const/4 v0, -0x1

    return v0

    .line 2502
    :cond_1
    invoke-static {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->native_restoreDatabaseFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static semRestoreSecureDatabaseFile(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 4
    .param p0, "srcPath"    # Ljava/lang/String;
    .param p1, "dstPath"    # Ljava/lang/String;
    .param p2, "password"    # [B

    .prologue
    .line 2521
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 2522
    :cond_0
    const-string/jumbo v1, "SQLiteDatabase"

    const-string/jumbo v2, "path and password should not be null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    const/4 v1, -0x1

    return v1

    .line 2521
    :cond_1
    if-eqz p2, :cond_0

    .line 2525
    sget-object v2, Landroid/database/sqlite/SQLiteDatabase;->mSecureLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2526
    :try_start_0
    const-string/jumbo v1, "SQLiteDatabase"

    const-string/jumbo v3, "semRestoreSecureDatabaseFile() start..."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    invoke-static {p0, p1, p2}, Landroid/database/sqlite/SQLiteConnection;->native_restoreSecureDatabaseFile(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v0

    .line 2528
    .local v0, "rc":I
    const-string/jumbo v1, "SQLiteDatabase"

    const-string/jumbo v3, "semRestoreSecureDatabaseFile() finished"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 2529
    return v0

    .line 2525
    .end local v0    # "rc":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private throwIfNotOpenLocked()V
    .locals 3

    .prologue
    .line 2764
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    if-nez v0, :cond_0

    .line 2765
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The database \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2766
    const-string/jumbo v2, "\' is not open."

    .line 2765
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2763
    :cond_0
    return-void
.end method

.method private yieldIfContendedHelper(ZJ)Z
    .locals 4
    .param p1, "throwIfUnsafe"    # Z
    .param p2, "sleepAfterYieldDelay"    # J

    .prologue
    .line 768
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 770
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p3, p1, v2}, Landroid/database/sqlite/SQLiteSession;->yieldTransaction(JZLandroid/os/CancellationSignal;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 775
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 770
    return v1

    .line 771
    :catch_0
    move-exception v0

    .line 772
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getCorruptCode()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption(I)V

    .line 773
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 774
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_0
    move-exception v1

    .line 775
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 774
    throw v1
.end method


# virtual methods
.method public addCustomFunction(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CustomFunction;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "numArgs"    # I
    .param p3, "function"    # Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    .prologue
    .line 1234
    new-instance v1, Landroid/database/sqlite/SQLiteCustomFunction;

    invoke-direct {v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteCustomFunction;-><init>(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CustomFunction;)V

    .line 1236
    .local v1, "wrapper":Landroid/database/sqlite/SQLiteCustomFunction;
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1237
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 1239
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1241
    :try_start_1
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 1232
    return-void

    .line 1242
    :catch_0
    move-exception v0

    .line 1243
    .local v0, "ex":Ljava/lang/RuntimeException;
    :try_start_2
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customFunctions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1244
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1236
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public beginTransaction()V
    .locals 2

    .prologue
    .line 541
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V

    .line 540
    return-void
.end method

.method public beginTransactionNonExclusive()V
    .locals 2

    .prologue
    .line 565
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V

    .line 564
    return-void
.end method

.method public beginTransactionWithListener(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .locals 1
    .param p1, "transactionListener"    # Landroid/database/sqlite/SQLiteTransactionListener;

    .prologue
    .line 594
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V

    .line 593
    return-void
.end method

.method public beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .locals 1
    .param p1, "transactionListener"    # Landroid/database/sqlite/SQLiteTransactionListener;

    .prologue
    .line 623
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction(Landroid/database/sqlite/SQLiteTransactionListener;Z)V

    .line 622
    return-void
.end method

.method public changeDBPassword([B)I
    .locals 4
    .param p1, "newPassword"    # [B

    .prologue
    .line 1005
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1006
    const-string/jumbo v1, "SQLiteDatabase"

    const-string/jumbo v2, "changeDBPassword() DB is not open"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "DB is not open"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1009
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1011
    :try_start_0
    sget-object v2, Landroid/database/sqlite/SQLiteDatabase;->mSecureLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1012
    :try_start_1
    const-string/jumbo v1, "SQLiteDatabase"

    const-string/jumbo v3, "changeDBPassword() start..."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteSession;->changePassword([B)V

    .line 1014
    const-string/jumbo v1, "SQLiteDatabase"

    const-string/jumbo v3, "changeDBPassword() finished"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1016
    const/4 v1, 0x0

    .line 1021
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1016
    return v1

    .line 1011
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2

    throw v1
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1017
    :catch_0
    move-exception v0

    .line 1018
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getCorruptCode()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption(I)V

    .line 1019
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1020
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_1
    move-exception v1

    .line 1021
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1020
    throw v1
.end method

.method public closeAndDiscardNonPrimaryConnections(Z)V
    .locals 2
    .param p1, "needDiscard"    # Z

    .prologue
    .line 2752
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2753
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 2754
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnectionPool;->closeAndDiscardNonPrimaryConnections(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 2751
    return-void

    .line 2752
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1383
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1385
    :try_start_0
    new-instance v0, Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1387
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1385
    return-object v0

    .line 1386
    :catchall_0
    move-exception v0

    .line 1387
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1386
    throw v0
.end method

.method createSession()Landroid/database/sqlite/SQLiteSession;
    .locals 3

    .prologue
    .line 489
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 490
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 491
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "pool":Landroid/database/sqlite/SQLiteConnectionPool;
    monitor-exit v2

    .line 493
    new-instance v1, Landroid/database/sqlite/SQLiteSession;

    invoke-direct {v1, v0}, Landroid/database/sqlite/SQLiteSession;-><init>(Landroid/database/sqlite/SQLiteConnectionPool;)V

    return-object v1

    .line 489
    .end local v0    # "pool":Landroid/database/sqlite/SQLiteConnectionPool;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 1885
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1887
    :try_start_0
    new-instance v0, Landroid/database/sqlite/SQLiteStatement;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DELETE FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1888
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " WHERE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1887
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p3}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1890
    .local v0, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 1892
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1895
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1890
    return v1

    .line 1888
    .end local v0    # "statement":Landroid/database/sqlite/SQLiteStatement;
    :cond_0
    :try_start_3
    const-string/jumbo v1, ""

    goto :goto_0

    .line 1891
    .restart local v0    # "statement":Landroid/database/sqlite/SQLiteStatement;
    :catchall_0
    move-exception v1

    .line 1892
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1891
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1894
    .end local v0    # "statement":Landroid/database/sqlite/SQLiteStatement;
    :catchall_1
    move-exception v1

    .line 1895
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1894
    throw v1
.end method

.method public disableWriteAheadLogging()V
    .locals 7

    .prologue
    const/high16 v6, 0x20000000

    .line 2391
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2392
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 2393
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v0, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->enableWALExplicitly:Z

    .line 2395
    .local v0, "enableWALExplicitly":Z
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/2addr v2, v6

    if-nez v2, :cond_0

    monitor-exit v3

    .line 2396
    return-void

    .line 2399
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v4, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const v5, -0x20000001

    and-int/2addr v4, v5

    iput v4, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 2400
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    const/4 v4, 0x0

    iput-boolean v4, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->enableWALExplicitly:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2402
    :try_start_2
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    .line 2390
    return-void

    .line 2403
    :catch_0
    move-exception v1

    .line 2404
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_3
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v4, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    or-int/2addr v4, v6

    iput v4, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 2405
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput-boolean v0, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->enableWALExplicitly:Z

    .line 2406
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2391
    .end local v0    # "enableWALExplicitly":Z
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public enableWriteAheadLogging()Z
    .locals 8

    .prologue
    const/high16 v7, 0x20000000

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2334
    const/4 v0, 0x0

    .line 2335
    .local v0, "enabledAutomatically":Z
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2336
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 2338
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    and-int/2addr v2, v7

    if-eqz v2, :cond_1

    .line 2339
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->enableWALExplicitly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit v3

    .line 2340
    return v5

    .line 2342
    :cond_0
    const/4 v0, 0x1

    .line 2345
    :cond_1
    :try_start_1
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnlyLocked()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    monitor-exit v3

    .line 2348
    return v6

    .line 2351
    :cond_2
    :try_start_2
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2352
    const-string/jumbo v2, "SQLiteDatabase"

    const-string/jumbo v4, "can\'t enable WAL for memory databases."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    .line 2353
    return v6

    .line 2358
    :cond_3
    :try_start_3
    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mHasAttachedDbsLocked:Z

    if-eqz v2, :cond_5

    .line 2359
    const-string/jumbo v2, "SQLiteDatabase"

    const/4 v4, 0x3

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2360
    const-string/jumbo v2, "SQLiteDatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "this database: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v5, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2361
    const-string/jumbo v5, " has attached databases. can\'t  enable WAL."

    .line 2360
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    monitor-exit v3

    .line 2363
    return v6

    .line 2366
    :cond_5
    :try_start_4
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v4, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    or-int/2addr v4, v7

    iput v4, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 2367
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->enableWALExplicitly:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2369
    :try_start_5
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v3

    .line 2378
    return v5

    .line 2370
    :catch_0
    move-exception v1

    .line 2371
    .local v1, "ex":Ljava/lang/RuntimeException;
    if-nez v0, :cond_6

    .line 2372
    :try_start_6
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v4, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const v5, -0x20000001

    and-int/2addr v4, v5

    iput v4, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 2374
    :cond_6
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    const/4 v4, 0x0

    iput-boolean v4, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->enableWALExplicitly:Z

    .line 2375
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2335
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public endTransaction()V
    .locals 3

    .prologue
    .line 648
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 650
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteSession;->endTransaction(Landroid/os/CancellationSignal;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 647
    return-void

    .line 651
    :catch_0
    move-exception v0

    .line 652
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getCorruptCode()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption(I)V

    .line 653
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 654
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_0
    move-exception v1

    .line 655
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 654
    throw v1
.end method

.method public execSQL(Ljava/lang/String;)V
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1996
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->executeSql(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1995
    return-void
.end method

.method public execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 2043
    if-nez p2, :cond_0

    .line 2044
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Empty bindArgs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2046
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->executeSql(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2042
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 285
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    invoke-super {p0}, Landroid/database/sqlite/SQLiteClosable;->finalize()V

    .line 283
    return-void

    .line 286
    :catchall_0
    move-exception v0

    .line 287
    invoke-super {p0}, Landroid/database/sqlite/SQLiteClosable;->finalize()V

    .line 286
    throw v0
.end method

.method public getAttachedDbs()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2627
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2628
    .local v0, "attachedDbs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2629
    :try_start_0
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v2, :cond_0

    monitor-exit v3

    .line 2630
    return-object v4

    .line 2633
    :cond_0
    :try_start_1
    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mHasAttachedDbsLocked:Z

    if-nez v2, :cond_1

    .line 2643
    new-instance v2, Landroid/util/Pair;

    const-string/jumbo v4, "main"

    iget-object v5, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v5, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit v3

    .line 2644
    return-object v0

    .line 2647
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v3

    .line 2652
    const/4 v1, 0x0

    .line 2654
    .local v1, "c":Landroid/database/Cursor;
    :try_start_3
    const-string/jumbo v2, "pragma database_list;"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2655
    .local v1, "c":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2661
    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2663
    .end local v1    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    .line 2664
    if-eqz v1, :cond_2

    .line 2665
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2663
    :cond_2
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2669
    :catchall_1
    move-exception v2

    .line 2670
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2669
    throw v2

    .line 2628
    :catchall_2
    move-exception v2

    monitor-exit v3

    throw v2

    .line 2664
    .restart local v1    # "c":Landroid/database/Cursor;
    :cond_3
    if-eqz v1, :cond_4

    .line 2665
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2670
    :cond_4
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2668
    return-object v0
.end method

.method public getCorruptCode()I
    .locals 1

    .prologue
    .line 2541
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mCorrupt_code:I

    return v0
.end method

.method public getIntegrityErrorInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2744
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mIntegrityErrorString:Ljava/lang/String;

    return-object v0
.end method

.method getLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 363
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 364
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getMaximumSize()J
    .locals 4

    .prologue
    .line 1273
    const-string/jumbo v2, "PRAGMA max_page_count;"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 1274
    .local v0, "pageCount":J
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPageSize()J

    move-result-wide v2

    mul-long/2addr v2, v0

    return-wide v2
.end method

.method public getPageSize()J
    .locals 2

    .prologue
    .line 1302
    const-string/jumbo v0, "PRAGMA page_size;"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2145
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2146
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 2145
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getSyncedTables()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 785
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    return-object v0
.end method

.method getThreadDefaultConnectionFlags(Z)I
    .locals 2
    .param p1, "readOnly"    # Z

    .prologue
    .line 504
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 506
    .local v0, "flags":I
    :goto_0
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->isMainThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    or-int/lit8 v0, v0, 0x4

    .line 509
    :cond_0
    return v0

    .line 505
    .end local v0    # "flags":I
    :cond_1
    const/4 v0, 0x2

    .restart local v0    # "flags":I
    goto :goto_0
.end method

.method getThreadSession()Landroid/database/sqlite/SQLiteSession;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mThreadSession:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteSession;

    return-object v0
.end method

.method public getVersion()I
    .locals 2

    .prologue
    .line 1255
    const-string/jumbo v0, "PRAGMA user_version;"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    return v0
.end method

.method public inTransaction()Z
    .locals 1

    .prologue
    .line 683
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 685
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteSession;->hasTransaction()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 687
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 685
    return v0

    .line 686
    :catchall_0
    move-exception v0

    .line 687
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 686
    throw v0
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1732
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 1733
    :catch_0
    move-exception v0

    .line 1734
    .local v0, "e":Landroid/database/SQLException;
    const-string/jumbo v1, "SQLiteDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error inserting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1735
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1758
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    .locals 10
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "initialValues"    # Landroid/content/ContentValues;
    .param p4, "conflictAlgorithm"    # I

    .prologue
    const/4 v5, 0x0

    .line 1830
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1832
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1833
    .local v6, "sql":Ljava/lang/StringBuilder;
    const-string/jumbo v8, "INSERT"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1834
    sget-object v8, Landroid/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    aget-object v8, v8, p4

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1835
    const-string/jumbo v8, " INTO "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1836
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1837
    const/16 v8, 0x28

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1839
    const/4 v0, 0x0

    .line 1840
    .local v0, "bindArgs":[Ljava/lang/Object;
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 1841
    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v5

    .line 1842
    .local v5, "size":I
    :cond_0
    if-lez v5, :cond_4

    .line 1843
    new-array v0, v5, [Ljava/lang/Object;

    .line 1844
    .local v0, "bindArgs":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 1845
    .local v3, "i":I
    invoke-virtual {p3}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "colName$iterator":Ljava/util/Iterator;
    move v4, v3

    .end local v3    # "i":I
    .local v4, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1846
    .local v1, "colName":Ljava/lang/String;
    if-lez v4, :cond_1

    const-string/jumbo v8, ","

    :goto_1
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1847
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1848
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v0, v4

    move v4, v3

    .end local v3    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .line 1846
    :cond_1
    const-string/jumbo v8, ""

    goto :goto_1

    .line 1850
    .end local v1    # "colName":Ljava/lang/String;
    :cond_2
    const/16 v8, 0x29

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1851
    const-string/jumbo v8, " VALUES ("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1852
    const/4 v3, 0x0

    .end local v4    # "i":I
    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v5, :cond_5

    .line 1853
    if-lez v3, :cond_3

    const-string/jumbo v8, ",?"

    :goto_3
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1852
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1853
    :cond_3
    const-string/jumbo v8, "?"

    goto :goto_3

    .line 1856
    .end local v2    # "colName$iterator":Ljava/util/Iterator;
    .end local v3    # "i":I
    .local v0, "bindArgs":[Ljava/lang/Object;
    :cond_4
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ") VALUES (NULL"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1858
    .end local v0    # "bindArgs":[Ljava/lang/Object;
    :cond_5
    const/16 v8, 0x29

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1860
    new-instance v7, Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p0, v8, v0}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1862
    .local v7, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_1
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    .line 1864
    :try_start_2
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1867
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1862
    return-wide v8

    .line 1863
    :catchall_0
    move-exception v8

    .line 1864
    :try_start_3
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1863
    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1866
    .end local v5    # "size":I
    .end local v6    # "sql":Ljava/lang/StringBuilder;
    .end local v7    # "statement":Landroid/database/sqlite/SQLiteStatement;
    :catchall_1
    move-exception v8

    .line 1867
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1866
    throw v8
.end method

.method public isDatabaseIntegrityOk()Z
    .locals 1

    .prologue
    .line 2688
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->isDatabaseIntegrityOk(Z)Z

    move-result v0

    return v0
.end method

.method public isDatabaseIntegrityOk(Z)Z
    .locals 12
    .param p1, "extraCheck"    # Z

    .prologue
    const/4 v11, 0x0

    .line 2693
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 2695
    const/4 v0, 0x0

    .line 2697
    .local v0, "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object v0

    .line 2698
    .local v0, "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-nez v0, :cond_0

    .line 2699
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "databaselist for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " couldn\'t "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2700
    const-string/jumbo v10, "be retrieved. probably because the database is closed"

    .line 2699
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2702
    .end local v0    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catch_0
    move-exception v2

    .line 2704
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2705
    .local v1, "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :try_start_2
    new-instance v8, Landroid/util/Pair;

    const-string/jumbo v9, "main"

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v0, v1

    .line 2708
    .end local v1    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v0    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    :try_start_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_8

    .line 2709
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2710
    .local v5, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 2712
    .local v6, "prog":Landroid/database/sqlite/SQLiteStatement;
    if-nez p1, :cond_3

    .line 2713
    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "PRAGMA "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v8, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".integrity_check(1);"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v6

    .line 2718
    .local v6, "prog":Landroid/database/sqlite/SQLiteStatement;
    :goto_1
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForIntegrityCheck()Ljava/lang/String;

    move-result-object v7

    .line 2719
    .local v7, "rslt":Ljava/lang/String;
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/database/sqlite/SQLiteDatabase;->mIntegrityErrorString:Ljava/lang/String;

    .line 2720
    if-eqz v7, :cond_1

    const-string/jumbo v8, "ok"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v8

    if-eqz v8, :cond_4

    .line 2730
    :cond_1
    if-eqz v6, :cond_2

    :try_start_5
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2708
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2715
    .end local v7    # "rslt":Ljava/lang/String;
    .local v6, "prog":Landroid/database/sqlite/SQLiteStatement;
    :cond_3
    :try_start_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "PRAGMA "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v8, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ".extra_integrity_check(1);"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v6

    .local v6, "prog":Landroid/database/sqlite/SQLiteStatement;
    goto :goto_1

    .line 2722
    .restart local v7    # "rslt":Ljava/lang/String;
    :cond_4
    iput-object v7, p0, Landroid/database/sqlite/SQLiteDatabase;->mIntegrityErrorString:Ljava/lang/String;

    .line 2723
    const-string/jumbo v9, "SQLiteDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "PRAGMA integrity_check on "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " returned: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2730
    if-eqz v6, :cond_5

    :try_start_7
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2734
    :cond_5
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2724
    return v11

    .line 2726
    .end local v6    # "prog":Landroid/database/sqlite/SQLiteStatement;
    .end local v7    # "rslt":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 2727
    .local v3, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_8
    const-string/jumbo v8, "false"

    iput-object v8, p0, Landroid/database/sqlite/SQLiteDatabase;->mIntegrityErrorString:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2730
    if-eqz v6, :cond_6

    :try_start_9
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2734
    :cond_6
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2728
    return v11

    .line 2729
    .end local v3    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_0
    move-exception v8

    .line 2730
    if-eqz v6, :cond_7

    :try_start_a
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2729
    :cond_7
    throw v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 2733
    .end local v0    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4    # "i":I
    .end local v5    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_1
    move-exception v8

    .line 2734
    :goto_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2733
    throw v8

    .line 2734
    .restart local v0    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v4    # "i":I
    :cond_8
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 2736
    const/4 v8, 0x1

    return v8

    .line 2733
    .end local v0    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v4    # "i":I
    .restart local v1    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_2
    move-exception v8

    move-object v0, v1

    .end local v1    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v0    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    goto :goto_2
.end method

.method public isDbLockedByCurrentThread()Z
    .locals 1

    .prologue
    .line 704
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 706
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteSession;->hasConnection()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 708
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 706
    return v0

    .line 707
    :catchall_0
    move-exception v0

    .line 708
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 707
    throw v0
.end method

.method public isDbLockedByOtherThreads()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 723
    const/4 v0, 0x0

    return v0
.end method

.method public isInMemoryDatabase()Z
    .locals 2

    .prologue
    .line 2113
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2114
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 2113
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isOpen()Z
    .locals 2

    .prologue
    .line 2124
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2125
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2124
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isReadOnly()Z
    .locals 2

    .prologue
    .line 2097
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2098
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnlyLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    .line 2097
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public isWriteAheadLoggingEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2420
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2421
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 2423
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/high16 v3, 0x20000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 2424
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->enableWALExplicitly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 2423
    return v0

    .line 2420
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public markTableSyncable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "deletedTable"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1326
    return-void
.end method

.method public markTableSyncable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "foreignKey"    # Ljava/lang/String;
    .param p3, "updateTable"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1342
    return-void
.end method

.method public needUpgrade(I)Z
    .locals 1
    .param p1, "newVersion"    # I

    .prologue
    .line 2136
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAllReferencesReleased()V
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->dispose(Z)V

    .line 292
    return-void
.end method

.method onCorruption()V
    .locals 3

    .prologue
    .line 379
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 380
    :try_start_0
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mInCorruptionHandling:Z

    if-eqz v0, :cond_0

    .line 381
    const-string/jumbo v0, "SQLiteDatabase"

    const-string/jumbo v2, "Database corruption is already handling."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 382
    return-void

    .line 384
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mInCorruptionHandling:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 388
    :try_start_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getLabel()Ljava/lang/String;

    move-result-object v0

    const v1, 0x124fc

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 389
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mDefaultErrorHandler:Landroid/database/DatabaseErrorHandler;

    invoke-interface {v0, p0}, Landroid/database/DatabaseErrorHandler;->onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 390
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    invoke-interface {v0, p0}, Landroid/database/DatabaseErrorHandler;->onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 394
    :cond_1
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 395
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mInCorruptionHandling:Z

    .line 396
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mIsDatabaseCorrupted:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v1

    .line 378
    return-void

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 394
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 393
    :catchall_2
    move-exception v0

    .line 394
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 395
    const/4 v2, 0x0

    :try_start_4
    iput-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mInCorruptionHandling:Z

    .line 396
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mIsDatabaseCorrupted:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    monitor-exit v1

    .line 393
    throw v0

    .line 394
    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method onCorruption(I)V
    .locals 3
    .param p1, "error_code"    # I

    .prologue
    .line 2548
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2549
    :try_start_0
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mInCorruptionHandling:Z

    if-eqz v0, :cond_0

    .line 2550
    const-string/jumbo v0, "SQLiteDatabase"

    const-string/jumbo v2, "Database corruption is already handling."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 2551
    return-void

    .line 2553
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mInCorruptionHandling:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 2557
    :try_start_2
    iput p1, p0, Landroid/database/sqlite/SQLiteDatabase;->mCorrupt_code:I

    .line 2558
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mDefaultErrorHandler:Landroid/database/DatabaseErrorHandler;

    invoke-interface {v0, p0}, Landroid/database/DatabaseErrorHandler;->onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2559
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getLabel()Ljava/lang/String;

    move-result-object v0

    const v1, 0x124fc

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 2560
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    if-eqz v0, :cond_1

    .line 2561
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    invoke-interface {v0, p0}, Landroid/database/DatabaseErrorHandler;->onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2564
    :cond_1
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2565
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mInCorruptionHandling:Z

    .line 2566
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mIsDatabaseCorrupted:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v1

    .line 2547
    return-void

    .line 2548
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 2564
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 2563
    :catchall_2
    move-exception v0

    .line 2564
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2565
    const/4 v2, 0x0

    :try_start_4
    iput-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mInCorruptionHandling:Z

    .line 2566
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mIsDatabaseCorrupted:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    monitor-exit v1

    .line 2563
    throw v0

    .line 2564
    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 1593
    const/4 v1, 0x0

    .line 1594
    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 1593
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;
    .param p8, "limit"    # Ljava/lang/String;

    .prologue
    .line 1631
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p1, "distinct"    # Z
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "columns"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "groupBy"    # Ljava/lang/String;
    .param p7, "having"    # Ljava/lang/String;
    .param p8, "orderBy"    # Ljava/lang/String;
    .param p9, "limit"    # Ljava/lang/String;

    .prologue
    .line 1425
    const/4 v1, 0x0

    .line 1426
    const/4 v11, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 1425
    invoke-virtual/range {v0 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 12
    .param p1, "distinct"    # Z
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "columns"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "groupBy"    # Ljava/lang/String;
    .param p7, "having"    # Ljava/lang/String;
    .param p8, "orderBy"    # Ljava/lang/String;
    .param p9, "limit"    # Ljava/lang/String;
    .param p10, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 1466
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p1, "cursorFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "distinct"    # Z
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "columns"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "groupBy"    # Ljava/lang/String;
    .param p8, "having"    # Ljava/lang/String;
    .param p9, "orderBy"    # Ljava/lang/String;
    .param p10, "limit"    # Ljava/lang/String;

    .prologue
    .line 1507
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    .line 1506
    invoke-virtual/range {v0 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 8
    .param p1, "cursorFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "distinct"    # Z
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "columns"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "groupBy"    # Ljava/lang/String;
    .param p8, "having"    # Ljava/lang/String;
    .param p9, "orderBy"    # Ljava/lang/String;
    .param p10, "limit"    # Ljava/lang/String;
    .param p11, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 1549
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    move v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    .line 1551
    :try_start_0
    invoke-static/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1555
    .local v2, "sql":Ljava/lang/String;
    invoke-static {p3}, Landroid/database/sqlite/SQLiteDatabase;->findEditTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p6

    move-object/from16 v5, p11

    .line 1554
    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1557
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1554
    return-object v0

    .line 1556
    .end local v2    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v0

    .line 1557
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1556
    throw v0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v1

    move-object v5, v1

    .line 1646
    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 6
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v1

    move-object v5, p3

    .line 1664
    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "cursorFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "editTable"    # Ljava/lang/String;

    .prologue
    .line 1682
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 2
    .param p1, "cursorFactory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "editTable"    # Ljava/lang/String;
    .param p5, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 1703
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1705
    :try_start_0
    new-instance v0, Landroid/database/sqlite/SQLiteDirectCursorDriver;

    invoke-direct {v0, p0, p2, p4, p5}, Landroid/database/sqlite/SQLiteDirectCursorDriver;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)V

    .line 1707
    .local v0, "driver":Landroid/database/sqlite/SQLiteCursorDriver;
    if-eqz p1, :cond_0

    .end local p1    # "cursorFactory":Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    :goto_0
    invoke-interface {v0, p1, p3}, Landroid/database/sqlite/SQLiteCursorDriver;->query(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1710
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1707
    return-object v1

    .restart local p1    # "cursorFactory":Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    :cond_0
    :try_start_1
    iget-object p1, p0, Landroid/database/sqlite/SQLiteDatabase;->mCursorFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1709
    .end local v0    # "driver":Landroid/database/sqlite/SQLiteCursorDriver;
    .end local p1    # "cursorFactory":Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    :catchall_0
    move-exception v1

    .line 1710
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1709
    throw v1
.end method

.method public reopenReadWrite()V
    .locals 5

    .prologue
    .line 1074
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1075
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 1077
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnlyLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    .line 1078
    return-void

    .line 1082
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v1, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 1083
    .local v1, "oldOpenFlags":I
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    and-int/lit8 v4, v4, -0x2

    or-int/lit8 v4, v4, 0x0

    iput v4, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1086
    :try_start_2
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    .line 1073
    return-void

    .line 1087
    :catch_0
    move-exception v0

    .line 1088
    .local v0, "ex":Ljava/lang/RuntimeException;
    :try_start_3
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput v1, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 1089
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1074
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v1    # "oldOpenFlags":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 1779
    const/4 v1, 0x5

    .line 1778
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 1780
    :catch_0
    move-exception v0

    .line 1781
    .local v0, "e":Landroid/database/SQLException;
    const-string/jumbo v1, "SQLiteDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error inserting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1782
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "initialValues"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 1805
    const/4 v0, 0x5

    .line 1804
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public semIsDatabaseCorrupted()Z
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 418
    :try_start_0
    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mIsDatabaseCorrupted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 417
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setDatabaseIsCorrupted(Z)V
    .locals 2
    .param p1, "result"    # Z

    .prologue
    .line 403
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 404
    :try_start_0
    iput-boolean p1, p0, Landroid/database/sqlite/SQLiteDatabase;->mIsDatabaseCorrupted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 402
    return-void

    .line 403
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setForeignKeyConstraintsEnabled(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 2242
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2243
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 2245
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p1, :cond_0

    monitor-exit v2

    .line 2246
    return-void

    .line 2249
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput-boolean p1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2251
    :try_start_2
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    .line 2241
    return-void

    .line 2252
    :catch_0
    move-exception v0

    .line 2253
    .local v0, "ex":Ljava/lang/RuntimeException;
    :try_start_3
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    .line 2254
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2242
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 2253
    .restart local v0    # "ex":Ljava/lang/RuntimeException;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 5
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 2161
    if-nez p1, :cond_0

    .line 2162
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "locale must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2165
    :cond_0
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2166
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 2168
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    .line 2169
    .local v1, "oldLocale":Ljava/util/Locale;
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput-object p1, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2171
    :try_start_1
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 2160
    return-void

    .line 2172
    :catch_0
    move-exception v0

    .line 2173
    .local v0, "ex":Ljava/lang/RuntimeException;
    :try_start_2
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput-object v1, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    .line 2174
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2165
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v1    # "oldLocale":Ljava/util/Locale;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setLockingEnabled(Z)V
    .locals 0
    .param p1, "lockingEnabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 355
    return-void
.end method

.method public setMaxSqlCacheSize(I)V
    .locals 5
    .param p1, "cacheSize"    # I

    .prologue
    .line 2193
    const/16 v2, 0x64

    if-gt p1, v2, :cond_0

    if-gez p1, :cond_1

    .line 2194
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 2195
    const-string/jumbo v3, "expected value between 0 and 100"

    .line 2194
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2198
    :cond_1
    iget-object v3, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2199
    :try_start_0
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteDatabase;->throwIfNotOpenLocked()V

    .line 2201
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v1, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    .line 2202
    .local v1, "oldMaxSqlCacheSize":I
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput p1, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2204
    :try_start_1
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConnectionPoolLocked:Landroid/database/sqlite/SQLiteConnectionPool;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteConnectionPool;->reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 2192
    return-void

    .line 2205
    :catch_0
    move-exception v0

    .line 2206
    .local v0, "ex":Ljava/lang/RuntimeException;
    :try_start_2
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabase;->mConfigurationLocked:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iput v1, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    .line 2207
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2198
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v1    # "oldMaxSqlCacheSize":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setMaximumSize(J)J
    .locals 11
    .param p1, "numBytes"    # J

    .prologue
    .line 1285
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPageSize()J

    move-result-wide v4

    .line 1286
    .local v4, "pageSize":J
    div-long v2, p1, v4

    .line 1288
    .local v2, "numPages":J
    rem-long v6, p1, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 1289
    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    .line 1291
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PRAGMA max_page_count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1292
    const/4 v7, 0x0

    .line 1291
    invoke-static {p0, v6, v7}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 1293
    .local v0, "newPageCount":J
    mul-long v6, v0, v4

    return-wide v6
.end method

.method public setPageSize(J)V
    .locals 3
    .param p1, "numBytes"    # J

    .prologue
    .line 1313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PRAGMA page_size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1312
    return-void
.end method

.method public setSdpDatabase()V
    .locals 2

    .prologue
    .line 1140
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDatabase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1141
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mSdpHelper:Landroid/database/sqlite/SQLiteSdpHelper;

    if-nez v0, :cond_0

    .line 1142
    new-instance v0, Landroid/database/sqlite/SQLiteSdpHelper;

    invoke-direct {v0, p0}, Landroid/database/sqlite/SQLiteSdpHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mSdpHelper:Landroid/database/sqlite/SQLiteSdpHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 1145
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDatabase;->mSdpHelper:Landroid/database/sqlite/SQLiteSdpHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteSdpHelper;->registerListener()V

    .line 1139
    return-void

    .line 1140
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setTransactionSuccessful()V
    .locals 1

    .prologue
    .line 669
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 671
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteSession;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 668
    return-void

    .line 672
    :catchall_0
    move-exception v0

    .line 673
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 672
    throw v0
.end method

.method public setVersion(I)V
    .locals 2
    .param p1, "version"    # I

    .prologue
    .line 1264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PRAGMA user_version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1263
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SQLiteDatabase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "whereClause"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 1913
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 11
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "whereClause"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;
    .param p5, "conflictAlgorithm"    # I

    .prologue
    .line 1932
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 1933
    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "Empty values"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1936
    :cond_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->acquireReference()V

    .line 1938
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v9, 0x78

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1939
    .local v7, "sql":Ljava/lang/StringBuilder;
    const-string/jumbo v9, "UPDATE "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1940
    sget-object v9, Landroid/database/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    aget-object v9, v9, p5

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1941
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1942
    const-string/jumbo v9, " SET "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1945
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v6

    .line 1946
    .local v6, "setValuesSize":I
    if-nez p4, :cond_2

    move v1, v6

    .line 1947
    .local v1, "bindArgsSize":I
    :goto_0
    new-array v0, v1, [Ljava/lang/Object;

    .line 1948
    .local v0, "bindArgs":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 1949
    .local v4, "i":I
    invoke-virtual {p2}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "colName$iterator":Ljava/util/Iterator;
    move v5, v4

    .end local v4    # "i":I
    .local v5, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1950
    .local v2, "colName":Ljava/lang/String;
    if-lez v5, :cond_3

    const-string/jumbo v9, ","

    :goto_2
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1951
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1952
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v0, v5

    .line 1953
    const-string/jumbo v9, "=?"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_1

    .line 1946
    .end local v0    # "bindArgs":[Ljava/lang/Object;
    .end local v1    # "bindArgsSize":I
    .end local v2    # "colName":Ljava/lang/String;
    .end local v3    # "colName$iterator":Ljava/util/Iterator;
    .end local v5    # "i":I
    :cond_2
    array-length v9, p4

    add-int v1, v6, v9

    goto :goto_0

    .line 1950
    .restart local v0    # "bindArgs":[Ljava/lang/Object;
    .restart local v1    # "bindArgsSize":I
    .restart local v2    # "colName":Ljava/lang/String;
    .restart local v3    # "colName$iterator":Ljava/util/Iterator;
    .restart local v5    # "i":I
    :cond_3
    const-string/jumbo v9, ""

    goto :goto_2

    .line 1955
    .end local v2    # "colName":Ljava/lang/String;
    :cond_4
    if-eqz p4, :cond_5

    .line 1956
    move v4, v6

    .end local v5    # "i":I
    .restart local v4    # "i":I
    :goto_3
    if-ge v4, v1, :cond_6

    .line 1957
    sub-int v9, v4, v6

    aget-object v9, p4, v9

    aput-object v9, v0, v4

    .line 1956
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v4    # "i":I
    .restart local v5    # "i":I
    :cond_5
    move v4, v5

    .line 1960
    .end local v5    # "i":I
    .restart local v4    # "i":I
    :cond_6
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 1961
    const-string/jumbo v9, " WHERE "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1962
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1965
    :cond_7
    new-instance v8, Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9, v0}, Landroid/database/sqlite/SQLiteStatement;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1967
    .local v8, "statement":Landroid/database/sqlite/SQLiteStatement;
    :try_start_1
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    .line 1969
    :try_start_2
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1972
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1967
    return v9

    .line 1968
    :catchall_0
    move-exception v9

    .line 1969
    :try_start_3
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1968
    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1971
    .end local v0    # "bindArgs":[Ljava/lang/Object;
    .end local v1    # "bindArgsSize":I
    .end local v3    # "colName$iterator":Ljava/util/Iterator;
    .end local v4    # "i":I
    .end local v6    # "setValuesSize":I
    .end local v7    # "sql":Ljava/lang/StringBuilder;
    .end local v8    # "statement":Landroid/database/sqlite/SQLiteStatement;
    :catchall_1
    move-exception v9

    .line 1972
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->releaseReference()V

    .line 1971
    throw v9
.end method

.method public validateSql(Ljava/lang/String;Landroid/os/CancellationSignal;)V
    .locals 3
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 2087
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getThreadSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v0

    .line 2088
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->getThreadDefaultConnectionFlags(Z)I

    move-result v1

    const/4 v2, 0x0

    .line 2087
    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/database/sqlite/SQLiteSession;->prepare(Ljava/lang/String;ILandroid/os/CancellationSignal;Landroid/database/sqlite/SQLiteStatementInfo;)V

    .line 2086
    return-void
.end method

.method public yieldIfContended()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 737
    const-wide/16 v0, -0x1

    .line 736
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method

.method public yieldIfContendedSafely()Z
    .locals 3

    .prologue
    .line 749
    const-wide/16 v0, -0x1

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method

.method public yieldIfContendedSafely(J)Z
    .locals 1
    .param p1, "sleepAfterYieldDelay"    # J

    .prologue
    .line 764
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method
